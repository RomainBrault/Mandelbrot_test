# Install script for directory: /home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "lib")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/romain/Dropbox/Perso/Mandelbrot_test/lib/libVector.a")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/romain/Dropbox/Perso/Mandelbrot_test/lib" TYPE STATIC_LIBRARY FILES "/home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector/libVector.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "lib")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/quaternion.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/vectorf256.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/instrset.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/vectormath.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/vectori256e.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/vector3d.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/vectorclass.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/complexvec.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/cacheability.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/decimal.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/vectori128.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/vectorf128.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/vectorf256e.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/vectori256.h;/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector/VectorConfig.hpp")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/romain/Dropbox/Perso/Mandelbrot_test/include/Vector" TYPE FILE FILES
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/quaternion.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/vectorf256.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/instrset.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/vectormath.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/vectori256e.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/vector3d.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/vectorclass.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/complexvec.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/cacheability.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/decimal.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/vectori128.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/vectorf128.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/vectorf256e.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/include/vectori256.h"
    "/home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector/VectorConfig.hpp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")

