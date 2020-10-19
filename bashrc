export PREFIX=~/usr
export WRF_DIR=~/usr/opt/WRF
export WRF_LIB_DIR=~/usr/opt/WRF/Build_WRF/LIBRARIES
export WRF_TEST_DIR=~/usr/opt/WRF/Build_WRF/TESTS

# WRF Required Envs
export CC=gcc
export CXX=g++
export FC=gfortran
export FCFLAGS=-m64
export F77=gfortran
export FFLAGS=-m64
export WRF_JASPERLIB=$WRF_DIR/grib2/lib
export WRF_JASPERINC=$WRF_DIR/grib2/include
export LDFLAGS=-L$WRF_DIR/grib2/lib
export CPPFLAGS=-I$WRF_DIR/grib2/include

# Sourced for libraries
export PATH=$WRF_DIR/netcdf/bin:$PATH
export NETCDF=$DIR/netcdf
export PATH=$WRF_DIR/mpich/bin:$PATH
