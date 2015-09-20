Finished work:

1. Fixed several bugs in opencv that were crashing avx2 path. Now cpu works much faster if you have it.
2. Renamed files so the whole project can be compiled with qmake without problematic errors
3. Did a visual studio solution in the build directory for easier debugging, because qmake is not convenient.

Usage:

Install qt 5.5 and Visual Studio 2013

add qmake to your path:

Start visual studio command line environment for x64 version:

execute

qmake stitching.pro
nmake

the build is in stitching_qmake.exe.
