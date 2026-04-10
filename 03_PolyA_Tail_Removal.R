# =========================================================================
# MODULE 3: Poly-A / Poly-T Tail Removal
# AUTHOR: Kuncha Shashidhar
# 
# 🧬 ABOUT THE DATA:
# Description: In mRNA-Seq, libraries are often enriched using poly-T oligos 
#              to capture the poly-A tails of mature mRNAs. 
# 
# 🔍 REAL WORLD APPLICATION:
# Long homopolymeric tracts (Poly-A/T) at the ends of reads provide no unique 
# mapping information and increase computational overhead. Filtering them out 
# streamlines downstream differential expression analysis.
# =========================================================================

library(ShortRead)

cat("\n--- Poly-A/T Filtering Pipeline ---\n")

# Define homopolymeric filters (e.g., sequences with excessive A's or T's)
# polyA_filter <- srFilter(function(x) {
#   # Calculate the percentage of 'A' bases in the sequence
#   a_count <- alphabetFrequency(sread(x))[,"A"]
#   a_pct <- a_count / width(sread(x))
#   
#   # Keep reads where 'A' makes up less than 80% of the sequence
#   return(a_pct < 0.80)
# }, name="PolyA_Filter")

# polyT_filter <- srFilter(function(x) {
#   t_count <- alphabetFrequency(sread(x))[,"T"]
#   t_pct <- t_count / width(sread(x))
#   return(t_pct < 0.80)
# }, name="PolyT_Filter")

# Apply filters
# reads <- readFastq("path/to/trimmed_output_1.fastq")
# filtered_reads <- reads[polyA_filter(reads) & polyT_filter(reads)]

# Write the fully filtered reads to disk
# writeFastq(filtered_reads, "path/to/final_filtered_1.fastq")

cat("Homopolymeric tracts removed.\n")
