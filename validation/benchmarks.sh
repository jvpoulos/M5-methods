#!/bin/bash
#SBATCH --mem=1G
#SBATCH --array=1-20

module load R/3.5.2
R CMD BATCH --no-save "--args ${SLURM_ARRAY_TASK_ID}" benchmarks.R Output/Routput_${SLURM_ARRAY_TASK_ID}.Rout




