#ifndef MANDELBROT_HPP_INCLUDED
#define MANDELBROT_HPP_INCLUDED

#include <vectorclass.h>
#include <iostream>
#include <tbb/parallel_for.h>
#include <tbb/blocked_range.h>

#define LAZY    true
#define MAX_FPS 60

typedef struct chanel {
    uint32_t r;
    uint32_t g;
    uint32_t b;
} chanel;

namespace std {

template < typename T >
static finline constexpr T sqr( const T & x ) {
    return x * x;
}

template < typename T >
static finline constexpr T norm( const T & r, const T & i ) {
    return std::sqr( r ) + std::sqr( i );
}

} // namespace std





class ker_double_sse {
public:
    ker_double_sse(
        uint32_t a_img_x,
        double a_x1, double a_y1,
        uint32_t a_imax,
        double a_zoom_x, double a_zoom_y,
        chanel const & a_fcol,
        sf::Image & a_background
    ) :
        img_x( a_img_x ), x1( a_x1 ), y1( a_y1 ), imax( a_imax ),
        zoom_x( a_zoom_x ), zoom_y( a_zoom_y ), fcol( a_fcol ),
        m_backgound( a_background ), tstart( 4 * ( a_img_x / 4 ) )
    { };
    ~ker_double_sse( void )
    { };

    void operator( ) ( const tbb::blocked_range< uint32_t > & range ) const {
        for ( uint32_t y = range.begin( ); y < range.end( ); ++y ) {

            Vec4d c_i( y );
            c_i = c_i / zoom_y + y1;
            double c_i_s = y / zoom_y + y1;

            for ( uint32_t x = 0; x < tstart; x += 4 ) {

                Vec4d c_r( x, x + 1, x + 2, x + 3 );
                c_r = c_r / zoom_x + x1;

                Vec4d  z_r( 0 );
                Vec4d  z_i( 0 );

                Vec4q    iter( 0 );
                uint64_t iter_t[ 4 ];

                uint64_t go_on_t[ 4 ] = { 1, 1, 1, 1 };

                for (
                    uint32_t i = 0;
                    ( i < imax ) &&
                    ( go_on_t[ 0 ] || go_on_t[ 1 ] ||
                      go_on_t[ 2 ] || go_on_t[ 3 ] );
                    ++i
                ) {
                    Vec4q go_on = ( std::norm( z_r, z_i ) < 4 );
                    iter += -go_on;
                    go_on.store_a( go_on_t );
                    Vec4d const p_z_r( z_r );
                    z_r = std::sqr( z_r ) - std::sqr( z_i ) + c_r;
                    z_i = z_i * p_z_r; z_i += z_i + c_i;
                }

                iter.store_a( iter_t );
                double z_i_t[ 4 ]; z_i.store_a( z_i_t );
                double z_r_t[ 4 ]; z_r.store_a( z_r_t );
                for ( uint32_t i = 0; i < 4; ++i ) {
                    if ( iter_t[ i ] == imax ) {
                        m_backgound.SetPixel(
                            x + i, y,
                            sf::Color( 0, 0, 0 )
                        );
                    } else {
                        double ismooth = 255 * static_cast< float >( iter_t[ i ] ) / imax;
                        if ( ismooth < 128 ) {
                            m_backgound.SetPixel(
                                x + i, y,
                                sf::Color(
                                    fcol.r * ismooth * 2,
                                    fcol.g * ismooth * 2,
                                    fcol.b * ismooth * 2
                                )
                            );
                        } else {
                            m_backgound.SetPixel(
                                x + i, y,
                                sf::Color(
                                    255 - ( 1 - fcol.r ) * ( 128 - ismooth ) * 2,
                                    255 - ( 1 - fcol.g ) * ( 128 - ismooth ) * 2,
                                    255 - ( 1 - fcol.b ) * ( 128 - ismooth ) * 2
                                )
                            );
                        }
                    }
                }
            }
            for ( uint32_t x = tstart; x < img_x; ++x ) {
                double c_r = x / zoom_x + x1;
                double z_r = 0;
                double z_i = 0;
                uint32_t i;
                for (
                    i = 0; ( i < imax ) && ( std::norm( z_r, z_i ) < 4 ); ++i
                ) {
                    double tmp( z_r );
                    z_r = std::sqr( z_r ) - std::sqr( z_i ) + c_r;
                    z_i = 2 * z_i * tmp + c_i_s;
                }
                if ( i == imax ) {
                    m_backgound.SetPixel(
                        x, y,
                        sf::Color( 0, 0, 0 )
                    );
                } else {
                    double ismooth = 255 *
                        static_cast< double >( i ) / imax;
                    if ( ismooth < 128 ) {
                        m_backgound.SetPixel(
                            x + i, y,
                            sf::Color(
                                fcol.r * ismooth * 2,
                                fcol.g * ismooth * 2,
                                fcol.b * ismooth * 2
                            )
                        );
                    } else {
                        m_backgound.SetPixel(
                            x + i, y,
                            sf::Color(
                                255 - ( 1 - fcol.r ) * ( 128 - ismooth ) * 2,
                                255 - ( 1 - fcol.g ) * ( 128 - ismooth ) * 2,
                                255 - ( 1 - fcol.b ) * ( 128 - ismooth ) * 2
                            )
                        );
                    }
                }
            }
        }
    }

private:
    uint32_t const img_x;
    double const x1;
    double const y1;
    uint32_t const imax;
    double const zoom_x;
    double const zoom_y;
    chanel const & fcol;
    sf::Image & m_backgound;
    uint32_t const tstart;
};

class ker_float_sse {
public:
    ker_float_sse(
        uint32_t a_img_x,
        float a_x1, float a_y1,
        uint32_t a_imax,
        float a_zoom_x, float a_zoom_y,
        chanel const & a_fcol,
        sf::Image & a_background
    ) :
        img_x( a_img_x ), x1( a_x1 ), y1( a_y1 ), imax( a_imax ),
        zoom_x( a_zoom_x ), zoom_y( a_zoom_y ), fcol( a_fcol ),
        m_backgound( a_background )
    { };
    ~ker_float_sse( void )
    { };

    void operator( ) ( const tbb::blocked_range< uint32_t > & range ) const {
        uint32_t tstart = 8 * ( img_x / 8 );
        for ( uint32_t y = range.begin( ); y < range.end( ); ++y ) {

            Vec8f c_i( y );
            c_i = c_i / zoom_y + y1;
            float const c_i_s = y / zoom_y + y1;

            for ( uint32_t x = 0; x < tstart; x += 8 ) {

                Vec8f c_r( x, x + 1, x + 2, x + 3, x + 4, x + 5, x + 6, x + 7 );
                c_r = c_r / zoom_x + x1;

                Vec8f z_r( 0 );
                Vec8f z_i( 0 );

                Vec8i    iter( 0 );
                uint32_t iter_t[ 8 ];

                uint32_t go_on_t[ 8 ] = { 1, 1, 1, 1, 1, 1, 1, 1 };

                for (
                    uint32_t i = 0;
                    ( i < imax ) &&
                    ( go_on_t[ 0 ] || go_on_t[ 1 ] ||
                      go_on_t[ 2 ] || go_on_t[ 3 ] ||
                      go_on_t[ 4 ] || go_on_t[ 5 ] ||
                      go_on_t[ 6 ] || go_on_t[ 7 ] );
                    ++i
                ) {
                    Vec8i go_on = ( std::norm( z_r, z_i ) < 4 );
                    iter += -go_on;
                    go_on.store_a( go_on_t );
                    Vec8f const p_z_r( z_r );
                    z_r = std::sqr( z_r ) - std::sqr( z_i ) + c_r;
                    z_i = z_i * p_z_r;  z_i += z_i + c_i;
                }

                iter.store_a( iter_t );
                float z_i_t[ 8 ]; z_i.store_a( z_i_t );
                float z_r_t[ 8 ]; z_r.store_a( z_r_t );
                for ( uint32_t i = 0; i < 8; ++i ) {
                    if ( iter_t[ i ] == imax ) {
                        m_backgound.SetPixel(
                            x + i, y,
                            sf::Color( 0, 0, 0 )
                        );
                    } else {
                        float ismooth = 255 * static_cast< float >( iter_t[ i ] ) / imax;
                        if ( ismooth < 128 ) {
                            m_backgound.SetPixel(
                                x + i, y,
                                sf::Color(
                                    fcol.r * ismooth * 2,
                                    fcol.g * ismooth * 2,
                                    fcol.b * ismooth * 2
                                )
                            );
                        } else {
                            m_backgound.SetPixel(
                                x + i, y,
                                sf::Color(
                                    255 - ( 1 - fcol.r ) * ( 128 - ismooth ) * 2,
                                    255 - ( 1 - fcol.g ) * ( 128 - ismooth ) * 2,
                                    255 - ( 1 - fcol.b ) * ( 128 - ismooth ) * 2
                                )
                            );
                        }
                    }
                }
            }
            for ( uint32_t x = tstart; x < img_x; ++x ) {
                float const c_r = x / zoom_x + x1;
                float z_r = 0;
                float z_i = 0;
                uint32_t i;
                for (
                    i = 0; ( i < imax ) && ( std::norm( z_r, z_i ) < 4 ); ++i
                ) {
                    float const tmp( z_r );
                    z_r = std::sqr( z_r ) - std::sqr( z_i ) + c_r;
                    z_i = 2 * z_i * tmp + c_i_s;
                }
                if ( i == imax ) {
                    m_backgound.SetPixel(
                        x, y,
                        sf::Color( 0, 0, 0 )
                    );
                } else {
                    float ismooth = 255 * static_cast< float >( i ) / imax;
                    if ( ismooth < 128 ) {
                        m_backgound.SetPixel(
                            x + i, y,
                            sf::Color(
                                fcol.r * ismooth * 2,
                                fcol.g * ismooth * 2,
                                fcol.b * ismooth * 2
                            )
                        );
                    } else {
                        m_backgound.SetPixel(
                            x + i, y,
                            sf::Color(
                                255 - ( 1 - fcol.r ) * ( 128 - ismooth ) * 2,
                                255 - ( 1 - fcol.g ) * ( 128 - ismooth ) * 2,
                                255 - ( 1 - fcol.b ) * ( 128 - ismooth ) * 2
                            )
                        );
                    }
                }
            }
        }
    }

private:
    uint32_t const img_x;
    float const x1;
    float const y1;
    uint32_t const imax;
    float const zoom_x;
    float const zoom_y;
    chanel const & fcol;
    sf::Image & m_backgound;
};

class ker_double {
public:
    ker_double(
        uint32_t a_img_x,
        double a_x1, double a_y1,
        uint32_t a_imax,
        double a_zoom_x, double a_zoom_y,
        chanel const & a_fcol,
        sf::Image & a_background
    ) :
        img_x( a_img_x ), x1( a_x1 ), y1( a_y1 ), imax( a_imax ),
        zoom_x( a_zoom_x ), zoom_y( a_zoom_y ), fcol( a_fcol ),
        m_backgound( a_background )
    { };
    ~ker_double( void )
    { };

    void operator( ) ( const tbb::blocked_range< uint32_t > & range ) const {
        for ( uint32_t y = range.begin( ); y < range.end( ); ++y ) {
            double const c_i = y / zoom_y + y1;
            for ( uint32_t x = 0; x < img_x; ++x ) {
                double const c_r = x / zoom_x + x1;
                double z_r = 0;
                double z_i = 0;
                uint32_t i;
                for (
                    i = 0; ( i < imax ) && ( std::norm( z_r, z_i ) < 4 ); ++i
                ) {
                    double const tmp( z_r );
                    z_r = std::sqr( z_r ) - std::sqr( z_i ) + c_r;
                    z_i = 2 * z_i * tmp + c_i;
                }
                if ( i == imax ) {
                    m_backgound.SetPixel(
                        x, y,
                        sf::Color( 0, 0, 0 )
                    );
                } else {
                    double ismooth = 255 * static_cast< float >( i ) / imax;
                    if ( ismooth < 128 ) {
                        m_backgound.SetPixel(
                            x, y,
                            sf::Color(
                                fcol.r * ismooth * 2,
                                fcol.g * ismooth * 2,
                                fcol.b * ismooth * 2
                            )
                        );
                    } else {
                        m_backgound.SetPixel(
                            x, y,
                            sf::Color(
                                255 - ( 1 - fcol.r ) * ( 128 - ismooth ) * 2,
                                255 - ( 1 - fcol.g ) * ( 128 - ismooth ) * 2,
                                255 - ( 1 - fcol.b ) * ( 128 - ismooth ) * 2
                            )
                        );
                    }
                }
            }
        }
    }

private:
    uint32_t const img_x;
    double const x1;
    double const y1;
    uint32_t const imax;
    double const zoom_x;
    double const zoom_y;
    chanel const & fcol;
    sf::Image & m_backgound;
};

class ker_float {
public:
    ker_float(
        uint32_t a_img_x,
        float a_x1, float a_y1,
        uint32_t a_imax,
        float a_zoom_x, float a_zoom_y,
        chanel const & a_fcol,
        sf::Image & a_background
    ) :
        img_x( a_img_x ), x1( a_x1 ), y1( a_y1 ), imax( a_imax ),
        zoom_x( a_zoom_x ), zoom_y( a_zoom_y ), fcol( a_fcol ),
        m_backgound( a_background )
    { };
    ~ker_float( void )
    { };

    void operator( ) ( const tbb::blocked_range< uint32_t > & range ) const {
        for ( uint32_t y = range.begin( ); y < range.end( ); ++y ) {
            float const c_i = y / zoom_y + y1;
            for ( uint32_t x = 0; x < img_x; ++x ) {
                float const c_r = x / zoom_x + x1;
                float z_r = 0;
                float z_i = 0;
                uint32_t i;
                for (
                    i = 0; ( i < imax ) && ( std::norm( z_r, z_i ) < 4 ); ++i
                ) {
                    float const tmp( z_r );
                    z_r = std::sqr( z_r ) - std::sqr( z_i ) + c_r;
                    z_i = 2 * z_i * tmp + c_i;
                }
                if ( i == imax ) {
                    m_backgound.SetPixel(
                        x, y,
                        sf::Color( 0, 0, 0 )
                    );
                } else {
                    float ismooth = 255 * static_cast< float >( i ) / imax;
                    if ( ismooth < 128 ) {
                        m_backgound.SetPixel(
                            x, y,
                            sf::Color(
                                fcol.r * ismooth * 2,
                                fcol.g * ismooth * 2,
                                fcol.b * ismooth * 2
                            )
                        );
                    } else {
                        m_backgound.SetPixel(
                            x, y,
                            sf::Color(
                                255 - ( 1 - fcol.r ) * ( 128 - ismooth ) * 2,
                                255 - ( 1 - fcol.g ) * ( 128 - ismooth ) * 2,
                                255 - ( 1 - fcol.b ) * ( 128 - ismooth ) * 2
                            )
                        );
                    }
                }
            }
        }
    }

private:
    uint32_t const img_x;
    float const x1;
    float const y1;
    uint32_t const imax;
    float const zoom_x;
    float const zoom_y;
    chanel const & fcol;
    sf::Image & m_backgound;
};






class Mandelbrot {
public:

    finline Mandelbrot( sf::RenderWindow & window ) :
        m_window( window ),
        m_backgound( window.GetWidth( ), window.GetHeight( ) ),
        m_sprite( m_backgound )
    {

    }

    finline ~Mandelbrot( void ) { };

    template < bool lazy = true, typename KERNEL, typename T >
    finline void Generate(
        T x1, T x2, T y1, T y2,
        uint32_t PRECISION, chanel & fcol,
        bool optimize
    ) {
        static T lx1 = 0;
        static T lx2 = 0;
        static T ly1 = 0;
        static T ly2 = 0;

        if ( lazy == true ) {
            if (
                ( lx1 == x1 ) && ( lx2 == x2 ) &&
                ( ly1 == y1 ) && ( ly2 == y2 )
            ) {
                return;
            }
        }

        uint32_t img_x = m_backgound.GetWidth( );
        uint32_t img_y = m_backgound.GetHeight( );
        uint32_t imax;
        T recall = -std::log( x2 - x1 );
        ( recall < 2.8 ) ?
            imax = PRECISION :
            imax = static_cast< uint32_t >( std::log( recall ) * PRECISION );

        T zoom_x = img_x / ( x2 - x1 );
        T zoom_y = img_y / ( y2 - y1 );

        KERNEL kernel(
            img_x,
            x1, y1, imax,
            zoom_x, zoom_y,
            fcol, m_backgound
        );

        tbb::affinity_partitioner ap;
        if ( optimize ) {
            tbb::parallel_for(
                tbb::blocked_range< uint32_t >( 0, img_y ), kernel, ap
            );
        } else {
            kernel( tbb::blocked_range< uint32_t >( 0, img_y ) );
        }

        if ( lazy == true ) {
            lx1 = x1;
            lx2 = x2;
            ly1 = y1;
            ly2 = y2;
        }
    }

    finline void Draw( void )
    {
        m_window.Draw( m_sprite );
    }

private:

    sf::RenderWindow & m_window;
    sf::Image          m_backgound;
    sf::Sprite         m_sprite;
};

#endif