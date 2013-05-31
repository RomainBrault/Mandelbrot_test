#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Vector" for configuration "Release"
set_property(TARGET Vector APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Vector PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/home/romain/Dropbox/Perso/Mandelbrot_test/lib/libVector.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS Vector )
list(APPEND _IMPORT_CHECK_FILES_FOR_Vector "/home/romain/Dropbox/Perso/Mandelbrot_test/lib/libVector.a" )

# Import target "Mandelbrot" for configuration "Release"
set_property(TARGET Mandelbrot APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Mandelbrot PROPERTIES
  IMPORTED_LOCATION_RELEASE "bin/Mandelbrot"
  )

list(APPEND _IMPORT_CHECK_TARGETS Mandelbrot )
list(APPEND _IMPORT_CHECK_FILES_FOR_Mandelbrot "bin/Mandelbrot" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
