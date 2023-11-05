import os, pdb, sys
import numpy as np
import pandas as pd
import argparse as ap

import tensorflow as tf
import tensorflow_datasets as tfds

def main(tfrecord_dir, out_path, **kwargs):
    tfrecord_list = sorted([os.path.join(tfrecord_dir, x) for x in os.listdir(tfrecord_dir)])
    with tf.io.TFRecordWriter(out_path) as writer:
        for idx, inp_filepath in enumerate(tfrecord_list):
            print(f"{idx} / {len(tfrecord_list)}, {inp_filepath}", flush=True)
            ds = tf.data.TFRecordDataset(inp_filepath)
            count = 0
            for element in ds.as_numpy_iterator():
                print(f"{idx}, {count}", flush=True)
                example = tf.train.Example()
                example.ParseFromString(element)
                writer.write(example.SerializeToString())
                count += 1
    print("Complete", flush=True)

if __name__ == '__main__':
    parser = ap.ArgumentParser()
    parser.add_argument('--tfrecord_dir', '-tfd', type=str, help='Path to a director of tensorflow records.')
    parser.add_argument('--out_path', '-o', type=str, help='Output path.')
    args = parser.parse_args()

    args, _ = parser.parse_known_args()
    kwargs = dict(args._get_kwargs())
    main(**kwargs)

# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00000-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00000-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00001-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00001-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00002-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00002-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00003-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00003-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00004-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00004-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00005-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00005-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00006-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00006-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00007-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00007-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00008-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00008-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00009-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00009-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00010-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00010-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00011-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00011-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00012-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00012-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00013-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00013-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00014-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00014-of-00016"
# python combine_tf_records.py -tfd "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00015-of-00016" -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00015-of-00016"

