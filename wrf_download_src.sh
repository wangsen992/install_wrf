#!/bin/bash

CWD=$(dirname $0)
echo "CWD = ${CWD}"
source $CWD/bashrc
# get the source code
cd $PREFIX/opt
echo "Downloading WRF & WPS soruce code..."
git clone https://github.com/wrf-model/WRF
git clone https://github.com/wrf-model/WPS

# create required directories
mkdir -p $WRF_TEST_DIR && "mkdir -p $WRF_TEST_DIR"
cd $WRF_TEST_DIR && echo "cd $WRF_TEST_DIR"
wget --no-check-certificate https://www2.mmm.ucar.edu/wrf/OnLineTutorial/compile_tutorial/tar_files/Fortran_C_tests.tar

cd $PREFIX/tmp && "cd $PREFIX/tmp"
wget --no-check-certificate https://www2.mmm.ucar.edu/wrf/OnLineTutorial/compile_tutorial/tar_files/mpich-3.0.4.tar.gz
wget --no-check-certificate https://www2.mmm.ucar.edu/wrf/OnLineTutorial/compile_tutorial/tar_files/netcdf-4.1.3.tar.gz
wget --no-check-certificate https://www2.mmm.ucar.edu/wrf/OnLineTutorial/compile_tutorial/tar_files/jasper-1.900.1.tar.gz
wget --no-check-certificate https://www2.mmm.ucar.edu/wrf/OnLineTutorial/compile_tutorial/tar_files/libpng-1.2.50.tar.gz
wget --no-check-certificate https://www2.mmm.ucar.edu/wrf/OnLineTutorial/compile_tutorial/tar_files/zlib-1.2.7.tar.gz

# copy the bashrc to WRF directory
cp $CWD/bashrc $WRF_DIR
