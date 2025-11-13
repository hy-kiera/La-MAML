#!/bin/bash

CIFAR='--data_path data/ --log_every 100 --dataset cifar100 --cuda --log_dir logs/arith/'
SEEDS=(0 1 2)
GPU=2

for SEED in ${SEEDS[*]}; do
    ########## CIFAR DATASET Single-Pass ##########
    CUDA_VISIBLE_DEVICES=$GPU uv run main.py $CIFAR --model lamaml_cifar --expt_name lamaml --memories 200 --batch_size 10 --replay_batch_size 10 --n_epochs 1 \
                        --opt_lr 0.25 --alpha_init 0.1 --opt_wt 0.1 --glances 10 --loader class_incremental_loader --increment 5 \
                        --arch "pc_cnn" --cifar_batches 5 --learn_lr --log_every 3125 --second_order --class_order random \
                        --seed $SEED --grad_clip_norm 1.0 --calc_test_accuracy --validation 0.1
done