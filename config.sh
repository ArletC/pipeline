#!/bin/bash

#Installing required packages
apt-get update
apt-get install -y iputils-ping wget nano locate vim git tree r-base-core python3-tk

#Download Installation Files
cd ~/
git clone https://github.com/Mtusti05/Bafstu.git
wget https://repo.anaconda.com/archive/Anaconda3-5.3.1-Linux-x86_64.sh

#Install Anaconda
bash Anaconda3-5.3.1-Linux-x86_64.sh
echo ". /root/anaconda3/etc/profile.d/conda.sh" >> ~/.bashrc
exec bash

#Install and configure Stacks_2.3d
conda create --override-channels --channel iuc --channel conda-forge --channel bioconda --channel defaults --name stacks_2.3d stacks=2.3d
#source activate stacks_2.3d
conda activate stacks_2.3d
conda install stacks
conda install -c r r 
conda install -c r r-ggplot2
conda activate stacks_2.3d
ln -s /root/anaconda3/envs/stacks_2.3.d/lib/libreadline.so.7.0 /root/anaconda3/envs/stacks_2.3.d/lib/libreadline.so.6
bash /root/Bafstu/Start_IBEDs_STACK_pipeline.sh
