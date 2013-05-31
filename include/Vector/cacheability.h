#ifndef CACHEABILITY_H
#define CACHEABILITY_H

#include <instrset.h>        // Select supported instruction set

namespace cpu {

static finline void
pause( void )
{
#if INSTRSET >= 2
    _mm_pause( );
#endif
}

template < typename T >
static finline void
clflush( const T* p )
{
#if INSTRSET >= 2
    _mm_clflush( reinterpret_cast< const void * >( p ) );
#endif
}

static finline void
lfence( void )
{
#if INSTRSET >= 2
    _mm_lfence( );
#endif
}

static finline void
mfence( void )
{
#if INSTRSET >= 2
    _mm_mfence( );
#endif
}

static finline void
sfence( void )
{
#if INSTRSET >= 1
    _mm_sfence( );
#endif
}

enum class CACHE_HINT : int {
    PREFETCH_L0  = _MM_HINT_T0,
    PREFETCH_L1  = _MM_HINT_T1,
    PREFETCH_L2  = _MM_HINT_T2,
    PREFETCH_NTA = _MM_HINT_NTA
};

template< typename T >
static finline void
prefetch( const T* p, CACHE_HINT sel )
{
#if INSTRSET >= 1
    _mm_prefetch(
      reinterpret_cast< const char * >( p ), static_cast< int >( sel )
    );
#endif
}

} // namespace cpu

#endif // CACHEABILITY_H