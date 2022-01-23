#!/bin/bash


#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno18/lab5
#SBATCH -J time-lab5
#SBATCH --output=RESULTADOS.txt
#SBATCH --exclusive



echo "* Ejecutando k-mer13 C++ *"
echo
time ./k-mer13
echo "* Ejecutando k-mer14 C++ *"
echo
time ./k-mer14

echo "=========================="

echo "* Ejecutando k-mer13 Python *"
echo 
time ./k-mer13.py
echo "* Ejecutando k-mer14 Python *"
echo
time ./k-mer14.py
