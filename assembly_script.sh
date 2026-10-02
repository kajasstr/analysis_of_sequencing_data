#!/bin/bash
#PBS -N ASD_assembly_sustrovk
#PBS -q default
#PBS -l select=1:ncpus=30:mem=64gb:scratch_local=50gb
#PBS -l walltime=04:00:00

cd $SCRATCHDIR || exit 1

module add mambaforge
mamba activate /storage/praha1/home/sustrovk/.conda/envs/flye_env

cp /storage/praha1/home/sustrovk/ASD_projekt/clean_reads.fastq .

flye --nano-hq clean_reads.fastq --out-dir assembly_out --threads $PBS_NUM_PPN

RESULT_DIR="/storage/praha1/home/sustrovk/ASD_projekt/assembly"
mkdir -p $RESULT_DIR
cp -r assembly_out $RESULT_DIR/
