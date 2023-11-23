#!/bin/bash

sbatch scripts/imagenette/set4/run_gen_image_vars0.sh
sbatch scripts/imagenette/set4/run_gen_image_vars1.sh
sbatch scripts/imagenette/set4/run_gen_image_vars2.sh
sbatch scripts/imagenette/set4/run_gen_image_vars3.sh
sbatch scripts/imagenette/set4/run_gen_image_vars4.sh
sbatch scripts/imagenette/set4/run_gen_image_vars5.sh
sbatch scripts/imagenette/set4/run_gen_image_vars6.sh
sbatch scripts/imagenette/set4/run_gen_image_vars7.sh
sbatch scripts/imagenette/set4/run_gen_image_vars8.sh
sbatch scripts/imagenette/set4/run_gen_image_vars9.sh
sbatch scripts/imagenette/set4/run_gen_image_vars10.sh
sbatch scripts/imagenette/set4/run_gen_image_vars11.sh
sbatch scripts/imagenette/set4/run_gen_image_vars12.sh
sbatch scripts/imagenette/set4/run_gen_image_vars13.sh
sbatch scripts/imagenette/set4/run_gen_image_vars14.sh
sbatch scripts/imagenette/set4/run_gen_image_vars15.sh

# sbatch --array=282 scripts/imagenette/set4/run_gen_image_vars0.sh
# sbatch --array=1018,1152,702,723 scripts/imagenette/set4/run_gen_image_vars1.sh
# sbatch --array=1426,1772 scripts/imagenette/set4/run_gen_image_vars2.sh
# sbatch --array= scripts/imagenette/set4/run_gen_image_vars3.sh
# sbatch --array=2932 scripts/imagenette/set4/run_gen_image_vars4.sh
# sbatch --array=2975,3027,3143 scripts/imagenette/set4/run_gen_image_vars5.sh
# sbatch --array=3810,3948 scripts/imagenette/set4/run_gen_image_vars6.sh
# sbatch --array= scripts/imagenette/set4/run_gen_image_vars7.sh
# sbatch --array=4858,5158 scripts/imagenette/set4/run_gen_image_vars8.sh
# sbatch --array=5691 scripts/imagenette/set4/run_gen_image_vars9.sh
# sbatch --array=6468 scripts/imagenette/set4/run_gen_image_vars10.sh
# sbatch --array= scripts/imagenette/set4/run_gen_image_vars11.sh
# sbatch --array=7503 scripts/imagenette/set4/run_gen_image_vars12.sh
# sbatch --array=8255 scripts/imagenette/set4/run_gen_image_vars13.sh
# sbatch --array=8449,8733 scripts/imagenette/set4/run_gen_image_vars14.sh
# sbatch --array=8912,9135 scripts/imagenette/set4/run_gen_image_vars15.sh