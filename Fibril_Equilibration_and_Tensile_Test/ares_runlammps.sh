#!/bin/sh
#PBS -V
#PBS -N lammps
#PBS -q batch
#PBS -l nodes=3:ppn=24
#PBS -l walltime=512:00:00
#PBS -j oe

export PATH=/shared/mpi/gnu/openmpi-1.8.5/bin:$PATH
export LD_LIBRARY_PATH=/shared/mpi/intel/openmpi-1.8.5/lib:$LD_LIBRARY_PATH

echo Working directory is $PBS_O_WORKDIR
cd $PBS_O_WORKDIR 
echo Running on host `hostname`
echo Time is `date`
echo Directory is `pwd`
echo The following processors are allocated to this job:
echo `cat $PBS_NODEFILE`
NP=`wc -l < $PBS_NODEFILE`

mpirun -v -machinefile $PBS_NODEFILE /shared/lammps/lmp_openmpi_7Jan17_Yao < Equil_Tensile_Test.in > Equil_Tensile_Test.log
