#!/bin/bash

sbatch --array=228 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars0.sh
sbatch --array=844,944,965 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars1.sh
sbatch --array=1799 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars2.sh
# sbatch --array= scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars3.sh
sbatch --array=3290,3711 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars4.sh
sbatch --array=4118,4667 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars5.sh
sbatch --array=5087 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars6.sh
sbatch --array=5992,6050,6247 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars7.sh
sbatch --array=6498,6516,6519,6656,7019 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars8.sh
sbatch --array=7373,7510,7513,7746 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars9.sh
sbatch --array=8105,8267,8466,8475 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars10.sh
sbatch --array=8896,9216 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars11.sh
sbatch --array=10047,10161,10300,10390 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars12.sh
sbatch --array=10758,10860,10904 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars13.sh
sbatch --array=11321,11563,11794 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars14.sh
sbatch --array=12058,12145,12147,12387,12393,12398,12434,12491 scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars15.sh

# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars0.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars1.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars2.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars3.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars4.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars5.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars6.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars7.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars8.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars9.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars10.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars11.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars12.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars13.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars14.sh
# sbatch scripts/imagenet2012_subset_1pct/set1/run_gen_image_vars15.sh