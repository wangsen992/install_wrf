#!/bin/bash

CWD=$(dirname $0)
echo "CWD = ${CWD}"
source $CWD/bashrc

bash $CWD/wrf_download_src.sh
bash $CWD/sys_env_test.sh
bash $CWD/wrf_build_lib.sh
bash $CWD/lib_compat_test.sh

cat << CompileInstruction
Once you obtain the WRF source code (and if you downloaded a tar file, have unpacked the tar file), go into the WRF directory:
cd WRF
Create a configuration file for your computer and compiler:
./configure
You will see various options. Choose the option that lists the compiler you are using and the way you wish to build WRF (i.e., serially or in parallel). Although there are 3 different types of parallel (smpar, dmpar, and dm+sm), we have the most experience with dmpar and typically recommend choosing this option.

Once your configuration is complete, you should have a configure.wrf file, and you are ready to compile. To compile WRF, you will need to decide which type of case you wish to compile. The options are listed below:
em_real (3d real case)
em_quarter_ss (3d ideal case)
em_b_wave (3d ideal case)
em_les (3d ideal case)
em_heldsuarez (3d ideal case)
em_tropical_cyclone (3d ideal case)
em_hill2d_x (2d ideal case)
em_squall2d_x (2d ideal case)
em_squall2d_y (2d ideal case)
em_grav2d_x (2d ideal case)
em_seabreeze2d_x (2d ideal case)
em_scm_xy (1d ideal case)
./compile case_name >& log.compile
where case_name is one of the options listed above

Compilation should take about 20-30 minutes.

Once the compilation completes, to check whether it was successful, you need to look for executables in the WRF/main directory:
ls -ls main/*.exe
If you compiled a real case, you should see:
wrf.exe (model executable)
real.exe (real data initialization)
ndown.exe (one-way nesting)
tc.exe (for tc bogusing--serial only)
If you compiled an idealized case, you should see:
wrf.exe (model executable)
ideal.exe (ideal case initialization)
These executables are linked to 2 different directories:
WRF/run
WRF/test/em_real
You can choose to run WRF from either directory.
CompileInstruction
