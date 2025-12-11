#!bin/bash

# Cloning GitHub Repo

cd ~/final_project

git clone https://github.com/Zhong-Lab-UCSD/PRIMseqTools

# Adding to .bashrc

echo 'export PATH=$PATH:/home/${USER}/final_project/PRIMseqTools/bins' >> /.bashrc

# Reloading .bashrc

source ~/.bashrc 
