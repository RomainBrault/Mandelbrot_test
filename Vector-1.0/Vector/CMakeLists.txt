FILE(GLOB_RECURSE source_files src/*.*pp)
FILE(GLOB_RECURSE public_header_files include/*.h)

OPTION(STATIC_LIB "Make as a static library [ON] or shared library [OFF]." ON)
IF(STATIC_LIB)
    ADD_LIBRARY(Vector STATIC ${source_files} VectorConfig.hpp.in)
ELSE(STATIC_LIB)
    ADD_LIBRARY(Vector SHARED ${source_files} VectorConfig.hpp.in)
ENDIF(STATIC_LIB)

# Check for C++11
INCLUDE("${CMAKE_SOURCE_DIR}/CMake/cpp11/CheckCXX11Features.cmake")
FOREACH(flag ${CXX11_FEATURE_LIST})
    SET_PROPERTY(TARGET Vector
      APPEND PROPERTY COMPILE_DEFINITIONS ${flag})
ENDFOREACH(flag ${CXX11_FEATURE_LIST})

INCLUDE("${CMAKE_SOURCE_DIR}/CMake/Compiler/Compiler.cmake")

SET_TARGET_PROPERTIES(Vector PROPERTIES
  PUBLIC_HEADER "${public_header_files};${CMAKE_CURRENT_BINARY_DIR}/VectorConfig.hpp")

INSTALL(TARGETS Vector
    # IMPORTANT: Add the saphir library to the "export-SET"
    EXPORT VectorLibraryDepends
    RUNTIME DESTINATION "${INSTALL_BIN_DIR}" COMPONENT bin
    LIBRARY DESTINATION "${INSTALL_LIB_DIR}" COMPONENT lib
    ARCHIVE DESTINATION "${INSTALL_LIB_DIR}" COMPONENT lib
    PUBLIC_HEADER DESTINATION "${INSTALL_INCLUDE_DIR}/Vector"
        COMPONENT dev)
