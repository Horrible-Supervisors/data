#!/bin/bash


# sbatch scripts/imagenette/set1/run_gen_image_vars0.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars1.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars2.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars3.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars4.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars5.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars6.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars7.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars8.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars9.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars10.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars11.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars12.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars13.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars14.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars15.sh

# sbatch scripts/imagenette/set1/run_gen_image_vars0.sh
sbatch --array=901 scripts/imagenette/set1/run_gen_image_vars1.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars2.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars3.sh
sbatch --array=2430,2937 scripts/imagenette/set1/run_gen_image_vars4.sh
sbatch --array=2994 scripts/imagenette/set1/run_gen_image_vars5.sh
sbatch --array=4029 scripts/imagenette/set1/run_gen_image_vars6.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars7.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars8.sh
sbatch --array=5500,5655 scripts/imagenette/set1/run_gen_image_vars9.sh
sbatch --array=6392 scripts/imagenette/set1/run_gen_image_vars10.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars11.sh
# sbatch scripts/imagenette/set1/run_gen_image_vars12.sh
sbatch --array=7731,7760 scripts/imagenette/set1/run_gen_image_vars13.sh
sbatch --array=8459 scripts/imagenette/set1/run_gen_image_vars14.sh
sbatch --array=9285 scripts/imagenette/set1/run_gen_image_vars15.sh










