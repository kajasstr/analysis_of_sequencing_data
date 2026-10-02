# Analysis of Sequencing Data - Final Assignment

This repository contains a complete pipeline for processing Nanopore sequencing data. The goal of the project was to perform de novo genome assembly, annotate it, and draft a final report mimicking a real manuscript contribution.

## Tools and Technologies
* **Fastplong (0.4.1)** - Quality control (QC), removal of sequencing adapters and low-quality reads.
* **Flye (2.9.2)** - De novo genome assembly from long-read data using the `--nano-hq` mode.
* **BUSCO (5.2.2)** - Assessment of assembly quality and genome completeness (against the `bacteria_odb10` lineage).
* **Prokka (1.14.6)** - Structural and functional genome annotation.
* **PBS (Metacentrum)** - Batch job scripts for heavy computing tasks on a cluster.

## Workflow
1. **QC:** Processing raw data (over 1.11 G bases) and filtering low-quality reads using Fastplong.
2. **Assembly:** Assembling the genome from reads to contigs on the Metacentrum computing cluster.
3. **Genome QC:** Evaluating the assembly logs and performing BUSCO analysis.
4. **Annotation:** Identifying genes and rRNA elements using Prokka.

## Key Results
* **Genome size:** 2,758,447 bp
* **Number of contigs:** 4
* **N50:** 2,714,464
* **Mean genome coverage:** 363x
* **Completeness (BUSCO):** 97.6%
* **Annotation:** 2,780 annotated genes and 6 rRNA elements. Two specific 16S rRNA sequences were successfully localized and extracted.

## Repository Contents
* `Report.pdf` - The final report containing detailed methods, results, and references.
* `assembly_script.sh` - Metacentrum batch job script used for running the Flye assembly.
* `16SrRNA.fasta` - Fasta file containing the identified 16S rRNA sequences.
