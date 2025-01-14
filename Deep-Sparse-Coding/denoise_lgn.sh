#!/bin/sh
python ../main.py \
    --model 'DenoiseLGNCNN' \
    --task 'CIFAR10' \
    --channels 128 \
    --kernels 3 \
    --pools 'ammm' \
    --strides 1  \
    --paddings 1  \
    --fc 10 \
    --lat-layers 0 \
    --lat-kernels 5 \
    --train-lateral \
    --lat-lrs 0.3 \
    --lat-wds 3e-4 \
    --lat-constraints '' \
    --optim 'sgd' \
    --mmt 0.9 \
    --lrs 0.25 0.1 \
    --lr-decay \
    --wds 3e-4 3e-4 3e-4 3e-4 3e-4 \
    --act 'my_hard_sig' \
    --todo 'train' \
    --betas 0.0 0.5 \
    --thirdphase \
    --T1 250 \
    --T2 25 \
    --mbs 128 \
    --loss 'mse' \
    --data-aug \
    --save  \
    --device 1 \
    --seed $1 \
    --epochs 120 \
    --tensorboard \
    --dt 1.0 \

