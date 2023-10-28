from argparse import ArgumentParser
import tensorflow as tf
import numpy as np
from PIL import Image


def append_id_v2(infile, ids, out_file, count=0):
    with tf.io.TFRecordWriter(out_file) as writer:
        ds = tf.data.TFRecordDataset(infile)
        for element in ds.as_numpy_iterator():
            example = tf.train.Example()
            example.ParseFromString(element)
            id = tf.train.Int64List(value=[ids[count]])
            example.features.feature['id'].CopyFrom(
                tf.train.Feature(int64_list=id))
            count += 1
            writer.write(example.SerializeToString())

    return count


def check_image(infile):
    ds = tf.data.TFRecordDataset(infile)
    temp = 0
    for element in ds.as_numpy_iterator():
        example = tf.train.Example()
        example.ParseFromString(element)
        image = example.features.feature['image'].bytes_list.value[0]
        image = tf.image.decode_jpeg(image, channels=3)
        # show image
        image = Image.fromarray(np.asarray(image))
        image.show()
        temp += 1
        if temp == 10:
            break


if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('--data_dir', type=str)
    parser.add_argument('--out_dir', type=str)
    parser.add_argument('--train', '-t', type=int,
                        description='number of train tfrecords')
    parser.add_argument('--val', '-v', type=int,
                        description='number of validation tfrecords')
    parser.add_argument('--size', '-s', type=int,
                        description='total number of images')
    parser.add_argument('--format_train', '-ft', type=str,
                        description='tfrecord format for train')
    parser.add_argument('--format_val', '-fv', type=str,
                        description='tfrecord format for validation')
    parser.add_argument('--create_dataset', '-cd', type=bool,
                        description='create dataset or not')
    args = parser.parse_args()

    if args.create_dataset:
        ids = np.arange(args.size)
        train = np.arange(args.train)
        val = np.arange(args.val)

        count = 0

        for t in train:
            count = append_id_v2(f'{args.data_dir}/{args.format_train}.tfrecord-{t:05d}-of-{args.train:05d}',
                                 ids, f'{args.out_dir}/{args.format_train}.tfrecord-{t:05d}-of-{args.train:05d}')

        for v in val:
            count = append_id_v2(f'{args.data_dir}/{args.format_val}.tfrecord-{t:05d}-of-{args.val:05d}',
                                 ids, f'{args.out_dir}/{args.format_val}.tfrecord-{t:05d}-of-{args.val:05d}')
    else:
        check_image(
            f'{args.data_dir}/{args.format_train}.tfrecord-{0:05d}-of-{args.train:05d}')
