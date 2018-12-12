Step1: Building IGA (Intel Graphics Assembler)
========================================================================

1. Download or clone IGC (Intel Graphics Compiler)

   https://github.com/intel/intel-graphics-compiler.git

2. Chdir into 'intel-graphics-compiler' (or any other workspace folder of choice)

   It should read the following folder strucutre:
   
   workspace
      |- visa
      |- IGC
      |- inc
      |- 3d
      |- skuwa
      
3. Chdir into IGA sub-component

   cd visa/iga
   
4. Create build directory

    mkdir build
    
5. Change into build directory

    cd build
    
6. Run cmake

   cmake ../
   
7. Run make to build IGA project

   make
   
8. Get the output executable "iga64" in IGAExe folder

Step2: Building the other post processing tools
========================================================================
 1. Download or clone Driver source code
    https://github.com/intel/media-driver
 
 2. Chdir into "Tools/MediaDriverTools/KernelBinToSource"

 3. Create build directory
     mkdir build

 4. Change into build directory
     cd build

 5. Run cmake
     cmake ../

 6. Run make to build KernelBinToSource project
     make

 7. Get the output executable "KernelBinToSource" in build folder

Step3: Building the kernel source to biniary
======================================================================== 
1. Download or clone Driver source code
   https://github.com/intel/media-driver

2. Chdir to "media_driver/agnostic/gen11/codec/kernel_open""
    
2. Create Compiler directory
  
   mkdir Compiler

3. Create IGA directory in Compiler directory

   mkdir IGA

4. Copy tool biniary (iga64) from Step1 to IGA folder

5. run build.py script to generate kernel binary, and rename the .krn file as igcodeckrn_g11.krn


Step4: Building the kernel binary to igvpkrn_g11.c and igvpkrn_g11.h
========================================================================
 1. Chdir into media driver root directory
    
 2. Chdir into "media_driver/agnostic/gen11/codec/kernel_open"

 3. Copy tool biniary (KernelBinToSource) from Step2 to current folder

 4. run following command to get the .h and .c files:
    ./KernelBinToSource -i igcodeckrn_g11.krn -o . -v igcodeckrn_g11
