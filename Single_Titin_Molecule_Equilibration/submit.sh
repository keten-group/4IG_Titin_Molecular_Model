#!/bin/bash
#SBATCH -A p30995             ## account (unchanged)
#SBATCH -p long        ## "-p" instead of "-q"
#SBATCH -N 6                 ## number of nodes
#SBATCH -n 144                 ## number of cores
#SBATCH -t 141:59:59          ## walltime
#SBATCH	--job-name="EPDM600"    ## name of job

##### These are shell commands. Note that all MSUB commands come first.
cd $SLURM_SUBMIT_DIR
module load intel/2011.3
module load mpi/openmpi-1.6.3-intel2011.3
ulimit -s unlimited

mpirun -np 144 /home/awc282/bin/lmp_openmpi_7Jan17_Yao -in Equil_Tensile_Test_Single_Molecule.in > Equil_Tensile_Test_Single_Molecule.log
