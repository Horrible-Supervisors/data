#!/bin/bash

# sbatch scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars0.sh
# sbatch scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars1.sh
sbatch --array=1909,2008 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars2.sh
sbatch --array=2707 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars3.sh
sbatch --array=3431 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars4.sh
sbatch --array=4590 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars5.sh
sbatch --array=5001,5027,5574 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars6.sh
sbatch --array=5860,5969,6038,6121,6291 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars7.sh
sbatch --array=6463,6948 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars8.sh
# sbatch scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars9.sh
sbatch --array=8364,8385 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars10.sh
sbatch --array=9039,9494 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars11.sh
sbatch --array=10345 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars12.sh
sbatch --array=10999,11176 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars13.sh
sbatch --array=11855 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars14.sh
sbatch --array=12403,12464,12638 scripts/imagenet2012_subset_1pct/set0/run_gen_image_vars15.sh