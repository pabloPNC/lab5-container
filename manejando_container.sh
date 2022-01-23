#!/bin/bash

ruta_imagen="/nas/hdd-0/singularity_images/python_3-9-1.sif"

# Version SO
echo "* MOSTRANDO LA VERSION DEL SO: *"
singularity exec $ruta_imagen cat /etc/os-release
echo

# Contenido del directorio que estamos viendo
echo "* CONTENIDO DEL DIRECTORIO ACTUAL: *"
singularity exec $ruta_imagen ls
echo 

# El path del directorio que estamos viendo
echo "* PATH DEL DIRECTORIO ACTUAL: *"
singularity exec $ruta_imagen pwd
echo

# Version de python que hay instalada
echo "* VERSION DE PYTHON INSTALADA: *"
singularity exec $ruta_imagen python -V
echo

# Version del compilador de C++
echo "* VERSION DEL COMPILADOR DE C++: *"
singularity exec $ruta_imagen g++ --version
echo

# Ejecucion de k-mer13
echo "* EJECUCIÓN k-mer13: *"
time singularity exec "$ruta_imagen" ./data/k-mer13
echo

