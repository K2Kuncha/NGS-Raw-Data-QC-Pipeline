# =========================================================================
# MODULE 4: Automated Batch Processing (Filter & Trim)
# AUTHOR: Kuncha Shashidhar
# 
# 🧬 ABOUT THE DATA:
# Description: Scaling the QC pipeline to handle entire projects.
# 
# 🔍 REAL WORLD APPLICATION:
# Bioinformaticians rarely process one file at a time. This script utilizes 
# the `dada2::filterAndTrim` function in a loop to autonomously process a 
# directory full of paired-end FASTQ files, keeping memory overhead low.
# =========================================================================

library(dada2)

cat("\n--- Initializing Automated Batch Processing ---\n")

# Define input and output directories
# raw_dir <- "path/to/raw_fastq_dir/"
# out_dir <- "path/to/filtered_fastq_dir/"
# dir.create(out_dir, showWarnings = FALSE)

# Extract forward and reverse file names
# fwd_files <- sort(list.files(raw_dir, pattern="_1.fastq", full.names=TRUE))
# rev_files <- sort(list.files(raw_dir, pattern="_2.fastq", full.names=TRUE))

# Generate corresponding output filenames
# filt_fwd <- file.path(out_dir, paste0(basename(fwd_files), "_filt.fastq.gz"))
# filt_rev <- file.path(out_dir, paste0(basename(rev_files), "_filt.fastq.gz"))

cat("\nExecuting dada2 filterAndTrim across all samples...\n")

# Execute batch processing (Adjust maxEE and truncLen based on Run Quality)
# out_stats <- filterAndTrim(fwd=fwd_files, filt=filt_fwd, 
#                            rev=rev_files, filt.rev=filt_rev,
#                            truncLen=c(150, 150), # Truncate reads to this length
#                            maxN=0,               # Drop reads with missing bases
#                            maxEE=c(2, 2),        # Max expected errors
#                            truncQ=2,             # Truncate at first quality score <= 2
#                            rm.phix=TRUE,         # Remove PhiX control reads
#                            compress=TRUE,        # Gzip output to save space
#                            multithread=TRUE)     # Use multiple CPU cores

# Display processing statistics
# head(out_stats)
cat("\nBatch processing complete. Ready for alignment!\n")
