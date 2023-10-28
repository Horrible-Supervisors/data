import tensorflow_datasets as tfds


builder = tfds.builder("imagenet2012_subset")
builder.download_and_prepare()
