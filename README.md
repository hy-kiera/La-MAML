# La-MAML + Arith

## Available Datasets

CIFAR100 is automatically downloaded when you run a script for CIFAR experiments.

For TinyImageNet, first give the correct permissions to the download script:

```chmod +x download_tinyimgnet.sh```

Then, run the following commands to download and process the data for use by Pytorch Dataloader:

```./download_tinyimgnet.sh```

## Basic Setup

This project provides `.devcontainer` and uses `uv` to manage requirements. Please build your developting environment by Docker container and do `uv sync`.


## Getting Started

```
bash run_lamaml_cifar.sh
bash run_lamaml_tinyimagenet.sh
```