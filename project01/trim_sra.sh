#!bin/bash

# These commands will trim the original sra paired reads  down to 1/4th of their orignal size
cd /scratch/${USER}

mkdir -p test

head -n 77000000 /scratch/${USER}/sra_download/SRR29432925_1.fastq > scratch/${USER}/sra_download/test/SRR29432925_1_quarter.fastq

head -n 77000000 /scratch/${USER}/sra_download/SRR29432925_2.fastq > scratch/${USER}/sra_download/test/SRR29432925_2_quarter.fastq

echo "Trimming complete!" 
