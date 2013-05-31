	/* the configured options and settings for VECTOR --------- */
#ifndef VECTOR_CONFIG_HPP_INCLUDED
#define VECTOR_CONFIG_HPP_INCLUDED

	/* Version. ------------------------------------------------- */
#define VECTOR_MAJOR_VERSION 
#define VECTOR_MINOR_VERSION 
#define VECTOR_PATCH_VERSION 

	/* Endianess. ----------------------------------------------- */
#define VECTOR_ENDIANNESS    0
#define VECTOR_BIG_ENDIAN    1
#define VECTOR_LITTLE_ENDIAN 0

	/* Compiler. ------------------------------------------------ */
/* #undef C_COMPILER */
/* #undef CXX_COMPILER */

	/* Operating System. ---------------------------------------- */
/* #undef PLATFORM_UNIX */
/* #undef PLATFORM_WIN32 */

/* #undef ARCHx86_32 */
#define ARCHx86_64

#define L1_DCACHE_SIZE 2768
#define L2_CACHE_SIZE  262144
#define L3_CACHE_SIZE  8388608
#define L1_L2_DCACHE_SIZE L2_CACHE_SIZE + L1_DCACHE_SIZE
#define L1_L2_L3_DCACHE_SIZE L1_L2_DCACHE_SIZE + L3_CACHE_SIZE

#if defined(__clang__)
    /* Clang/LLVM. ---------------------------------------------- */

#elif defined(__ICC) || defined(__INTEL_COMPILER)
    /* Intel ICC/ICPC. ------------------------------------------ */
#define finline __forceinline
#elif defined(__GNUC__) || defined(__GNUG__)
    /* GNU GCC/G++. --------------------------------------------- */
#pragma GCC diagnostic ignored "-Wattributes"
#pragma GCC diagnostic ignored "-Wunused-function"
#define finline __attribute__((always_inline))
#elif defined(__HP_cc) || defined(__HP_aCC)
    /* Hewlett-Packard C/aC++. ---------------------------------- */

#elif defined(__IBMC__) || defined(__IBMCPP__)
    /* IBM XL C/C++. -------------------------------------------- */

#elif defined(_MSC_VER)
    /* Microsoft Visual Studio. --------------------------------- */

#elif defined(__PGI)
    /* Portland Group PGCC/PGCPP. ------------------------------- */

#elif defined(__SUNPRO_C) || defined(__SUNPRO_CC)
    /* Oracle Solaris Studio. ----------------------------------- */

#endif

#endif
