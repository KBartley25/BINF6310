#!bin/bash


# Changing directory to home directory and making a folder named final_project

cd ~

mkdir -p  final_project

# Downloading RefSeq GRCh38 transcriptome

cd final_project

wget https://ftp.ncbi.nlm.nih.gov/refseq/H_sapiens/annotation/GRCh38_latest/refseq_identifiers/GRCh38_latest_rna.fna.gz

# Creating bwa index of transcriptome

bwa index GRCh38_latest_rna.fna

echo "bwa index complete!"
