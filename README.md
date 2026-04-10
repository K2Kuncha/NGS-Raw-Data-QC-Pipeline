# 🧬 NGS Raw Data Preprocessing & QC Pipeline

### 📌 About This Repository
Before any alignment, variant calling, or differential expression analysis can occur, raw Next-Generation Sequencing (NGS) reads must undergo rigorous quality control. Raw reads often contain sequencing artifacts, adapter contamination, and low-quality base calls that can severely compromise downstream results.

This repository provides an automated, R-based pipeline for processing raw Illumina FASTQ files. It demonstrates how to programmatically assess read quality, trim adapters, remove Poly-A/T tails, and batch-process entire sequencing runs.

### 🎯 Objective
To establish a reproducible Standard Operating Procedure (SOP) for the quality control and filtering of paired-end NGS data using Bioconductor packages.

### 🛠️ Core Technologies & Libraries
* **Read Handling:** `ShortRead`, `Biostrings`
* **Quality Profiling:** `seqTools`
* **Filtering & Trimming:** `Rsubread`, `dada2`

### 📂 Modules Included
1. **Raw Data Quality Check:** Loading FASTQ files and generating Phred quality score distributions to assess sequencing run health.
2. **Illumina Adapter Trimming:** Identifying and removing synthetic adapter sequences (from the 3' ends) to prevent alignment errors.
3. **Poly-A/T Tail Removal:** Filtering out homopolymeric tracts common in mRNA-Seq libraries to improve mapping efficiency.
4. **Automated Batch Processing:** A loop-based architecture for autonomously filtering and trimming entire directories of paired-end sequence data without manual intervention.
