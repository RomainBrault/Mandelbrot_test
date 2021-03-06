# Install script for directory: /home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/romain/Dropbox/Perso/Mandelbrot_test")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorConfig.cmake;/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorConfigVersion.cmake")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector" TYPE FILE FILES
    "/home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/VectorConfig.cmake"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/VectorConfigVersion.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  IF(EXISTS "$ENV{DESTDIR}/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorLibraryDepends.cmake")
    FILE(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorLibraryDepends.cmake"
         "/home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/CMakeFiles/Export/_home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorLibraryDepends.cmake")
    IF(EXPORT_FILE_CHANGED)
      FILE(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorLibraryDepends-*.cmake")
      IF(OLD_CONFIG_FILES)
        MESSAGE(STATUS "Old export file \"$ENV{DESTDIR}/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorLibraryDepends.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        FILE(REMOVE ${OLD_CONFIG_FILES})
      ENDIF(OLD_CONFIG_FILES)
    ENDIF(EXPORT_FILE_CHANGED)
  ENDIF()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorLibraryDepends.cmake")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector" TYPE FILE FILES "/home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/CMakeFiles/Export/_home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorLibraryDepends.cmake")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorLibraryDepends-release.cmake")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector" TYPE FILE FILES "/home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/CMakeFiles/Export/_home/romain/Dropbox/Perso/Mandelbrot_test/lib/CMake/Vector/VectorLibraryDepends-release.cmake")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

