#!/usr/bin/env bash

MPICC=/scratch/optpar01/apps/build/mvapich2/2.3.4/gcc/8.3.0/cuda/10.1/bin/mpicc
MPICXX=/scratch/optpar01/apps/build/mvapich2/2.3.4/gcc/8.3.0/cuda/10.1/bin/mpicxx

cmake ..                         \
    -DCMAKE_C_COMPILER=$MPICC    \
    -DCMAKE_CXX_COMPILER=$MPICXX \
    -DGMX_SIMD=AVX_512           \
    -DGMX_MPI=on                 \
    -DGMX_GPU=on                 \
    -DGMX_CUDA_TARGET_SM=70      \
    -DGMX_DOUBLE=off             \
    -DGMX_FFT_LIBRARY=fftw3      \
    -DGMX_BUILD_OWN_FFTW=on      \
    -DGMX_HWLOC=off              \
    -DBUILD_SHARED_LIBS=off 
