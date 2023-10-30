import os, pdb, sys
import numpy as np
import pandas as pd
import argparse as ap

from PIL import Image
from diffusers import StableDiffusionImageVariationPipeline
from torchvision import transforms

import torch

import tensorflow as tf
import tensorflow_datasets as tfds

tf2_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.append(tf2_dir)
# import data_utils

# data_utils.preprocess_image(image, height, width, is_training=False, color_jitter_strength=0., test_crop=True)
DEVICE = "cuda"
NUM_IMAGES = 5

gpus = tf.config.list_physical_devices('GPU')
if gpus:
  try:
    # Currently, memory growth needs to be the same across GPUs
    for gpu in gpus:
      tf.config.experimental.set_memory_growth(gpu, True)
    logical_gpus = tf.config.list_logical_devices('GPU')
    print(len(gpus), "Physical GPUs,", len(logical_gpus), "Logical GPUs")
  except RuntimeError as e:
    # Memory growth must be set before GPUs have been initialized
    print(e)

tform = transforms.Compose([
    transforms.ToTensor(),
    transforms.Resize(
        (224, 224),
        interpolation=transforms.InterpolationMode.BICUBIC,
        antialias=False,
        ),
    transforms.Normalize(
    [0.48145466, 0.4578275, 0.40821073],
    [0.26862954, 0.26130258, 0.27577711]),
])

sd_pipe = StableDiffusionImageVariationPipeline.from_pretrained(
    "lambdalabs/sd-image-variations-diffusers",
    revision="v2.0"
)
sd_pipe = sd_pipe.to(DEVICE)
sd_pipe.safety_checker = lambda images, **kwargs: (images, [False] * len(images))

shard_lengths = np.array([
    592, 592, 591, 592, 592, 592, 592, 591,
    592, 592, 592, 592, 592, 591, 592, 592
])

def generate_image_variation(img, **kwargs):
    guidance_scale = kwargs.get('guidance_scale', 3.0)
    num_inference_steps = kwargs.get('num_inference_steps', 50)
    inp = tform(img).to(DEVICE).unsqueeze(0)
    out = sd_pipe(inp, guidance_scale=guidance_scale, num_inference_steps=num_inference_steps, num_images_per_prompt=NUM_IMAGES)
    return out["images"]

def add_variation_sequence(inp_filepath, out_filepath, **kwargs):
    input_id = kwargs.get('input_id', -1)
    guidance_scale = kwargs.get('guidance_scale', 3.0)
    num_inference_steps = kwargs.get('num_inference_steps', 50)

    count = 0
    size = 0
    ds = tf.data.TFRecordDataset(inp_filepath)
    for _ in ds.as_numpy_iterator():
       size += 1
    print(f"Size: {size}", flush=True)

    if input_id > -1:
       out_filepath = out_filepath + f"_{input_id:06d}"

    with tf.io.TFRecordWriter(out_filepath) as writer:
        inp_image_list = []
        for element in ds.as_numpy_iterator():
            # print(f"{count} / {size}", flush=True)
            example = tf.train.Example()
            example.ParseFromString(element)

            cur_id = example.features.feature['id'].int64_list.value[0]

            if cur_id < input_id and input_id > -1:
               continue

            if cur_id > input_id and input_id > -1:
               break

            inp_image_bytes = example.features.feature['image'].bytes_list.value[0]
            inp_image = tform(Image.fromarray(np.asarray(tf.image.decode_jpeg(inp_image_bytes, channels=3)))).unsqueeze(0)
            inp_image_list.append(inp_image)
            # if len(inp_image_list) % 25 == 0:
            inp_image_tensor = torch.cat(inp_image_list)
            inp = inp_image_tensor.to(DEVICE)
            out = sd_pipe(inp, guidance_scale=guidance_scale, num_inference_steps=num_inference_steps, num_images_per_prompt=NUM_IMAGES)

            # out_image_list = generate_image_variation(inp_image)
            out_image_list = out['images']
            for idx, image_variation in enumerate(out_image_list):
                image_variation_bytes = tf.train.BytesList(value=[np.array(image_variation).tobytes()])
                example.features.feature[f'image_variation_{idx}'].CopyFrom(tf.train.Feature(bytes_list=image_variation_bytes))
            writer.write(example.SerializeToString())
            # pdb.set_trace()
            # count += 1

def main(tfrecord_filepath, out_path, input_id, **kwargs):
    add_variation_sequence(tfrecord_filepath, out_path, input_id=input_id)
    print("Complete", flush=True)

if __name__ == '__main__':
    parser = ap.ArgumentParser()
    parser.add_argument('--tfrecord_filepath', '-tfp', type=str, help='Path to a tensorflow record.')
    parser.add_argument('--out_path', '-o', type=str, help='Output path.')
    parser.add_argument('--input_id', '-id', type=int, required=False, default=-1, help='Input Id.')
    args = parser.parse_args()

    args, _ = parser.parse_known_args()
    kwargs = dict(args._get_kwargs())
    main(**kwargs)
    # /home/jrick6/tensorflow_datasets/imagenette_id/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00000-of-00016