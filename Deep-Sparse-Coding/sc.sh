#!/bin/sh
python ../main.py \
    --model 'DenoiseLCALGNCNN' \
    --task 'CIFAR10' \
    --channels 256 \
    --kernels 8 \
    --pools 'iamm' \
    --strides 1 1 \
    --paddings 4 1 \
    --sparse-layers 0 1 \
    --lambdas 0.00 100.0 \
    --fc 10 \
    --inhibitstrength 1.0 \
    --competitiontype 'feature_inner_products' \
    --comp-syn-constraints 'fixedlambda,colunitnorm,zerodiag,transposesymmetric' \
    --optim 'sgd' \
    --mmt 0.9 \
    --lrs 2.5e-3 0.0 \
    --lr-decay \
    --wds 3e-4 3e-4 3e-4 3e-4 3e-4 \
    --act 'relu' \
    --todo 'train' \
    --betas 0.0 0.5 \
    --T1 800 \
    --T2 $3 \
    --mbs 128 \
    --loss 'mse' \
    --data-aug \
    --save  \
    --device $2 \
    --seed $1 \
    --epochs 120 \
    --tensorboard \
    --dt 0.01 \
