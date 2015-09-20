# Cuda extra-compiler for handling files specified in the CUSOURCES variable
{
	cu.name = Cuda ${QMAKE_FILE_IN}
	cu.input = CUSOURCES
	cu.CONFIG += no_link
	cu.variable_out = OBJECTS

	isEmpty(QMAKE_CUC) {
		win32:QMAKE_CUC = $$quote($$(CUDA_BIN_PATH)\\nvcc.exe)
		else:QMAKE_CUC = nvcc
	}
	isEmpty(CU_DIR):CU_DIR = .
	isEmpty(QMAKE_CPP_MOD_CU):QMAKE_CPP_MOD_CU = 
	isEmpty(QMAKE_EXT_CPP_CU):QMAKE_EXT_CPP_CU = .cu

	win32:INCLUDEPATH += $$quote($$(CUDA_INC_PATH))

	QMAKE_CUFLAGS += $$QMAKE_CXXFLAGS
	QMAKE_CUFLAGS += $$QMAKE_CXXFLAGS_RTTI_ON $$QMAKE_CXXFLAGS_WARN_ON $$QMAKE_CXXFLAGS_STL_ON
	QMAKE_CUEXTRAFLAGS += --machine 64 --compile -cudart shared --use-local-env --cl-version 2013 -O2 --gpu-architecture=sm_20
#	message(QMAKE_CUFLAGS: $$QMAKE_CUFLAGS)

	QMAKE_CUEXTRAFLAGS += -Xcompiler $$join(QMAKE_CUFLAGS, ",") $$CUFLAGS
	QMAKE_CUEXTRAFLAGS += $(DEFINES)
	QMAKE_CUEXTRAFLAGS += $$join(QMAKE_COMPILER_DEFINES, " -D", -D)
	QMAKE_CUEXTRAFLAGS += $(INCPATH)
	QMAKE_CUEXTRAFLAGS += -c
#	QMAKE_CUEXTRAFLAGS += -v
#	QMAKE_CUEXTRAFLAGS += -keep
#	QMAKE_CUEXTRAFLAGS += -clean
	QMAKE_EXTRA_VARIABLES += QMAKE_CUEXTRAFLAGS

	cu.commands = $$QMAKE_CUC $(EXPORT_QMAKE_CUEXTRAFLAGS) -o $$OBJECTS_DIR/cuda/$${QMAKE_CPP_MOD_CU}${QMAKE_FILE_BASE}$${QMAKE_EXT_OBJ} ${QMAKE_FILE_NAME}$$escape_expand(\\n\\t)
	cu.output = $$OBJECTS_DIR/cuda/$${QMAKE_CPP_MOD_CU}${QMAKE_FILE_BASE}$${QMAKE_EXT_OBJ}
	silent:cu.commands = @echo nvcc ${QMAKE_FILE_IN} && $$cu.commands
	QMAKE_EXTRA_COMPILERS += cu

	build_pass|isEmpty(BUILDS):cuclean.depends = compiler_cu_clean
	else:cuclean.CONFIG += recursive
	QMAKE_EXTRA_TARGETS += cuclean
}
