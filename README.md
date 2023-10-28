# data
This repository contains scripts to manipulate data.

Use this command to create the dataset with ids:
```
python data_manipulator.py -cd -s 14000 -t 16 -v 4 --data-dir imagenette/full-size-v2/1.0.0 --out-dir imagenette-id/full-size-v2/1.0.0 -ft imagenette-train -fv imagenette-validation
```

Use this command to check the images in new dataset:
```
python data_manipulator.py -ft imagenette-train -fv imagenette-validation --data-dir imagenette-id/full-size-v2/1.0.0 -t 16
```