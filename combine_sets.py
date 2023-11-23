import os, re, pdb, sys
import numpy as np
import pandas as pd
import argparse as ap

import tensorflow as tf
import tensorflow_datasets as tfds

import data_saver

NUM_VARIATIONS = 5

def main(set_dirs, **kwargs):
    set_dict = {}
    for idx, cur_dir in enumerate(set_dirs):
        set_dict[idx] = []
        img_var_dirs = sorted([os.path.join(cur_dir, x) for x in os.listdir(cur_dir) if 'dir_' in x])
        for cur_img_var_dir in img_var_dirs:
            tfrecord_list = sorted([os.path.join(cur_img_var_dir, x) for x in os.listdir(cur_img_var_dir)])
            set_dict[idx].extend(tfrecord_list)

    print(f"num_samples: {len(set_dict[0])}", flush=True)
    for i in range(len(set_dict[0])):
        print(f"{i} / {len(set_dict[0])}", flush=True)
        combine_example = True
        for key in set_dict:
            combine_example &= os.path.basename(set_dict[0][i]) == os.path.basename(set_dict[key][i])
        if combine_example:
            cur_out_fname = re.sub("_id_variations0", "_id_variations", set_dict[0][i])
            os.makedirs(os.path.dirname(cur_out_fname), exist_ok=True)

            ds_list = []
            for key in set_dict:
                ds_list.append(tf.data.TFRecordDataset(set_dict[key][i]))

            cur_id = None
            cur_label = None
            inp_image_bytes = None
            out_images = []
            for ds_idx, ds in enumerate(ds_list):
                for element in ds.as_numpy_iterator():
                    example = tf.train.Example()
                    example.ParseFromString(element)
                    if ds_idx == 0:
                        cur_id = example.features.feature['id'].int64_list.value[0]
                        cur_label = example.features.feature['label'].int64_list.value[0]
                        inp_image_bytes = example.features.feature['image'].bytes_list.value[0]

                    for idx in range(NUM_VARIATIONS):
                        out_images.append(example.features.feature[f'variation_{idx}'].bytes_list.value[0])
            data_saver.save_combine_set(cur_id, cur_label, cur_out_fname, inp_image_bytes, *out_images)

    # pdb.set_trace()
    # with tf.io.TFRecordWriter(out_path) as writer:
    #     for idx, inp_filepath in enumerate(tfrecord_list):
    #         print(f"{idx} / {len(tfrecord_list)}, {inp_filepath}", flush=True)
    #         ds = tf.data.TFRecordDataset(inp_filepath)
    #         count = 0
    #         for element in ds.as_numpy_iterator():
    #             print(f"{idx}, {count}", flush=True)
    #             example = tf.train.Example()
    #             example.ParseFromString(element)
    #             writer.write(example.SerializeToString())
    #             count += 1
    print("Complete", flush=True)

if __name__ == '__main__':
    parser = ap.ArgumentParser()
    parser.add_argument('--set_dirs', '-sd', type=str, nargs='+', help='Path to a director of tensorflow records.')
    args = parser.parse_args()

    args, _ = parser.parse_known_args()
    kwargs = dict(args._get_kwargs())
    main(**kwargs)


# -sd "/home/jrick6/tensorflow_datasets/imagenette_id_variations0/full-size-v2/1.0.0" "/home/jrick6/tensorflow_datasets/imagenette_id_variations1/full-size-v2/1.0.0" "/home/jrick6/tensorflow_datasets/imagenette_id_variations2/full-size-v2/1.0.0" "/home/jrick6/tensorflow_datasets/imagenette_id_variations3/full-size-v2/1.0.0" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations4"
# -sd "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations0/1pct/5.0.0" "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations1/1pct/5.0.0"
