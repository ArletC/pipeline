#/bin/bash

#Install and configure Stacks_2.3d
conda create --override-channels --channel iuc --channel conda-forge --channel bioconda --channel defaults --name stacks_2.3d stacks=2.3d
#source activate stacks_2.3d
conda activate stacks_2.3d
conda install stacks
conda install -c r r 
conda install -c r r-ggplot2
conda activate stacks_2.3d
ln -s /root/anaconda3/envs/stacks_2.3.d/lib/libreadline.so.7.0 /root/anaconda3/envs/stacks_2.3.d/lib/libreadline.so.6
cd /root/Bafstu
bash Start_IBEDs_STACK_pipeline.sh
