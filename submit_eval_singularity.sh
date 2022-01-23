#!/bin/bash


#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno18/lab5
#SBATCH -J time-lab5
#SBATCH --output=RESULTADOS_sing.txt
#SBATCH --exclusive

# Cargar el modulo
module load singularity

imagen=/nas/hdd-0/singularity_images/python_3-9-1.sif

echo "* Ejecutando k-mer13 C++ *"
echo
time singularity exec $imagen ./k-mer13
echo "* Ejecutando k-mer14 C++ *"
echo
time singularity exec $imagen ./k-mer14

echo "=========================="

echo "* Ejecutando k-mer13 Python *"
echo 
time singularity exec $imagen ./k-mer13.py
echo "* Ejecutando k-mer14 Python *"
echo
time singularity exec $imagen ./k-mer14.py

module purge
