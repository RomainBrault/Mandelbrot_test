CMAKE_MINIMUM_REQUIRED(VERSION 2.8.3)
PROJECT(Mandelbrot)

SET(CMAKE_MODULE_PATH
	"${CMAKE_SOURCE_DIR}/CMake/Modules/Hwloc"
	"${CMAKE_SOURCE_DIR}/CMake/Modules/CUDA"
	"${CMAKE_SOURCE_DIR}/CMake/Modules/GooglePerfTools"
	"${CMAKE_SOURCE_DIR}/CMake/Modules/OPENCL"
	"${CMAKE_SOURCE_DIR}/CMake/Modules/SFML"
	"${CMAKE_SOURCE_DIR}/CMake/Modules/TBB"
	CACHE STRING "path to cmake modules" FORCE)

ADD_SUBDIRECTORY(Vector-1.0)
ADD_SUBDIRECTORY(Mandelbrot-0.1)