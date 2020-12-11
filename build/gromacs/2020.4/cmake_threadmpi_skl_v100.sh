#!/usr/bin/env bash

cmake ..                     \
    -DCMAKE_C_COMPILER=gcc   \
    -DCMAKE_CXX_COMPILER=g++ \
    -DGMX_SIMD=AVX_512       \
    -DGMX_MPI=off            \
    -DGMX_GPU=on             \
    -DGMX_CUDA_TARGET_SM=70  \
    -DGMX_DOUBLE=off         \
    -DGMX_FFT_LIBRARY=fftw3  \
    -DGMX_BUILD_OWN_FFTW=on  \
    -DGMX_HWLOC=off          \
    -DBUILD_SHARED_LIBS=off 
