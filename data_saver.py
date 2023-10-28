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
            example = tf.train.Example(features=tf.train.Features(feature={
                'image': tf.train.Feature(
                    bytes_list=tf.train.BytesList(
                        value=[image.numpy().tobytes()])),
                'label': tf.train.Feature(
                    int64_list=tf.train.Int64List(
                        value=[label.numpy()])),
                'id': tf.train.Feature(
                    int64_list=tf.train.Int64List(
                        value=[id.numpy()]))
            }))
            writer.write(example.SerializeToString())
