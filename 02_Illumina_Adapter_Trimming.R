# =========================================================================
# MODULE 2: Illumina Adapter Trimming
# AUTHOR: Kuncha Shashidhar
# 
# 🧬 ABOUT THE DATA:
# Description: When the sequencing read length exceeds the DNA insert size, 
#              the sequencer reads into the synthetic sequencing adapter. 
# 
# 🔍 REAL WORLD APPLICATION:
# Trimming these artificial adapter sequences from the 3' ends is mandatory 
# to prevent alignment algorithms from mapping reads to the wrong genomic 
# location or failing to map them entirely.
# =========================================================================

library(ShortRead)
library(Biostrings)

cat("\n--- Adapter Trimming Pipeline ---\n")

# Define the standard Illumina adapter sequences
# Note: Update these based on the specific chemistry used in the experiment
illumina_adapter_fwd <- DNAString("AGATCGGAAGAGCACACGTCTGAACTCCAGTCA")
illumina_adapter_rev <- DNAString("AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT")

# Load raw reads
# reads <- readFastq("path/to/SRR_1.fastq")

# 1. Trim reads based on a strict quality threshold (e.g., removing bases < Q20)
# trimmed_reads <- trimTailw(reads, k=2, a=\"B\", halfwidth=1)

# 2. Identify and remove the adapter sequences
# dict <- PDict(illumina_adapter_fwd, max.mismatch=2)
# matches <- matchPDict(dict, sread(trimmed_reads))

# Filter out reads that are composed entirely of adapter dimers
# clean_reads <- trimmed_reads[countIndex(matches) == 0]

# Write the cleaned data to a new FASTQ file
# writeFastq(clean_reads, "path/to/trimmed_output_1.fastq")

cat("Adapter trimming executed successfully.\n")
