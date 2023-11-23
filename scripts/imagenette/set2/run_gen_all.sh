#!/bin/bash

sbatch scripts/imagenette/set2/run_gen_image_vars0.sh
sbatch scripts/imagenette/set2/run_gen_image_vars1.sh
sbatch scripts/imagenette/set2/run_gen_image_vars2.sh
sbatch scripts/imagenette/set2/run_gen_image_vars3.sh
sbatch scripts/imagenette/set2/run_gen_image_vars4.sh
sbatch scripts/imagenette/set2/run_gen_image_vars5.sh
sbatch scripts/imagenette/set2/run_gen_image_vars6.sh
sbatch scripts/imagenette/set2/run_gen_image_vars7.sh
sbatch scripts/imagenette/set2/run_gen_image_vars8.sh
sbatch scripts/imagenette/set2/run_gen_image_vars9.sh
sbatch scripts/imagenette/set2/run_gen_image_vars10.sh
sbatch scripts/imagenette/set2/run_gen_image_vars11.sh
sbatch scripts/imagenette/set2/run_gen_image_vars12.sh
sbatch scripts/imagenette/set2/run_gen_image_vars13.sh
sbatch scripts/imagenette/set2/run_gen_image_vars14.sh
sbatch scripts/imagenette/set2/run_gen_image_vars15.sh


# sbatch --array=318,445,566 scripts/imagenette/set2/run_gen_image_vars0.sh
# sbatch --array=625 scripts/imagenette/set2/run_gen_image_vars1.sh
# sbatch --array=1185,1526 scripts/imagenette/set2/run_gen_image_vars2.sh
# sbatch --array=1862,1867,1950 scripts/imagenette/set2/run_gen_image_vars3.sh
# sbatch --array=2419,2592,2684 scripts/imagenette/set2/run_gen_image_vars4.sh
# sbatch --array=3130 scripts/imagenette/set2/run_gen_image_vars5.sh
# sbatch --array=3599 scripts/imagenette/set2/run_gen_image_vars6.sh
# sbatch --array=4152 scripts/imagenette/set2/run_gen_image_vars7.sh
# sbatch --array=5146 scripts/imagenette/set2/run_gen_image_vars8.sh
# sbatch --array=5384,5744 scripts/imagenette/set2/run_gen_image_vars9.sh
# sbatch --array=6410 scripts/imagenette/set2/run_gen_image_vars10.sh
# sbatch --array= scripts/imagenette/set2/run_gen_image_vars11.sh
# sbatch --array=7215,7453,7575 scripts/imagenette/set2/run_gen_image_vars12.sh
# sbatch --array=7928 scripts/imagenette/set2/run_gen_image_vars13.sh
# sbatch --array=8407 scripts/imagenette/set2/run_gen_image_vars14.sh
# sbatch --array= scripts/imagenette/set2/run_gen_image_vars15.sh