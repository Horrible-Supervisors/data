import os, pdb, sys
import numpy as np
import pandas as pd
import argparse as ap

import tensorflow as tf
import tensorflow_datasets as tfds

def main(tfrecord_dir, **kwargs):
    tfrecord_list = sorted([os.path.join(tfrecord_dir, x) for x in os.listdir(tfrecord_dir) if 'train' in x])
    count_list = []
    for tfrecord_filepath in tfrecord_list:
        print(tfrecord_filepath, flush=True)
        count = 0
        ds = tf.data.TFRecordDataset(tfrecord_filepath)
        for _ in ds.as_numpy_iterator():
            count += 1
        count_list.append(count)
    print(f"Complete {count_list}", flush=True)

if __name__ == '__main__':
    parser = ap.ArgumentParser()
    parser.add_argument('--tfrecord_dir', '-tfd', type=str, help='Path to a director of tensorflow records.')
    args = parser.parse_args()

    args, _ = parser.parse_known_args()
    kwargs = dict(args._get_kwargs())
    main(**kwargs)