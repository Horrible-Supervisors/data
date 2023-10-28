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
            example.features.feature['id'].CopyFrom(tf.train.Feature(int64_list=id))
            count += 1
            writer.write(example.SerializeToString())

    return count


def check_image(infile):
    ds = tf.data.TFRecordDataset(infile)
    temp = 0
    for element in ds.as_numpy_iterator():
        example = tf.train.Example()
        example.ParseFromString(element)
        print(example)
        id = example.features.feature['id'].int64_list.value[0]
        print(id)
        # image = example.features.feature['image'].bytes_list.value[0]
        # image = tf.image.decode_jpeg(image, channels=3)
        # # show image
        # image = Image.fromarray(np.asarray(image))
        # image.show()
        temp += 1
        if temp == 10:
            break


if __name__ == '__main__':
    ids = np.arange(1281167)
    TRAIN = 16
    VAL = 4
    train = np.arange(TRAIN)
    val = np.arange(VAL)
    count = 0
    check_image('../simclr/tf2/tensorflow_datasets/imagenette_id/full-size-v2/1.0.0/imagenette-train.tfrecord-000{:02d}-of-000{:02d}'.format(0, TRAIN))
    # for t in train:
    #     count = append_id_v2('imagenette/full-size-v2/1.0.0/imagenette-train.tfrecord-000{:02d}-of-000{:02d}'.format(t, TRAIN), ids, 'imagenette_id/full-size-v2/1.0.0/imagenette-train.tfrecord-000{:02d}-of-000{:02d}'.format(t, TRAIN), count)

    # for v in val:
    #     count = append_id_v2('imagenette/full-size-v2/1.0.0/imagenette-validation.tfrecord-000{:02d}-of-000{:02d}'.format(v, VAL), ids, 'imagenette_id/full-size-v2/1.0.0/imagenette-validation.tfrecord-000{:02d}-of-000{:02d}'.format(v, VAL), count)
