# =========================================================================
# MODULE 1: Raw Data Quality Check & Phred Profiling
# AUTHOR: Kuncha Shashidhar
# 
# 🧬 ABOUT THE DATA:
# Format: .fastq
# Description: Raw output from an Illumina sequencer. Each read contains 
#              biological sequence data and an associated Phred quality score 
#              for every single base call.
# 
# 🔍 REAL WORLD APPLICATION:
# Evaluating the initial health of a sequencing run. A sharp drop-off in 
# Phred scores at the 3' end of the reads is common and dictates how strictly 
# the data must be trimmed before mapping.
# =========================================================================

# Load required packages
library(ShortRead)
library(Biostrings)
library(seqTools)

cat("\n--- Phase 1: Ingesting Raw FASTQ Files ---\n")

# To run locally, point to your raw FASTQ files
# raw_fwd <- readBStringSet("path/to/SRR_1.fastq", format="fastq", with.qualities=TRUE)
# raw_rev <- readBStringSet("path/to/SRR_2.fastq", format="fastq", with.qualities=TRUE)

# cat("Forward Reads Loaded:", length(raw_fwd), "\n")
# cat("Reverse Reads Loaded:", length(raw_rev), "\n")

cat("\n--- Phase 2: Generating Base Quality Profiles ---\n")

# Extract the quality matrices (Phred scores)
# qual_matrix <- as(quality(raw_fwd), "matrix")

# Calculate the mean quality score at each base position across all reads
# mean_qualities <- colMeans(qual_matrix, na.rm = TRUE)

# Generate a diagnostic plot (Per Base Sequence Quality)
# plot(mean_qualities, type="l", col="blue", lwd=2,
#      main="Per Base Sequence Quality Score (Forward Reads)",
#      xlab="Position in Read (bp)",
#      ylab="Mean Phred Quality Score",
#      ylim=c(0, 40))
# abline(h=30, col="red", lty=2) # Threshold line for high quality (Q30)

cat("Quality profiling complete. Review plots to determine trimming parameters.\n")
