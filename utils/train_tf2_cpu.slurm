#!/bin/bash
#SBATCH -J crack_train_cpu
#SBATCH -o crack_train_cpu.out
#SBATCH -e crack_train_cpu.err

#SBATCH -p cpu
#SBATCH -w alphacpu01
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --cpus-per-task=16
#SBATCH --time=24:00:00

source ~/.bashrc
conda activate base
cd /mnt/home/zou10/projects/CraquelureDetection/src

python train_cnn.py