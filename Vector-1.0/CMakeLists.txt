CMAKE_MINIMUM_REQUIRED(VERSION 2.8.3)
PROJECT(Vector C CXX)

SET(Vector_MAJOR_VERSION 1)
SET(Vector_MINOR_VERSION 0)
SET(Vector_PATCH_VERSION 3)
SET(Vector_VERSION
  ${Vector_MAJOR_VERSION}.${Vector_MINOR_VERSION}.${Vector_PATCH_VERSION})

MESSAGE(
    STATUS "Configuring Vector ${Vector_MAJOR}.${Vector_MINOR}.${Vector_PATCH}")

# Offer the user the choice of overriding the installation directories
SET(INSTALL_LIB_DIR lib CACHE PATH "Installation directory for libraries")
SET(INSTALL_BIN_DIR bin CACHE PATH "Installation directory for executables")
SET(INSTALL_INCLUDE_DIR include CACHE PATH
    "Installation directory for header files")

IF(WIN32 AND NOT CYGWIN)
    SET(DEF_INSTALL_CMAKE_DIR CMake)
ELSE(WIN32 AND NOT CYGWIN)
    SET(DEF_INSTALL_CMAKE_DIR lib/CMake/Vector)
ENDIF(WIN32 AND NOT CYGWIN)
SET(INSTALL_CMAKE_DIR ${DEF_INSTALL_CMAKE_DIR} CACHE PATH
    "Installation directory for CMake files")

# Make relative paths absolute (needed later on)
FOREACH(p LIB BIN INCLUDE CMAKE)
    SET(var INSTALL_${p}_DIR)
    IF(NOT IS_ABSOLUTE "${${var}}")
        SET(${var} "${CMAKE_INSTALL_PREFIX}/${${var}}")
    ENDIF(NOT IS_ABSOLUTE "${${var}}")
ENDFOREACH(p LIB BIN INCLUDE CMAKE)

# set up include-directories
INCLUDE_DIRECTORIES(
    "${PROJECT_SOURCE_DIR}/Vector/include"
    "${PROJECT_SOURCE_DIR}/Vector"
    "${PROJECT_BINARY_DIR}/Vector"
)

# Initialize CXXFLAGS.
SET(CMAKE_BUILD_TYPE Release)
SET(CMAKE_FLAGS_HELP
    "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel.")
SET(COMPILER_INFORMATION
    "Configure for ${CMAKE_CXX_COMPILER} (C++) and ${CMAKE_C_COMPILER} (C) in ${CMAKE_BUILD_TYPE}.")

# Add sub-directories
ADD_SUBDIRECTORY(Vector)

# Add all targets to the build-tree export set
EXPORT(TARGETS Vector
    FILE "${PROJECT_BINARY_DIR}/VectorLibraryDepends.cmake")

# Check endianess
INCLUDE(TestBigEndian)
TEST_BIG_ENDIAN(BIG_ENDIAN)

# Check for 64bits extension (assume x86)
IF(CMAKE_SIZEOF_VOID_P EQUAL 8)
    SET(ARCHx86_64 TRUE )
ELSE(CMAKE_SIZEOF_VOID_P EQUAL 8)
    SET(ARCHx86 TRUE)
ENDIF(CMAKE_SIZEOF_VOID_P EQUAL 8)

# configure a header file to pass some of the CMake settings
# to the source code
CONFIGURE_FILE (
  "${PROJECT_SOURCE_DIR}/Vector/VectorConfig.hpp.in"
  "${PROJECT_BINARY_DIR}/Vector/VectorConfig.hpp")

# Export the package for use from the build-tree
# (this registers the build-tree with a global CMake-registry)
EXPORT(PACKAGE Vector)

# Create a VectorBuildTreeSettings.cmake file for the use from the build tree

# Create the Vector.cmake and VectorConfigVersion files
FILE(RELATIVE_PATH CONF_REL_INCLUDE_DIR "${INSTALL_CMAKE_DIR}"
    "${INSTALL_INCLUDE_DIR}")
CONFIGURE_FILE(VectorConfig.cmake.in
    "${PROJECT_BINARY_DIR}/VectorConfig.cmake" @ONLY)
CONFIGURE_FILE(VectorConfigVersion.cmake.in
    "${PROJECT_BINARY_DIR}/VectorConfigVersion.cmake" @ONLY)

# Install the Vector.cmake and VectorVersion.cmake
INSTALL(FILES
    "${PROJECT_BINARY_DIR}/VectorConfig.cmake"
    "${PROJECT_BINARY_DIR}/VectorConfigVersion.cmake"
    DESTINATION "${INSTALL_CMAKE_DIR}" COMPONENT dev)

# Install the export set for use with the install-tree
INSTALL(EXPORT VectorLibraryDepends DESTINATION
  "${INSTALL_CMAKE_DIR}" COMPONENT dev)

# build a CPack driven installer package
INCLUDE(InstallRequiredSystemLibraries)
SET(CPACK_SET_DESTDIR "ON")
SET(CPACK_RESOURCE_FILE_LICENSE
     "${CMAKE_CURRENT_SOURCE_DIR}/License.txt")
SET(CPACK_PACKAGE_VERSION_MAJOR "${Vector_VERSION_MAJOR}")
SET(CPACK_PACKAGE_VERSION_MINOR "${Vector_VERSION_MINOR}")
INCLUDE(CPack)