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
echo "conda=/root/anaconda3/etc/profile.d/conda.sh" >> /root/.bashrc
echo ". /root/anaconda3/etc/profile.d/conda.sh" >> ~/.bashrc
cd ~/
echo "bash pipeline/stacks.sh"
exec bash

