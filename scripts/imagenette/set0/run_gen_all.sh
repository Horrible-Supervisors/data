#!/bin/bash

# sbatch scripts/imagenette/set0/run_gen_image_vars0.sh
sbatch --array=990 scripts/imagenette/set0/run_gen_image_vars1.sh
sbatch --array=1199,1452 scripts/imagenette/set0/run_gen_image_vars2.sh
sbatch --array=2157 scripts/imagenette/set0/run_gen_image_vars3.sh
sbatch --array=2473 scripts/imagenette/set0/run_gen_image_vars4.sh
sbatch --array=3444 scripts/imagenette/set0/run_gen_image_vars5.sh
sbatch --array=3963 scripts/imagenette/set0/run_gen_image_vars6.sh
sbatch --array=4374 scripts/imagenette/set0/run_gen_image_vars7.sh
sbatch --array=5311 scripts/imagenette/set0/run_gen_image_vars8.sh
sbatch --array=5623 scripts/imagenette/set0/run_gen_image_vars9.sh
sbatch --array=6213,6357,6358 scripts/imagenette/set0/run_gen_image_vars10.sh
sbatch --array=7024 scripts/imagenette/set0/run_gen_image_vars11.sh
sbatch --array=7308,7539,7610 scripts/imagenette/set0/run_gen_image_vars12.sh
sbatch --array=7758,8118 scripts/imagenette/set0/run_gen_image_vars13.sh
sbatch --array=8326,8331 scripts/imagenette/set0/run_gen_image_vars14.sh
# sbatch scripts/imagenette/set0/run_gen_image_vars15.sh