#!/bin/bash

sbatch scripts/imagenette/set3/run_gen_image_vars0.sh
sbatch scripts/imagenette/set3/run_gen_image_vars1.sh
sbatch scripts/imagenette/set3/run_gen_image_vars2.sh
sbatch scripts/imagenette/set3/run_gen_image_vars3.sh
sbatch scripts/imagenette/set3/run_gen_image_vars4.sh
sbatch scripts/imagenette/set3/run_gen_image_vars5.sh
sbatch scripts/imagenette/set3/run_gen_image_vars6.sh
sbatch scripts/imagenette/set3/run_gen_image_vars7.sh
sbatch scripts/imagenette/set3/run_gen_image_vars8.sh
sbatch scripts/imagenette/set3/run_gen_image_vars9.sh
sbatch scripts/imagenette/set3/run_gen_image_vars10.sh
sbatch scripts/imagenette/set3/run_gen_image_vars11.sh
sbatch scripts/imagenette/set3/run_gen_image_vars12.sh
sbatch scripts/imagenette/set3/run_gen_image_vars13.sh
sbatch scripts/imagenette/set3/run_gen_image_vars14.sh
sbatch scripts/imagenette/set3/run_gen_image_vars15.sh

# sbatch --array=523 scripts/imagenette/set3/run_gen_image_vars0.sh
# sbatch --array=996 scripts/imagenette/set3/run_gen_image_vars1.sh
# sbatch --array=1267 scripts/imagenette/set3/run_gen_image_vars2.sh
# sbatch --array=2200 scripts/imagenette/set3/run_gen_image_vars3.sh
# sbatch --array=2850,2867,2951 scripts/imagenette/set3/run_gen_image_vars4.sh
# sbatch --array=3213,3413,3545 scripts/imagenette/set3/run_gen_image_vars5.sh
# sbatch --array=3581,3929 scripts/imagenette/set3/run_gen_image_vars6.sh
# sbatch --array=4270,4427,4445 scripts/imagenette/set3/run_gen_image_vars7.sh
# sbatch --array=5241,5320 scripts/imagenette/set3/run_gen_image_vars8.sh
# sbatch --array= scripts/imagenette/set3/run_gen_image_vars9.sh
# sbatch --array=5969,6323 scripts/imagenette/set3/run_gen_image_vars10.sh
# sbatch --array=6850,6895,6978 scripts/imagenette/set3/run_gen_image_vars11.sh
# sbatch --array= scripts/imagenette/set3/run_gen_image_vars12.sh
# sbatch --array= scripts/imagenette/set3/run_gen_image_vars13.sh
# sbatch --array=8585,8700 scripts/imagenette/set3/run_gen_image_vars14.sh
# sbatch --array=9123,9397 scripts/imagenette/set3/run_gen_image_vars15.sh