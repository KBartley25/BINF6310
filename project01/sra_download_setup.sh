#!bin/bash

# Note: This script should be run on the Explorer HPC


# Moving to user's scratch directory on Explorer HPC
cd /scratch/${USER}

# Creating a directory to store sra runs
mkdir -p sra_download

# Moving into the newly made directory
cd sra_download

# Downloading SRA run we will be running PRIMSeqTools on

module load sratoolkit

fasterq-dump --split-files SRR29432925 -O /scratch/${USER}/sra_download

echo "Download completed!" 
