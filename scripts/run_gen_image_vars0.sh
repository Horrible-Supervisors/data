#!/bin/bash

#SBATCH -G 1
#SBATCH --exclude=ice[100,102-105,107-109,110-134,137-150,152-161,165,167,186]
#SBATCH -t 0-05:00
#SBATCH --mem 32G
#SBATCH --chdir=/home/jrick6/repos/data
#SBATCH --job-name=gen_image_var
#SBATCH --output=/home/jrick6/repos/data/logs/%x.%A.%a.out

hostname

nvidia-smi

/home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
    -tfp "/home/jrick6/tensorflow_datasets/imagenette_id/full-size-v2/1.0.0/imagenette_id-train.tfrecord-00000-of-00016" \
    -o "/home/jrick6/tensorflow_datasets/imagenette_id_variations/full-size-v2/1.0.0/dir_imagenette_id-train.tfrecord-00000-of-00016/imagenette_id-train.tfrecord-00000-of-00016" \
    --input_id ${SLURM_ARRAY_TASK_ID}