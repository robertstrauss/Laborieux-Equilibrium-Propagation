#!/bin/sh

python ../main.py \
    --task CIFAR10 \
    --model CNN \
    --channels 128 256 512 \
    --paddings 1 1 1 \
    --strides 1 1 1 \
    --kernels 3 3 3 \
    --pools mmm \
    --fc 10 \
    --optim adam \
    --lrs 5e-5 4e-5 6e-5 3e-5 \
    --epochs 20 \
    --act mysig \
    --todo train \
    --betas 0.0 0.01 \
    --T1 150 \
    --T2 15 \
    --mbs 128 \
    --thirdphase \
    --loss mse \
    --save \
    --device 0 \
    --load-path results/EP/mse/2023-07-19/13-16-46_gpu0
