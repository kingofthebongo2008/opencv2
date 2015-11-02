DEFINES                 +=  WIN32 _CRT_SECURE_NO_WARNINGS _CONSOLE _LIB _SCL_SECURE_NO_WARNINGS CV_AVX2 NDEBUG UNICODE _UNICODE

CONFIG                  =   console
TARGET                  =   stitching

QT += widget

#use CUDA_PATH or CUDA_PATH_V6_5 for specific version
CUDA_INC_PATH           = $$(CUDA_PATH)\\include
CUDA_LIB_PATH           = $$(CUDA_PATH)\\lib\\x64

QMAKE_CFLAGS            +=  /arch:AVX2 /Gm- /GS /GL /W3 /Gy /Zc:wchar_t /MP /Gd /Oi /MD /EHsc
QMAKE_CXXFLAGS          +=  /arch:AVX2 /Gm- /GS /GL /W3 /Gy /Zc:wchar_t /MP /Gd /Oi /MD /EHsc


CUDA_INCLUDEPATH        =  $$CUDA_INC_PATH
CUDA_LIBPATH            =  $$CUDA_LIB_PATH

INCLUDEPATH             +=  $$CUDA_INCLUDEPATH

INCLUDEPATH             +=  C:\Qt\5.5\msvc2013_64\include\
INCLUDEPATH             +=  C:\Qt\5.5\msvc2013_64\include\QtCore
INCLUDEPATH             +=  C:\Qt\5.5\msvc2013_64\include\QtGui
INCLUDEPATH             +=  C:\Qt\5.5\msvc2013_64\include\QtMultimedia
INCLUDEPATH             +=  C:\Qt\5.5\msvc2013_64\include\QtMultimediaWidgets
INCLUDEPATH             +=  C:\Qt\5.5\msvc2013_64\include\QtWidgets


INCLUDEPATH             +=  ./include
INCLUDEPATH             +=  ./modules/core/include
INCLUDEPATH             +=  ./modules/flann/include
INCLUDEPATH             +=  ./modules/features2d/include
INCLUDEPATH             +=  ./modules/imgproc/include
INCLUDEPATH             +=  ./modules/highgui/include
INCLUDEPATH             +=  ./modules/stitching/include
INCLUDEPATH             +=  ./modules/dynamicuda/include
INCLUDEPATH             +=  ./modules/calib3d/include
INCLUDEPATH             +=  ./3rdparty/libjpeg
INCLUDEPATH             +=  ./modules/gpu/include
INCLUDEPATH             +=  ./modules/objdetect/include
INCLUDEPATH             +=  ./modules/video/include
INCLUDEPATH             +=  ./modules/gpu/src/cuda
INCLUDEPATH             +=  ./modules/gpu/src/nvidia
INCLUDEPATH             +=  ./modules/gpu/src/nvidia/NPP_Staging
INCLUDEPATH             +=  ./modules/gpu/src/nvidia/core

QMAKE_LFLAGS_CONSOLE    +=  /OPT:ICF /OPT:REF /LIBPATH:\"$$CUDA_LIBPATH\" /LTCG /NXCOMPAT /MANIFEST /DYNAMICBASE /MACHINE:X64
QMAKE_LFLAGS            +=
QMAKE_LIBS              +=  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib cudart.lib nppc.lib nppi.lib
QMAKE_LIBS              +=  c:\Qt\5.5\msvc2013_64\lib\Qt5Core.lib
QMAKE_LIBS              +=  c:\Qt\5.5\msvc2013_64\lib\Qt5Widgets.lib

QT += core
QT += widgets


OBJECTS_DIR             =   ./tmp/stiching/x64


SOURCES                 = ./samples/cpp/stitching.cpp
CUSOURCES               = 

include(jpeg.pri)
include(calib3d.pri)
include(core.pri)
include(dynamicuda.pri)
include(features2d.pri)
include(flann.pri)
include(gpu.pri)
include(highgui.pri)
include(imgproc.pri)
include(objdetect.pri)
include(stitching.pri)
include(cuda.pri)

