# Introducion: 
The purpose of this project is to replicate the PRIMseqTools pipeline of "Genome-Wide Mapping of RNA-Protein Associations via Sequencing." To complete this task, we downloaded one of the PRIM-seq SRA runs as paired reads, trimmed it to 1/4th of its original size and ran the PrimSeqTools module on it. 

# Pseudocode
1: Via mkdir, create a final_project directory in user's home directory of Explorer HPC

2: Clone the PRIMseqTools GitHub repostitory to the final_project directory

3: Create a conda enironment in the Explorer HPC with the following:
  
  Python ver: 3.12.12
  
  Python libraries:
      - sys
      - collections
      - cigar
      - glob
      - scipy
      - rpy2
      - datetime
      
  Modules:
      - Cutadapt (2.5 or later)
      - fastp (0.22.0 or later
      - bwa (0.7.17-r1188 or later)
      - samtools (1.6 or later)
      - bedtools (2.30.0 or later)

  4: Download via wget RefSeq GRCh38 transcriptome via NCBI to final_project directory
  
  5: Generate bwa index of RefSeq GRCh38 transciptome
  
  6  Via mkdir, create sra_download subdirectory in user's scratch directory in the Exporer HPC
  
  7: cd to sra_download subdirectory located in scratch driectory

  8: load sratoolkid module
 
  8: Download chosen PRIM-Seq SRA run via fasterq-dump with the --split-files flag to sra_downloads directory.
  
  9: Trim each read down to 1/4th of it's size via head command. Save the files to a test subdirectory within the scratch directory
  
  10: Create a slurm script to that runs PRIMseqTools
  
  11: Submit the slurm script to Explorer HPC as a job

# Successes

- We were able to run the PRIMSeqTools modul on one of the PRIMseq SRA runs, granted we needed to trim it to be 1/4th of its original size. 

- PRIMSeqTools was not only able to run, but also generated chimeric read pairs

- We learned how to create conda environments in order to work more easily inside the Explorer HPC

- We learned how to generate our own bwa index from fastq/fasta file.

# Struggles
 Our group ran into the following issues:

  - The link to the bwa index provided by the author's GitHub was broken, so we needed to figure out how to generate the bwa index ourselves

 - We had trouble downloading our chosen PRIM-seq SRA run. We kept on getting an out of memory error. This was eventually attrubuted to us trying to download the file to our home directory and not our scratch directory.

 - We had trouble running PRIM-seq tools on the full SRA run. It would always time out on the HPC even when we generated a slurm script to submit as a job. We solved this issue by cutting dataset to 1/4th it's original size. This was the only way we could get PRIMseqTools to run sub 12 hours.

# Personal Reflection

## Group Leader: Kelly Bartley

" learned a lot during this project, especially about how to troubleshoot errors that arose on the HPC. I can now confidently navigate around the HPC and troubleshoot issues that may arise. It also gave me experience creating virtual environments for a project and working within that virtual environment. Another thing I learned from this project was how to navigate around using the terminal. I was previously unfamiliar with how to use the terminal. Having to use the terminal to navigate around the HPC was a valuable experience for getting more comfortable with it."  

## Other Members

Julia Luo

"I learned a lot from this project - I gained a lot more experience using Linux and navigating directories, and learned how to use the Northeastern HPC. Figuring out the entire pipeline, starting with downloading the data, then gathering all the components needed to run PRIMseq tools, along with debugging issues along the way, gave me great hands-on experience. I believe I will have to continue using HPCs in my line of work, so I definitely feel more prepared now!"

Paris Johnson

"This project taught me a lot of new skills and also that bioinformatics relies heavily on troubleshooting abilities. The most rewarding part of this project was when the pipeline finally worked successfully and I saw all of the chimeric reads appeared. This experience of reproducing a publication has given me more confidence in my ability to tackle complex pipelines, and I am excited to do so in the future as my career progresses in Bioinformatics."

Aleena Iraqui

"This project pushed me beyond my comfort zone in the best way possible. Wrestling with software dependencies, navigating HPC systems, and debugging errors taught me that bioinformatics is equal parts science and troubleshooting. Seeing our pipeline reproduce published results felt incredibly validating. I've gained confidence tackling complex computational analyses and genuine appreciation for reproducible research."



# Generative AI Appendix

AI Used: Claude Sonnet 4.5 

Prompts: 

  -  "I have a SLURM script that is timing out/not running as intended on the Explorer HPC. Please help me troubleshoot this and provide explanations of what you are changing"

   -  "My dataset is taking too long to run, would it be viable to trim the dataset down and how would I go about doing this?"

Explaination for Use: 

- The SLURM script we wrote would not run properly and we could not figure out what was wrong. Claude was used to help us troubleshoot why the script wasn't working.

- The dataset was taking more than 24 hours to run. Normally, this should have been able to run fine on the Explorer HPC but, for some reason, we couldn't run scripts that took more than 12 hours to finish. Claude was used to help us generate ideas about how we could solve this issue.

Justification:

- We were completely blocked on these issues for days and needed to progress the project further. The documentation we read was helpful but did not help us fix the issues. Claude was used so that we could unblock ourselves.ork on the HPC and know how to address issues as they arise. 


