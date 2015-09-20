SOURCES	+=./modules/gpu/src/arithm1.cpp
SOURCES	+=./modules/gpu/src/brute_force_matcher.cpp
SOURCES	+=./modules/gpu/src/cascadeclassifier2.cpp
SOURCES	+=./modules/gpu/src/cudastream.cpp
SOURCES	+=./modules/gpu/src/cu_safe_call.cpp
SOURCES	+=./modules/gpu/src/element_operations.cpp
SOURCES	+=./modules/gpu/src/error.cpp
SOURCES	+=./modules/gpu/src/graphcuts.cpp
SOURCES	+=./modules/gpu/src/imgproc2.cpp
SOURCES	+=./modules/gpu/src/matrix_operations.cpp
SOURCES	+=./modules/gpu/src/matrix_reductions.cpp
SOURCES	+=./modules/gpu/src/precomp.cpp
SOURCES	+=./modules/gpu/src/pyramids1.cpp
SOURCES	+=./modules/gpu/src/remap.cpp


CUSOURCES +=./modules/gpu/src/cuda/bf_knnmatch.cu
CUSOURCES +=./modules/gpu/src/cuda/bf_match.cu
CUSOURCES +=./modules/gpu/src/cuda/bf_radius_match.cu
CUSOURCES +=./modules/gpu/src/cuda/ccomponetns.cu
CUSOURCES +=./modules/gpu/src/cuda/element_operations.cu
CUSOURCES +=./modules/gpu/src/cuda/imgproc.cu
CUSOURCES +=./modules/gpu/src/cuda/lut.cu
CUSOURCES +=./modules/gpu/src/cuda/mathfunc.cu
CUSOURCES +=./modules/gpu/src/cuda/matrix_reductions.cu
CUSOURCES +=./modules/gpu/src/cuda/pyr_down.cu
CUSOURCES +=./modules/gpu/src/cuda/pyr_up.cu
CUSOURCES +=./modules/gpu/src/cuda/remap.cu
CUSOURCES +=./modules/gpu/src/nvidia/core/NCV.cu
CUSOURCES +=./modules/gpu/src/nvidia/core/NCVPyramid.cu
CUSOURCES +=./modules/gpu/src/nvidia/NPP_staging/NPP_staging.cu

