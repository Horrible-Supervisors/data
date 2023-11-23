#!/bin/bash

#SBATCH -G 1
#SBATCH --exclude=ice[100,102-105,107-109,110-134,137-150,152-161,165,167,186]
#SBATCH -t 3-72:00
#SBATCH --array 0-19999%50
#SBATCH --mem 32G
#SBATCH --chdir=/home/jrick6/repos/data
#SBATCH --job-name=gen_image_var
#SBATCH --output=/home/jrick6/repos/data/logs/imagenet_subset_custom/batch4/%x.%A.%a.out

export OFFSET=80000

if [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 779 ]]; then
    echo "shard 00000"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00000-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00000-of-00128/imagenet2012_subset-train.tfrecord-00000-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 1558 ]]; then
    echo "shard 00001"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00001-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00001-of-00128/imagenet2012_subset-train.tfrecord-00001-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 2338 ]]; then
    echo "shard 00002"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00002-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00002-of-00128/imagenet2012_subset-train.tfrecord-00002-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 3118 ]]; then
    echo "shard 00003"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00003-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00003-of-00128/imagenet2012_subset-train.tfrecord-00003-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 3898 ]]; then
    echo "shard 00004"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00004-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00004-of-00128/imagenet2012_subset-train.tfrecord-00004-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 4677 ]]; then
    echo "shard 00005"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00005-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00005-of-00128/imagenet2012_subset-train.tfrecord-00005-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 5457 ]]; then
    echo "shard 00006"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00006-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00006-of-00128/imagenet2012_subset-train.tfrecord-00006-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 6237 ]]; then
    echo "shard 00007"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00007-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00007-of-00128/imagenet2012_subset-train.tfrecord-00007-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 7016 ]]; then
    echo "shard 00008"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00008-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00008-of-00128/imagenet2012_subset-train.tfrecord-00008-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 7796 ]]; then
    echo "shard 00009"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00009-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00009-of-00128/imagenet2012_subset-train.tfrecord-00009-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 8576 ]]; then
    echo "shard 00010"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00010-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00010-of-00128/imagenet2012_subset-train.tfrecord-00010-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 9355 ]]; then
    echo "shard 00011"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00011-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00011-of-00128/imagenet2012_subset-train.tfrecord-00011-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 10135 ]]; then
    echo "shard 00012"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00012-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00012-of-00128/imagenet2012_subset-train.tfrecord-00012-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 10915 ]]; then
    echo "shard 00013"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00013-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00013-of-00128/imagenet2012_subset-train.tfrecord-00013-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 11695 ]]; then
    echo "shard 00014"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00014-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00014-of-00128/imagenet2012_subset-train.tfrecord-00014-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 12474 ]]; then
    echo "shard 00015"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00015-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00015-of-00128/imagenet2012_subset-train.tfrecord-00015-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 13254 ]]; then
    echo "shard 00016"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00016-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00016-of-00128/imagenet2012_subset-train.tfrecord-00016-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 14034 ]]; then
    echo "shard 00017"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00017-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00017-of-00128/imagenet2012_subset-train.tfrecord-00017-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 14813 ]]; then
    echo "shard 00018"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00018-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00018-of-00128/imagenet2012_subset-train.tfrecord-00018-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 15593 ]]; then
    echo "shard 00019"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00019-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00019-of-00128/imagenet2012_subset-train.tfrecord-00019-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 16373 ]]; then
    echo "shard 00020"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00020-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00020-of-00128/imagenet2012_subset-train.tfrecord-00020-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 17152 ]]; then
    echo "shard 00021"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00021-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00021-of-00128/imagenet2012_subset-train.tfrecord-00021-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 17932 ]]; then
    echo "shard 00022"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00022-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00022-of-00128/imagenet2012_subset-train.tfrecord-00022-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 18712 ]]; then
    echo "shard 00023"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00023-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00023-of-00128/imagenet2012_subset-train.tfrecord-00023-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 19492 ]]; then
    echo "shard 00024"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00024-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00024-of-00128/imagenet2012_subset-train.tfrecord-00024-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 20271 ]]; then
    echo "shard 00025"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00025-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00025-of-00128/imagenet2012_subset-train.tfrecord-00025-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 21051 ]]; then
    echo "shard 00026"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00026-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00026-of-00128/imagenet2012_subset-train.tfrecord-00026-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 21831 ]]; then
    echo "shard 00027"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00027-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00027-of-00128/imagenet2012_subset-train.tfrecord-00027-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 22610 ]]; then
    echo "shard 00028"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00028-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00028-of-00128/imagenet2012_subset-train.tfrecord-00028-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 23390 ]]; then
    echo "shard 00029"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00029-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00029-of-00128/imagenet2012_subset-train.tfrecord-00029-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 24170 ]]; then
    echo "shard 00030"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00030-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00030-of-00128/imagenet2012_subset-train.tfrecord-00030-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 24949 ]]; then
    echo "shard 00031"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00031-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00031-of-00128/imagenet2012_subset-train.tfrecord-00031-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 25729 ]]; then
    echo "shard 00032"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00032-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00032-of-00128/imagenet2012_subset-train.tfrecord-00032-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 26509 ]]; then
    echo "shard 00033"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00033-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00033-of-00128/imagenet2012_subset-train.tfrecord-00033-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 27289 ]]; then
    echo "shard 00034"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00034-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00034-of-00128/imagenet2012_subset-train.tfrecord-00034-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 28068 ]]; then
    echo "shard 00035"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00035-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00035-of-00128/imagenet2012_subset-train.tfrecord-00035-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 28848 ]]; then
    echo "shard 00036"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00036-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00036-of-00128/imagenet2012_subset-train.tfrecord-00036-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 29628 ]]; then
    echo "shard 00037"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00037-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00037-of-00128/imagenet2012_subset-train.tfrecord-00037-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 30407 ]]; then
    echo "shard 00038"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00038-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00038-of-00128/imagenet2012_subset-train.tfrecord-00038-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 31187 ]]; then
    echo "shard 00039"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00039-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00039-of-00128/imagenet2012_subset-train.tfrecord-00039-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 31967 ]]; then
    echo "shard 00040"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00040-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00040-of-00128/imagenet2012_subset-train.tfrecord-00040-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 32747 ]]; then
    echo "shard 00041"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00041-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00041-of-00128/imagenet2012_subset-train.tfrecord-00041-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 33526 ]]; then
    echo "shard 00042"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00042-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00042-of-00128/imagenet2012_subset-train.tfrecord-00042-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 34306 ]]; then
    echo "shard 00043"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00043-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00043-of-00128/imagenet2012_subset-train.tfrecord-00043-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 35086 ]]; then
    echo "shard 00044"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00044-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00044-of-00128/imagenet2012_subset-train.tfrecord-00044-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 35865 ]]; then
    echo "shard 00045"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00045-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00045-of-00128/imagenet2012_subset-train.tfrecord-00045-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 36645 ]]; then
    echo "shard 00046"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00046-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00046-of-00128/imagenet2012_subset-train.tfrecord-00046-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 37425 ]]; then
    echo "shard 00047"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00047-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00047-of-00128/imagenet2012_subset-train.tfrecord-00047-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 38204 ]]; then
    echo "shard 00048"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00048-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00048-of-00128/imagenet2012_subset-train.tfrecord-00048-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 38984 ]]; then
    echo "shard 00049"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00049-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00049-of-00128/imagenet2012_subset-train.tfrecord-00049-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 39764 ]]; then
    echo "shard 00050"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00050-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00050-of-00128/imagenet2012_subset-train.tfrecord-00050-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 40544 ]]; then
    echo "shard 00051"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00051-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00051-of-00128/imagenet2012_subset-train.tfrecord-00051-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 41323 ]]; then
    echo "shard 00052"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00052-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00052-of-00128/imagenet2012_subset-train.tfrecord-00052-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 42103 ]]; then
    echo "shard 00053"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00053-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00053-of-00128/imagenet2012_subset-train.tfrecord-00053-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 42883 ]]; then
    echo "shard 00054"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00054-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00054-of-00128/imagenet2012_subset-train.tfrecord-00054-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 43662 ]]; then
    echo "shard 00055"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00055-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00055-of-00128/imagenet2012_subset-train.tfrecord-00055-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 44442 ]]; then
    echo "shard 00056"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00056-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00056-of-00128/imagenet2012_subset-train.tfrecord-00056-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 45222 ]]; then
    echo "shard 00057"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00057-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00057-of-00128/imagenet2012_subset-train.tfrecord-00057-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 46001 ]]; then
    echo "shard 00058"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00058-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00058-of-00128/imagenet2012_subset-train.tfrecord-00058-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 46781 ]]; then
    echo "shard 00059"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00059-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00059-of-00128/imagenet2012_subset-train.tfrecord-00059-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 47561 ]]; then
    echo "shard 00060"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00060-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00060-of-00128/imagenet2012_subset-train.tfrecord-00060-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 48341 ]]; then
    echo "shard 00061"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00061-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00061-of-00128/imagenet2012_subset-train.tfrecord-00061-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 49120 ]]; then
    echo "shard 00062"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00062-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00062-of-00128/imagenet2012_subset-train.tfrecord-00062-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 49900 ]]; then
    echo "shard 00063"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00063-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00063-of-00128/imagenet2012_subset-train.tfrecord-00063-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 50680 ]]; then
    echo "shard 00064"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00064-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00064-of-00128/imagenet2012_subset-train.tfrecord-00064-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 51459 ]]; then
    echo "shard 00065"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00065-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00065-of-00128/imagenet2012_subset-train.tfrecord-00065-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 52239 ]]; then
    echo "shard 00066"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00066-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00066-of-00128/imagenet2012_subset-train.tfrecord-00066-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 53019 ]]; then
    echo "shard 00067"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00067-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00067-of-00128/imagenet2012_subset-train.tfrecord-00067-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 53799 ]]; then
    echo "shard 00068"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00068-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00068-of-00128/imagenet2012_subset-train.tfrecord-00068-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 54578 ]]; then
    echo "shard 00069"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00069-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00069-of-00128/imagenet2012_subset-train.tfrecord-00069-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 55358 ]]; then
    echo "shard 00070"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00070-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00070-of-00128/imagenet2012_subset-train.tfrecord-00070-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 56138 ]]; then
    echo "shard 00071"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00071-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00071-of-00128/imagenet2012_subset-train.tfrecord-00071-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 56917 ]]; then
    echo "shard 00072"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00072-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00072-of-00128/imagenet2012_subset-train.tfrecord-00072-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 57697 ]]; then
    echo "shard 00073"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00073-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00073-of-00128/imagenet2012_subset-train.tfrecord-00073-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 58477 ]]; then
    echo "shard 00074"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00074-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00074-of-00128/imagenet2012_subset-train.tfrecord-00074-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 59256 ]]; then
    echo "shard 00075"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00075-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00075-of-00128/imagenet2012_subset-train.tfrecord-00075-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 60036 ]]; then
    echo "shard 00076"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00076-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00076-of-00128/imagenet2012_subset-train.tfrecord-00076-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 60816 ]]; then
    echo "shard 00077"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00077-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00077-of-00128/imagenet2012_subset-train.tfrecord-00077-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 61596 ]]; then
    echo "shard 00078"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00078-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00078-of-00128/imagenet2012_subset-train.tfrecord-00078-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 62375 ]]; then
    echo "shard 00079"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00079-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00079-of-00128/imagenet2012_subset-train.tfrecord-00079-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 63155 ]]; then
    echo "shard 00080"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00080-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00080-of-00128/imagenet2012_subset-train.tfrecord-00080-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 63935 ]]; then
    echo "shard 00081"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00081-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00081-of-00128/imagenet2012_subset-train.tfrecord-00081-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 64714 ]]; then
    echo "shard 00082"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00082-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00082-of-00128/imagenet2012_subset-train.tfrecord-00082-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 65494 ]]; then
    echo "shard 00083"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00083-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00083-of-00128/imagenet2012_subset-train.tfrecord-00083-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 66274 ]]; then
    echo "shard 00084"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00084-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00084-of-00128/imagenet2012_subset-train.tfrecord-00084-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 67053 ]]; then
    echo "shard 00085"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00085-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00085-of-00128/imagenet2012_subset-train.tfrecord-00085-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 67833 ]]; then
    echo "shard 00086"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00086-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00086-of-00128/imagenet2012_subset-train.tfrecord-00086-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 68613 ]]; then
    echo "shard 00087"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00087-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00087-of-00128/imagenet2012_subset-train.tfrecord-00087-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 69393 ]]; then
    echo "shard 00088"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00088-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00088-of-00128/imagenet2012_subset-train.tfrecord-00088-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 70172 ]]; then
    echo "shard 00089"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00089-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00089-of-00128/imagenet2012_subset-train.tfrecord-00089-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 70952 ]]; then
    echo "shard 00090"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00090-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00090-of-00128/imagenet2012_subset-train.tfrecord-00090-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 71732 ]]; then
    echo "shard 00091"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00091-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00091-of-00128/imagenet2012_subset-train.tfrecord-00091-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 72511 ]]; then
    echo "shard 00092"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00092-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00092-of-00128/imagenet2012_subset-train.tfrecord-00092-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 73291 ]]; then
    echo "shard 00093"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00093-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00093-of-00128/imagenet2012_subset-train.tfrecord-00093-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 74071 ]]; then
    echo "shard 00094"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00094-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00094-of-00128/imagenet2012_subset-train.tfrecord-00094-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 74851 ]]; then
    echo "shard 00095"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00095-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00095-of-00128/imagenet2012_subset-train.tfrecord-00095-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 75630 ]]; then
    echo "shard 00096"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00096-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00096-of-00128/imagenet2012_subset-train.tfrecord-00096-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 76410 ]]; then
    echo "shard 00097"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00097-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00097-of-00128/imagenet2012_subset-train.tfrecord-00097-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 77190 ]]; then
    echo "shard 00098"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00098-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00098-of-00128/imagenet2012_subset-train.tfrecord-00098-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 77969 ]]; then
    echo "shard 00099"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00099-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00099-of-00128/imagenet2012_subset-train.tfrecord-00099-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 78749 ]]; then
    echo "shard 00100"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00100-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00100-of-00128/imagenet2012_subset-train.tfrecord-00100-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 79529 ]]; then
    echo "shard 00101"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00101-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00101-of-00128/imagenet2012_subset-train.tfrecord-00101-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 80308 ]]; then
    echo "shard 00102"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00102-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00102-of-00128/imagenet2012_subset-train.tfrecord-00102-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 81088 ]]; then
    echo "shard 00103"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00103-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00103-of-00128/imagenet2012_subset-train.tfrecord-00103-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 81868 ]]; then
    echo "shard 00104"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00104-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00104-of-00128/imagenet2012_subset-train.tfrecord-00104-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 82648 ]]; then
    echo "shard 00105"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00105-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00105-of-00128/imagenet2012_subset-train.tfrecord-00105-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 83427 ]]; then
    echo "shard 00106"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00106-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00106-of-00128/imagenet2012_subset-train.tfrecord-00106-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 84207 ]]; then
    echo "shard 00107"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00107-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00107-of-00128/imagenet2012_subset-train.tfrecord-00107-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 84987 ]]; then
    echo "shard 00108"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00108-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00108-of-00128/imagenet2012_subset-train.tfrecord-00108-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 85766 ]]; then
    echo "shard 00109"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00109-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00109-of-00128/imagenet2012_subset-train.tfrecord-00109-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 86546 ]]; then
    echo "shard 00110"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00110-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00110-of-00128/imagenet2012_subset-train.tfrecord-00110-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 87326 ]]; then
    echo "shard 00111"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00111-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00111-of-00128/imagenet2012_subset-train.tfrecord-00111-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 88105 ]]; then
    echo "shard 00112"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00112-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00112-of-00128/imagenet2012_subset-train.tfrecord-00112-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 88885 ]]; then
    echo "shard 00113"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00113-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00113-of-00128/imagenet2012_subset-train.tfrecord-00113-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 89665 ]]; then
    echo "shard 00114"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00114-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00114-of-00128/imagenet2012_subset-train.tfrecord-00114-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 90445 ]]; then
    echo "shard 00115"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00115-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00115-of-00128/imagenet2012_subset-train.tfrecord-00115-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 91224 ]]; then
    echo "shard 00116"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00116-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00116-of-00128/imagenet2012_subset-train.tfrecord-00116-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 92004 ]]; then
    echo "shard 00117"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00117-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00117-of-00128/imagenet2012_subset-train.tfrecord-00117-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 92784 ]]; then
    echo "shard 00118"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00118-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00118-of-00128/imagenet2012_subset-train.tfrecord-00118-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 93563 ]]; then
    echo "shard 00119"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00119-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00119-of-00128/imagenet2012_subset-train.tfrecord-00119-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 94343 ]]; then
    echo "shard 00120"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00120-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00120-of-00128/imagenet2012_subset-train.tfrecord-00120-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 95123 ]]; then
    echo "shard 00121"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00121-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00121-of-00128/imagenet2012_subset-train.tfrecord-00121-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 95902 ]]; then
    echo "shard 00122"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00122-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00122-of-00128/imagenet2012_subset-train.tfrecord-00122-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 96682 ]]; then
    echo "shard 00123"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00123-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00123-of-00128/imagenet2012_subset-train.tfrecord-00123-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 97462 ]]; then
    echo "shard 00124"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00124-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00124-of-00128/imagenet2012_subset-train.tfrecord-00124-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 98242 ]]; then
    echo "shard 00125"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00125-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00125-of-00128/imagenet2012_subset-train.tfrecord-00125-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 99021 ]]; then
    echo "shard 00126"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00126-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00126-of-00128/imagenet2012_subset-train.tfrecord-00126-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 99801 ]]; then
    echo "shard 00127"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/custom_100c_1000/5.0.0/imagenet2012_subset-train.tfrecord-00127-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/custom_100c_1000/5.0.0/dir_imagenet2012_subset-train.tfrecord-00127-of-00128/imagenet2012_subset-train.tfrecord-00127-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
fi