#!/bin/bash

#Training ResNet20 from scratch:
#report=0
#resume=

#Calculate and plot accuracy for pruning layers1, layers2 and layers3 of ResNet20:
#report=1
#resume=./save_temp/checkpoint.th

#Calculate and plot accuracy for pruning conv layers in ResNet20 in sequence:
#report=2
#resume=./save_temp/checkpoint.th


#Plot accuracy for pruning layers1, layers2 and layers3 of ResNet20:nce
#report=3
#resume=./save_temp/checkpoint.th

#Plot accuracy for pruning conv layers in ResNet20 in sequence:
resume=./save_temp/checkpoint.th
report=4

model=resnet20

echo "python -u trainer.py  --arch=$model  --resume=$resume --report=$report --save-dir=save_$model |& tee -a log_$model"
python -u trainer.py  --arch=$model --resume=$resume --report=$report  --save-dir=save_$model |& tee -a log_$model
