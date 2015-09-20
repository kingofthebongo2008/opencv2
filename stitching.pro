DEFINES                 +=  WIN32 _CRT_SECURE_NO_WARNINGS _CONSOLE _LIB _SCL_SECURE_NO_WARNINGS CV_AVX2
QMAKE_CFLAGS            +=  /arch:AVX2  /Gm- /MP /sdl /W3
QMAKE_CXXFLAGS          +=  /arch:AVX2  /Gm- /MP /sdl /W3
CONFIG                  =   console
TARGET                  =   stitching_qmake

QMAKE_LFLAGS_CONSOLE    +=  /OPT:ICF /OPT:REF
QMAKE_LFLAGS            +=
QMAKE_LIBS              +=  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib

OBJECTS_DIR             =   ./tmp/qmake/x64


SOURCES                 = main.cpp

