import numpy as np
import tensorflow as tf


shard_lengths = np.array([
    592, 592, 591, 592, 592, 592, 592, 591,
    592, 592, 592, 592, 592, 591, 592, 592
])

cumsum = np.cumsum(shard_lengths)


def get_shard_num(id, cumsum):
    return np.argmax(cumsum > id)


def get_filename(shard, out_dir, format_train, num_shards):
    return f'{out_dir}/{format_train}.tfrecord-{shard:05d}-of-{num_shards:05d}'


def save_variation(id, label, out_dir, format_train, num_shards, *images):
    shard = get_shard_num(id, cumsum)
    filename = get_filename(shard, out_dir, format_train, num_shards)
    print(f'Writing to {filename}')
    with tf.io.TFRecordWriter(filename) as writer:
        for image in images:
            feature_dict = {
                'image': tf.train.Feature(
                    bytes_list=tf.train.BytesList(
                        value=[image.numpy()])),
                'label': tf.train.Feature(
                    int64_list=tf.train.Int64List(
                        value=[label.numpy()])),
                'id': tf.train.Feature(
                    int64_list=tf.train.Int64List(
                        value=[id.numpy()]))
            }
            example = tf.train.Example(features=tf.train.Features(feature=feature_dict))
            writer.write(example.SerializeToString())

def _compute_crop_shape(
    image_height, image_width, aspect_ratio, crop_proportion):
    """Compute aspect ratio-preserving shape for central crop.

    The resulting shape retains `crop_proportion` along one side and a proportion
    less than or equal to `crop_proportion` along the other side.

    Args:
    image_height: Height of image to be cropped.
    image_width: Width of image to be cropped.
    aspect_ratio: Desired aspect ratio (width / height) of output.
    crop_proportion: Proportion of image to retain along the less-cropped side.

    Returns:
    crop_height: Height of image after cropping.
    crop_width: Width of image after cropping.
    """
    image_width_float = tf.cast(image_width, tf.float32)
    image_height_float = tf.cast(image_height, tf.float32)

    def _requested_aspect_ratio_wider_than_image():
        crop_height = tf.cast(
            tf.math.rint(crop_proportion / aspect_ratio * image_width_float),
            tf.int32)
        crop_width = tf.cast(
            tf.math.rint(crop_proportion * image_width_float), tf.int32)
        return crop_height, crop_width

    def _image_wider_than_requested_aspect_ratio():
        crop_height = tf.cast(
            tf.math.rint(crop_proportion * image_height_float), tf.int32)
        crop_width = tf.cast(
            tf.math.rint(crop_proportion * aspect_ratio * image_height_float),
            tf.int32)
        return crop_height, crop_width

    return tf.cond(
        aspect_ratio > image_width_float / image_height_float,
        _requested_aspect_ratio_wider_than_image,
        _image_wider_than_requested_aspect_ratio)

def center_crop(image, height, width, crop_proportion):
    """Crops to center of image and rescales to desired size.

    Args:
    image: Image Tensor to crop.
    height: Height of image to be cropped.
    width: Width of image to be cropped.
    crop_proportion: Proportion of image to retain along the less-cropped side.

    Returns:
    A `height` x `width` x channels Tensor holding a central crop of `image`.
    """
    shape = tf.shape(image)
    image_height = shape[0]
    image_width = shape[1]
    crop_height, crop_width = _compute_crop_shape(
        image_height, image_width, width / height, crop_proportion)
    offset_height = ((image_height - crop_height) + 1) // 2
    offset_width = ((image_width - crop_width) + 1) // 2
    image = tf.image.crop_to_bounding_box(
        image, offset_height, offset_width, crop_height, crop_width)

    image = tf.image.resize([image], [height, width],
                            method=tf.image.ResizeMethod.BICUBIC)[0]

    return image

def save_variation2(id, label, filename, *images):
    print(f'Writing to {filename}')
    with tf.io.TFRecordWriter(filename) as writer:
        for image in images:
            feature_dict = {
                'image': tf.train.Feature(
                    bytes_list=tf.train.BytesList(
                        value=[image.numpy()])),
                'label': tf.train.Feature(
                    int64_list=tf.train.Int64List(
                        value=[label])),
                'id': tf.train.Feature(
                    int64_list=tf.train.Int64List(
                        value=[id]))
            }
            example = tf.train.Example(features=tf.train.Features(feature=feature_dict))
            writer.write(example.SerializeToString())
