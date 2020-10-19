#!/bin/bash

CWD=$(dirname $0)
echo "CWD = ${CWD}"
source $CWD/bashrc
cd $PREFIX/tmp

# NetCDF
tar xzvf netcdf-4.1.3.tar.gz     #or just .tar if no .gz present
cd netcdf-4.1.3
./configure --prefix=$WRF_LIB_DIR/netcdf --disable-dap
     --disable-netcdf-4 --disable-shared
make
make install
cd ..

# MPICH
tar xzvf mpich-3.0.4.tar.gz     #or just .tar if no .gz present
cd mpich-3.0.4
./configure --prefix=$WRF_LIB_DIR/mpich
make
make install
cd ..

# zlib
tar xzvf libpng-1.2.50.tar.gz     #or just .tar if no .gz present
cd libpng-1.2.50
./configure --prefix=$WRF_LIB_DIR/grib2
make
make install
cd ..

# JasPer
tar xzvf jasper-1.900.1.tar.gz     #or just .tar if no .gz present
cd jasper-1.900.1
./configure --prefix=$WRF_LIB_DIR/grib2
make
make install
cd ..
