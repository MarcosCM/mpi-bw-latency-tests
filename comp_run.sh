#!/bin/bash

# 1st param: MPI -n
# 2nd param: MPI --hostfile
# 3rd param: {file}.c
# Remaining params: C program remaining parameters
echo "mpicc $3.c -o $3.o -lm"
mpicc $3.c -o $3.o -lm
echo "mpirun -n $1 --hostfile $2 $3.o ${@:4}"
mpirun -n $1 --hostfile $2 $3.o ${@:4}