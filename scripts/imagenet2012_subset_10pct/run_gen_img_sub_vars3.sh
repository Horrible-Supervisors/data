#!/bin/bash

#SBATCH -G 1
#SBATCH --exclude=ice[100,102-105,107-109,110-134,137-150,152-161,165,167,186,192]
#SBATCH -t 3-72:00
#SBATCH --array 0-19999%30
#SBATCH --mem 32G
#SBATCH --chdir=/home/jrick6/repos/data
#SBATCH --job-name=gen_image_var
#SBATCH --output=/home/jrick6/repos/data/logs/imagenet_subset/batch3/%x.%A.%a.out

export OFFSET=60000

if [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 1000 ]]; then
    echo "shard 00000"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00000-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00000-of-00128/imagenet2012_subset-train.tfrecord-00000-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 2001 ]]; then
    echo "shard 00001"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00001-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00001-of-00128/imagenet2012_subset-train.tfrecord-00001-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 3002 ]]; then
    echo "shard 00002"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00002-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00002-of-00128/imagenet2012_subset-train.tfrecord-00002-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 4003 ]]; then
    echo "shard 00003"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00003-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00003-of-00128/imagenet2012_subset-train.tfrecord-00003-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 5004 ]]; then
    echo "shard 00004"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00004-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00004-of-00128/imagenet2012_subset-train.tfrecord-00004-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 6004 ]]; then
    echo "shard 00005"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00005-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00005-of-00128/imagenet2012_subset-train.tfrecord-00005-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 7005 ]]; then
    echo "shard 00006"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00006-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00006-of-00128/imagenet2012_subset-train.tfrecord-00006-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 8006 ]]; then
    echo "shard 00007"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00007-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00007-of-00128/imagenet2012_subset-train.tfrecord-00007-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 9007 ]]; then
    echo "shard 00008"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00008-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00008-of-00128/imagenet2012_subset-train.tfrecord-00008-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 10008 ]]; then
    echo "shard 00009"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00009-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00009-of-00128/imagenet2012_subset-train.tfrecord-00009-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 11009 ]]; then
    echo "shard 00010"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00010-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00010-of-00128/imagenet2012_subset-train.tfrecord-00010-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 12010 ]]; then
    echo "shard 00011"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00011-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00011-of-00128/imagenet2012_subset-train.tfrecord-00011-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 13011 ]]; then
    echo "shard 00012"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00012-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00012-of-00128/imagenet2012_subset-train.tfrecord-00012-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 14012 ]]; then
    echo "shard 00013"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00013-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00013-of-00128/imagenet2012_subset-train.tfrecord-00013-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 15013 ]]; then
    echo "shard 00014"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00014-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00014-of-00128/imagenet2012_subset-train.tfrecord-00014-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 16013 ]]; then
    echo "shard 00015"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00015-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00015-of-00128/imagenet2012_subset-train.tfrecord-00015-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 17014 ]]; then
    echo "shard 00016"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00016-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00016-of-00128/imagenet2012_subset-train.tfrecord-00016-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 18015 ]]; then
    echo "shard 00017"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00017-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00017-of-00128/imagenet2012_subset-train.tfrecord-00017-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 19016 ]]; then
    echo "shard 00018"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00018-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00018-of-00128/imagenet2012_subset-train.tfrecord-00018-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 20017 ]]; then
    echo "shard 00019"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00019-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00019-of-00128/imagenet2012_subset-train.tfrecord-00019-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 21018 ]]; then
    echo "shard 00020"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00020-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00020-of-00128/imagenet2012_subset-train.tfrecord-00020-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 22019 ]]; then
    echo "shard 00021"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00021-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00021-of-00128/imagenet2012_subset-train.tfrecord-00021-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 23020 ]]; then
    echo "shard 00022"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00022-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00022-of-00128/imagenet2012_subset-train.tfrecord-00022-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 24021 ]]; then
    echo "shard 00023"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00023-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00023-of-00128/imagenet2012_subset-train.tfrecord-00023-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 25022 ]]; then
    echo "shard 00024"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00024-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00024-of-00128/imagenet2012_subset-train.tfrecord-00024-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 26023 ]]; then
    echo "shard 00025"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00025-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00025-of-00128/imagenet2012_subset-train.tfrecord-00025-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 27023 ]]; then
    echo "shard 00026"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00026-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00026-of-00128/imagenet2012_subset-train.tfrecord-00026-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 28024 ]]; then
    echo "shard 00027"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00027-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00027-of-00128/imagenet2012_subset-train.tfrecord-00027-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 29025 ]]; then
    echo "shard 00028"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00028-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00028-of-00128/imagenet2012_subset-train.tfrecord-00028-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 30026 ]]; then
    echo "shard 00029"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00029-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00029-of-00128/imagenet2012_subset-train.tfrecord-00029-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 31027 ]]; then
    echo "shard 00030"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00030-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00030-of-00128/imagenet2012_subset-train.tfrecord-00030-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 32028 ]]; then
    echo "shard 00031"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00031-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00031-of-00128/imagenet2012_subset-train.tfrecord-00031-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 33029 ]]; then
    echo "shard 00032"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00032-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00032-of-00128/imagenet2012_subset-train.tfrecord-00032-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 34030 ]]; then
    echo "shard 00033"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00033-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00033-of-00128/imagenet2012_subset-train.tfrecord-00033-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 35031 ]]; then
    echo "shard 00034"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00034-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00034-of-00128/imagenet2012_subset-train.tfrecord-00034-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 36032 ]]; then
    echo "shard 00035"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00035-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00035-of-00128/imagenet2012_subset-train.tfrecord-00035-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 37033 ]]; then
    echo "shard 00036"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00036-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00036-of-00128/imagenet2012_subset-train.tfrecord-00036-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 38033 ]]; then
    echo "shard 00037"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00037-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00037-of-00128/imagenet2012_subset-train.tfrecord-00037-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 39034 ]]; then
    echo "shard 00038"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00038-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00038-of-00128/imagenet2012_subset-train.tfrecord-00038-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 40035 ]]; then
    echo "shard 00039"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00039-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00039-of-00128/imagenet2012_subset-train.tfrecord-00039-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 41036 ]]; then
    echo "shard 00040"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00040-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00040-of-00128/imagenet2012_subset-train.tfrecord-00040-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 42037 ]]; then
    echo "shard 00041"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00041-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00041-of-00128/imagenet2012_subset-train.tfrecord-00041-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 43038 ]]; then
    echo "shard 00042"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00042-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00042-of-00128/imagenet2012_subset-train.tfrecord-00042-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 44039 ]]; then
    echo "shard 00043"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00043-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00043-of-00128/imagenet2012_subset-train.tfrecord-00043-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 45040 ]]; then
    echo "shard 00044"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00044-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00044-of-00128/imagenet2012_subset-train.tfrecord-00044-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 46041 ]]; then
    echo "shard 00045"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00045-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00045-of-00128/imagenet2012_subset-train.tfrecord-00045-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 47042 ]]; then
    echo "shard 00046"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00046-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00046-of-00128/imagenet2012_subset-train.tfrecord-00046-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 48043 ]]; then
    echo "shard 00047"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00047-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00047-of-00128/imagenet2012_subset-train.tfrecord-00047-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 49043 ]]; then
    echo "shard 00048"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00048-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00048-of-00128/imagenet2012_subset-train.tfrecord-00048-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 50044 ]]; then
    echo "shard 00049"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00049-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00049-of-00128/imagenet2012_subset-train.tfrecord-00049-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 51045 ]]; then
    echo "shard 00050"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00050-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00050-of-00128/imagenet2012_subset-train.tfrecord-00050-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 52046 ]]; then
    echo "shard 00051"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00051-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00051-of-00128/imagenet2012_subset-train.tfrecord-00051-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 53047 ]]; then
    echo "shard 00052"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00052-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00052-of-00128/imagenet2012_subset-train.tfrecord-00052-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 54048 ]]; then
    echo "shard 00053"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00053-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00053-of-00128/imagenet2012_subset-train.tfrecord-00053-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 55049 ]]; then
    echo "shard 00054"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00054-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00054-of-00128/imagenet2012_subset-train.tfrecord-00054-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 56050 ]]; then
    echo "shard 00055"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00055-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00055-of-00128/imagenet2012_subset-train.tfrecord-00055-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 57051 ]]; then
    echo "shard 00056"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00056-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00056-of-00128/imagenet2012_subset-train.tfrecord-00056-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 58052 ]]; then
    echo "shard 00057"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00057-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00057-of-00128/imagenet2012_subset-train.tfrecord-00057-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 59052 ]]; then
    echo "shard 00058"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00058-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00058-of-00128/imagenet2012_subset-train.tfrecord-00058-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 60053 ]]; then
    echo "shard 00059"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00059-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00059-of-00128/imagenet2012_subset-train.tfrecord-00059-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 61054 ]]; then
    echo "shard 00060"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00060-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00060-of-00128/imagenet2012_subset-train.tfrecord-00060-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 62055 ]]; then
    echo "shard 00061"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00061-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00061-of-00128/imagenet2012_subset-train.tfrecord-00061-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 63056 ]]; then
    echo "shard 00062"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00062-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00062-of-00128/imagenet2012_subset-train.tfrecord-00062-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 64057 ]]; then
    echo "shard 00063"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00063-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00063-of-00128/imagenet2012_subset-train.tfrecord-00063-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 65058 ]]; then
    echo "shard 00064"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00064-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00064-of-00128/imagenet2012_subset-train.tfrecord-00064-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 66059 ]]; then
    echo "shard 00065"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00065-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00065-of-00128/imagenet2012_subset-train.tfrecord-00065-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 67060 ]]; then
    echo "shard 00066"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00066-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00066-of-00128/imagenet2012_subset-train.tfrecord-00066-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 68061 ]]; then
    echo "shard 00067"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00067-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00067-of-00128/imagenet2012_subset-train.tfrecord-00067-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 69062 ]]; then
    echo "shard 00068"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00068-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00068-of-00128/imagenet2012_subset-train.tfrecord-00068-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 70062 ]]; then
    echo "shard 00069"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00069-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00069-of-00128/imagenet2012_subset-train.tfrecord-00069-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 71063 ]]; then
    echo "shard 00070"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00070-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00070-of-00128/imagenet2012_subset-train.tfrecord-00070-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 72064 ]]; then
    echo "shard 00071"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00071-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00071-of-00128/imagenet2012_subset-train.tfrecord-00071-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 73065 ]]; then
    echo "shard 00072"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00072-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00072-of-00128/imagenet2012_subset-train.tfrecord-00072-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 74066 ]]; then
    echo "shard 00073"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00073-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00073-of-00128/imagenet2012_subset-train.tfrecord-00073-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 75067 ]]; then
    echo "shard 00074"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00074-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00074-of-00128/imagenet2012_subset-train.tfrecord-00074-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 76068 ]]; then
    echo "shard 00075"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00075-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00075-of-00128/imagenet2012_subset-train.tfrecord-00075-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 77069 ]]; then
    echo "shard 00076"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00076-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00076-of-00128/imagenet2012_subset-train.tfrecord-00076-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 78070 ]]; then
    echo "shard 00077"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00077-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00077-of-00128/imagenet2012_subset-train.tfrecord-00077-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 79071 ]]; then
    echo "shard 00078"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00078-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00078-of-00128/imagenet2012_subset-train.tfrecord-00078-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 80071 ]]; then
    echo "shard 00079"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00079-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00079-of-00128/imagenet2012_subset-train.tfrecord-00079-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 81072 ]]; then
    echo "shard 00080"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00080-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00080-of-00128/imagenet2012_subset-train.tfrecord-00080-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 82073 ]]; then
    echo "shard 00081"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00081-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00081-of-00128/imagenet2012_subset-train.tfrecord-00081-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 83074 ]]; then
    echo "shard 00082"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00082-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00082-of-00128/imagenet2012_subset-train.tfrecord-00082-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 84075 ]]; then
    echo "shard 00083"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00083-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00083-of-00128/imagenet2012_subset-train.tfrecord-00083-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 85076 ]]; then
    echo "shard 00084"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00084-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00084-of-00128/imagenet2012_subset-train.tfrecord-00084-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 86077 ]]; then
    echo "shard 00085"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00085-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00085-of-00128/imagenet2012_subset-train.tfrecord-00085-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 87078 ]]; then
    echo "shard 00086"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00086-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00086-of-00128/imagenet2012_subset-train.tfrecord-00086-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 88079 ]]; then
    echo "shard 00087"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00087-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00087-of-00128/imagenet2012_subset-train.tfrecord-00087-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 89080 ]]; then
    echo "shard 00088"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00088-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00088-of-00128/imagenet2012_subset-train.tfrecord-00088-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 90081 ]]; then
    echo "shard 00089"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00089-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00089-of-00128/imagenet2012_subset-train.tfrecord-00089-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 91081 ]]; then
    echo "shard 00090"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00090-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00090-of-00128/imagenet2012_subset-train.tfrecord-00090-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 92082 ]]; then
    echo "shard 00091"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00091-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00091-of-00128/imagenet2012_subset-train.tfrecord-00091-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 93083 ]]; then
    echo "shard 00092"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00092-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00092-of-00128/imagenet2012_subset-train.tfrecord-00092-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 94084 ]]; then
    echo "shard 00093"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00093-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00093-of-00128/imagenet2012_subset-train.tfrecord-00093-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 95085 ]]; then
    echo "shard 00094"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00094-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00094-of-00128/imagenet2012_subset-train.tfrecord-00094-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 96086 ]]; then
    echo "shard 00095"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00095-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00095-of-00128/imagenet2012_subset-train.tfrecord-00095-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 97087 ]]; then
    echo "shard 00096"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00096-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00096-of-00128/imagenet2012_subset-train.tfrecord-00096-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 98088 ]]; then
    echo "shard 00097"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00097-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00097-of-00128/imagenet2012_subset-train.tfrecord-00097-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 99089 ]]; then
    echo "shard 00098"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00098-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00098-of-00128/imagenet2012_subset-train.tfrecord-00098-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 100090 ]]; then
    echo "shard 00099"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00099-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00099-of-00128/imagenet2012_subset-train.tfrecord-00099-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 101091 ]]; then
    echo "shard 00100"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00100-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00100-of-00128/imagenet2012_subset-train.tfrecord-00100-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 102091 ]]; then
    echo "shard 00101"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00101-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00101-of-00128/imagenet2012_subset-train.tfrecord-00101-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 103092 ]]; then
    echo "shard 00102"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00102-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00102-of-00128/imagenet2012_subset-train.tfrecord-00102-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 104093 ]]; then
    echo "shard 00103"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00103-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00103-of-00128/imagenet2012_subset-train.tfrecord-00103-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 105094 ]]; then
    echo "shard 00104"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00104-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00104-of-00128/imagenet2012_subset-train.tfrecord-00104-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 106095 ]]; then
    echo "shard 00105"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00105-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00105-of-00128/imagenet2012_subset-train.tfrecord-00105-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 107096 ]]; then
    echo "shard 00106"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00106-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00106-of-00128/imagenet2012_subset-train.tfrecord-00106-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 108097 ]]; then
    echo "shard 00107"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00107-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00107-of-00128/imagenet2012_subset-train.tfrecord-00107-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 109098 ]]; then
    echo "shard 00108"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00108-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00108-of-00128/imagenet2012_subset-train.tfrecord-00108-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 110099 ]]; then
    echo "shard 00109"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00109-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00109-of-00128/imagenet2012_subset-train.tfrecord-00109-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 111100 ]]; then
    echo "shard 00110"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00110-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00110-of-00128/imagenet2012_subset-train.tfrecord-00110-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 112101 ]]; then
    echo "shard 00111"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00111-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00111-of-00128/imagenet2012_subset-train.tfrecord-00111-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 113101 ]]; then
    echo "shard 00112"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00112-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00112-of-00128/imagenet2012_subset-train.tfrecord-00112-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 114102 ]]; then
    echo "shard 00113"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00113-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00113-of-00128/imagenet2012_subset-train.tfrecord-00113-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 115103 ]]; then
    echo "shard 00114"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00114-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00114-of-00128/imagenet2012_subset-train.tfrecord-00114-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 116104 ]]; then
    echo "shard 00115"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00115-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00115-of-00128/imagenet2012_subset-train.tfrecord-00115-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 117105 ]]; then
    echo "shard 00116"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00116-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00116-of-00128/imagenet2012_subset-train.tfrecord-00116-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 118106 ]]; then
    echo "shard 00117"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00117-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00117-of-00128/imagenet2012_subset-train.tfrecord-00117-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 119107 ]]; then
    echo "shard 00118"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00118-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00118-of-00128/imagenet2012_subset-train.tfrecord-00118-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 120108 ]]; then
    echo "shard 00119"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00119-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00119-of-00128/imagenet2012_subset-train.tfrecord-00119-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 121109 ]]; then
    echo "shard 00120"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00120-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00120-of-00128/imagenet2012_subset-train.tfrecord-00120-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 122110 ]]; then
    echo "shard 00121"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00121-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00121-of-00128/imagenet2012_subset-train.tfrecord-00121-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 123110 ]]; then
    echo "shard 00122"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00122-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00122-of-00128/imagenet2012_subset-train.tfrecord-00122-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 124111 ]]; then
    echo "shard 00123"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00123-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00123-of-00128/imagenet2012_subset-train.tfrecord-00123-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 125112 ]]; then
    echo "shard 00124"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00124-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00124-of-00128/imagenet2012_subset-train.tfrecord-00124-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 126113 ]]; then
    echo "shard 00125"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00125-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00125-of-00128/imagenet2012_subset-train.tfrecord-00125-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 127114 ]]; then
    echo "shard 00126"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00126-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00126-of-00128/imagenet2012_subset-train.tfrecord-00126-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
elif [[ $((${SLURM_ARRAY_TASK_ID}+${OFFSET})) -le 128115 ]]; then
    echo "shard 00127"
    /home/jrick6/.conda/envs/simclr/bin/python generate_image_variations.py \
        -tfp "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id/10pct/5.0.0/imagenet2012_subset-train.tfrecord-00127-of-00128" \
        -o "/home/jrick6/tensorflow_datasets/imagenet2012_subset_id_variations/10pct/5.0.0/dir_imagenet2012_subset-train.tfrecord-00127-of-00128/imagenet2012_subset-train.tfrecord-00127-of-00128" \
        --input_id $((${SLURM_ARRAY_TASK_ID}+${OFFSET}))
fi