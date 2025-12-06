#!/bin/bash
#SBATCH --job-name=primseq_half
#SBATCH --output=primseq_%j.out
#SBATCH --error=primseq_%j.err
#SBATCH --time=12:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G
#SBATCH --partition=courses

# Load conda environment
module load miniconda3

#Initializing conda for bash
eval "$(conda shell.bash hook)"

# Activating conda environment

conda activate final_project

# Loading require modules

module load bwa
module load samtools

# Change to the bins directory where the Python helper scripts are
cd /home/bartley.k/final_project/PRIMseqTools/bins

# Make sure output directory exists
mkdir -p /scratch/bartley.k/primseq_output

# Run PRIMseqTools on quarter dataset
./PRIMseqTools \
  -a /scratch/${USER}/sra_download/test/SRR29432925_1_quarter.fastq \
  -b /scratch/${USER}/sra_download/test/SRR29432925_2_quarter.fastq \
  -i /home/${USER}/final_project/GRCh38_latest_rna.fna \
  -o /scratch/${USER}/primseq_output \
  -g /home/${USER}/final_project/refSeq_tx_gene_type_updated.csv

echo "PRIMseqTools analysis completed!"
