MESSAGE(STATUS ${COMPILER_INFORMATION})
IF(${CMAKE_C_COMPILER} MATCHES icc)
    SET(CXX_COMPILER "INTEL_C_COMPILER")
    SET(CMAKE_CC_FLAGS "-Wall"                   CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CC_FLAGS_DEBUG "-O0 -g"            CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CC_FLAGS_MINSIZEREL "-Os -DNDEBUG" CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CC_FLAGS_RELEASE "-O3 -DNDEBUG"    CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CC_FLAGS_RELWITHDEBINFO "-O2 -g"   CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
ELSEIF(${CMAKE_C_COMPILER} MATCHES gcc)
    SET(CXX_COMPILER "GNU_C_COMPILER")
    SET(CMAKE_CC_FLAGS "-Wall"                   CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CC_FLAGS_DEBUG "-O0 -g"            CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CC_FLAGS_MINSIZEREL "-Os -DNDEBUG" CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CC_FLAGS_RELEASE "-O3 -DNDEBUG"    CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CC_FLAGS_RELWITHDEBINFO "-O2 -g"   CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
ENDIF()
IF(${CMAKE_CXX_COMPILER} MATCHES icpc)
    SET(CXX_COMPILER "INTEL_CXX_COMPILER")
    SET(CMAKE_CXX_FLAGS "-g -fpic -Wcheck -Werror -Wall -fno-common -std=c++11 -fno-gnu-keywords"
                                                  CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CXX_FLAGS_DEBUG "-O0 -g"            CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CXX_FLAGS_MINSIZEREL "-Os -DNDEBUG" CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CXX_FLAGS_RELEASE "-Ofast -DNDEBUG" CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g"   CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
ELSEIF(${CMAKE_CXX_COMPILER} MATCHES g\\+\\+)
    SET(CXX_COMPILER "GNU_CXX_COMPILER")
    SET(CMAKE_CXX_FLAGS "-g -fpic -Wall -fno-common -Wshadow -Wextra -pedantic -std=c++11 -save-temps"
                                                  CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CXX_FLAGS_DEBUG "-O0 -g"            CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CXX_FLAGS_MINSIZEREL "-Os -DNDEBUG" CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CXX_FLAGS_RELEASE "-Ofast -flto -DNDEBUG" CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
    SET(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g"   CACHE STRING
        ${CMAKE_FLAGS_HELP} FORCE)
ENDIF()

IF((${CMAKE_CXX_COMPILER} MATCHES icpc) OR (${CMAKE_C_COMPILER} MATCHES icc))
# Intel(R) Compiler has its own library archiver,
# if you build libraries and do not use xiar,
# the Intel compiler will complain about invalid
# archives at the link phase.

FIND_PROGRAM(XIAR xiar)
IF(XIAR)
  SET(CMAKE_AR "${XIAR}")
ENDIF(XIAR)
MARK_AS_ADVANCED(XIAR)

# Intel(R) Compiler also comes with its own linker
# which provides a number of additional benefits when
# linking code compiled with the Intel(R) compiler.

FIND_PROGRAM(XILD xild)
IF(XILD)
  SET(CMAKE_LINKER "${XILD}")
ENDIF(XILD)
MARK_AS_ADVANCED(XILD)

ENDIF()