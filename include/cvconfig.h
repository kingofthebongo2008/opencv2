/* OpenCV compiled as static or dynamic libs */

#define HAVE_JPEG

//#define HAVE_CUDA
//#define USE_CUDA

//#define HAVE_OPENCV_GPU

#define HAVE_WINRT

#define CUDA_ARCH_BIN " 30"

/* Create PTX or BIN for 1.0 compute capability */
/* #undef CUDA_ARCH_BIN_OR_PTX_10 */

/* NVIDIA GPU features are used */
#define CUDA_ARCH_FEATURES " 30"

/* Compile for 'virtual' NVIDIA PTX architectures */
#define CUDA_ARCH_PTX "30"

#define OPENCV_STICHING_CODE



