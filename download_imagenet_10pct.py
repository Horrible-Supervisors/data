from argparse import ArgumentParser
import tensorflow_datasets as tfds

parser = ArgumentParser()
parser.add_argument("--data_dir", type=str)
args = parser.parse_args()

builder = tfds.builder("imagenet2012_subset", data_dir=args.data_dir)
builder.download_and_prepare()
