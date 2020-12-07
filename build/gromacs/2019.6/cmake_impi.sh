#!/usr/bin/env bash

# -DCMAKE_C_FLAGS='-march=ivybridge -mtune=skylake-avx512'                    \
# -DCMAKE_CXX_FLAGS='-march=ivybridge -mtune=skylake-avx512'                  \

cmake ..                                                                        \
    -DCMAKE_C_COMPILER=mpiicc                                                   \
    -DCMAKE_CXX_COMPILER=mpiicpc                                                \
    -DGMX_SIMD=AVX_512                                                          \
    -DGMX_MPI=on                                                                \
    -DGMX_GPU=off                                                               \
    -DGMX_DOUBLE=off                                                            \
    -DGMX_FFT_LIBRARY=mkl                                                       \
    -DGMX_HWLOC=off                                                             \
    -DBUILD_SHARED_LIBS=off 
