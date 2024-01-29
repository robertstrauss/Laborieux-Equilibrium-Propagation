#!/bin/sh
python ../main.py \
    --model 'DenoiseLCALGNCNN' \
    --task 'CIFAR10' \
    --channels 128 256 \
    --kernels 5 3 \
    --pools 'iamm' \
    --strides 1 1 \
    --paddings 2 1 \
    --sparse-layers 0  \
    --lambdas 0.2 \
    --fc 10 \
    --inhibitstrength 1.0 \
    --competitiontype 'feature_inner_products' \
    --comp-syn-constraints 'fixedlambda,zerodiag,transposesymmetric' \
    --optim 'sgd' \
    --mmt 0.9 \
    --lrs 2.5e-3 1.0e-3 8.0e-4 \
    --lr-decay \
    --wds 3e-4 3e-4 3e-4 3e-4 3e-4 \
    --act 'my_hard_sig' \
    --todo 'train' \
    --betas 0.0 0.5 -0.5 \
    --T1 100 \
    --T2 30 \
    --mbs 128 \
    --loss 'mse' \
    --data-aug \
    --save  \
    --device $2 \
    --seed $1 \
    --epochs 120 \
    --tensorboard \
    --dt 0.02 \