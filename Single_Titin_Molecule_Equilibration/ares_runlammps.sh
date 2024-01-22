#!/bin/sh
#PBS -V
#PBS -N lammps
#PBS -q batch
#PBS -l nodes=node022:ppn=24
#PBS -l walltime=512:00:00
#PBS -m ea

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

# These environment variables are available in every batch job
#
# $PBS_ENVIRONMENT set to PBS_BATCH to indicate that the job is a batch job; otherwise,
#                  set to PBS_INTERACTIVE to indicate that the job is a PBS interactive job
# $PBS_JOBID       the job identifier assigned to the job by the batch system
# $PBS_JOBNAME     the job name supplied by the user
# $PBS_NODEFILE    the name of the file that contains the list of nodes assigned to the job
# $PBS_QUEUE       the name of the queue from which the job is executed
# $PBS_O_HOME      value of the HOME variable in the environment in which qsub was executed
# $PBS_O_LANG      value of the LANG variable in the environment in which qsub was executed
# $PBS_O_LOGNAME   value of the LOGNAME variable in the environment in which qsub was executed
# $PBS_O_PATH      value of the PATH variable in the environment in which qsub was executed
# $PBS_O_MAIL      value of the MAIL variable in the environment in which qsub was executed
# $PBS_O_SHELL     value of the SHELL variable in the environment in which qsub was executed
# $PBS_O_TZ        value of the TZ variable in the environment in which qsub was executed
# $PBS_O_HOST      the name of the host upon which the qsub command is running
# $PBS_O_QUEUE     the name of the original queue to which the job was submitted
# $PBS_O_WORKDIR   the absolute path of the current working directory of the qsub command
#
# End of example PBS script

#mpirun -v -machinefile $PBS_NODEFILE /shared/lammps/lmp_openmpi_7Jan17_Yao < EPDM_restart.in   > out.txt
#mpirun -np 24 /home/awc282/lammps_update/lammps-4May17/src/lmp_mpi -in EPDM_restart.in > out.txt
mpirun -np 24 /home/awc282/bin/lmp_mpi_MC -in EPDM_restart.in > out.txt