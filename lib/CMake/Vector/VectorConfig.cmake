# - Config file for the CPUTools package
#  It defines the following variables
#  SAPHIR_INCLUDE_DIRS - INCLUDE directories for CPUTools
#  SAPHIR_LIBRARIES    - libraries to link against
#  SAPHIR_EXECUTABLE   - the sample executable

# Compute paths
GET_FILENAME_COMPONENT(
	Vector_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
IF(EXISTS "${CPUTools_CMAKE_DIR}/CMakeCache.txt")
	# In build tree
	INCLUDE("${VECTOR_CMAKE_DIR}/CPUToolsBuildTreeSettings.cmake")
ELSE(EXISTS "${VECTOR_CMAKE_DIR}/CMakeCache.txt")
	SET(VECTOR_INCLUDE_DIRS "${VECTOR_CMAKE_DIR}/../../../include")
ENDIF(EXISTS "${VECTOR_CMAKE_DIR}/CMakeCache.txt")

# Our library dependencies (contains definitions for IMPORTED targets)
INCLUDE("${VECTOR_CMAKE_DIR}/VectorLibraryDepends.cmake")

# These are IMPORTED targets created by VectorLibraryDepends.cmake
SET(VECTOR_LIBRARIES Vector)
SET(VECTOR_EXECUTABLE sample)
