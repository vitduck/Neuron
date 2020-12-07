#!/usr/bin/env bash

cmake ..                      \
    -DCMAKE_C_COMPILER=icc    \
    -DCMAKE_CXX_COMPILER=icpc \
    -DGMX_SIMD=AVX_512        \
    -DGMX_MPI=off             \
    -DGMX_GPU=off             \
    -DGMX_DOUBLE=off          \
    -DGMX_FFT_LIBRARY=mkl     \
    -DGMX_HWLOC=off           \
    -DBUILD_SHARED_LIBS=off 
