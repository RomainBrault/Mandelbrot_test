FILE(GLOB_RECURSE source_files src/*.*pp)
FILE(GLOB_RECURSE public_header_files include/*.*pp)

ADD_EXECUTABLE(Mandelbrot ${source_files})

INCLUDE_DIRECTORIES( "include" )
INCLUDE_DIRECTORIES(
    "${PROJECT_SOURCE_DIR}/Vector-1.0/Vector/include"
    "${PROJECT_SOURCE_DIR}/Vector-1.0/Vector"
    "${PROJECT_BINARY_DIR}/Vector-1.0/Vector"
)

find_package(SFML 1.6 REQUIRED system window graphics network audio)

# Check for C++11
INCLUDE("${CMAKE_SOURCE_DIR}/CMake/cpp11/CheckCXX11Features.cmake")
FOREACH(flag ${CXX11_FEATURE_LIST})
    SET_PROPERTY(TARGET Mandelbrot
      APPEND PROPERTY COMPILE_DEFINITIONS ${flag})
ENDFOREACH(flag ${CXX11_FEATURE_LIST})

TARGET_LINK_LIBRARIES(Mandelbrot Vector ${SFML_LIBRARIES})

INSTALL(TARGETS Mandelbrot
    EXPORT VectorLibraryDepends
    RUNTIME DESTINATION "${INSTALL_BIN_DIR}" COMPONENT bin
)
