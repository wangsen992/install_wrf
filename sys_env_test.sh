#!/bin/bash

CWD=$(dirname $0)
echo "CWD = ${CWD}"
source $CWD/bashrc

cd $WRF_TEST_DIR
tar  -xf Fortran_C_tests.tar
echo "Test #1:"
gfortran TEST_1_fortran_only_fixed.f
./a.out

echo "Test #2:"
gfortran TEST_2_fortran_only_free.f90
./a.out

echo "Test #3:"
gcc TEST_3_c_only.c
./a.out

echo "Test #4:"
gcc -c -m64 TEST_4_fortran+c_c.c
gfortran -c -m64 TEST_4_fortran+c_f.f90
gfortran -m64 TEST_4_fortran+c_f.o TEST_4_fortran+c_c.o
./a.out

echo "Test #5:"
./TEST_csh.csh
./TEST_perl.pl
./TEST_sh.sh


