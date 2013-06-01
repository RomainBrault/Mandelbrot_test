#ifndef MANDELBROT_HPP_INCLUDED
#define MANDELBROT_HPP_INCLUDED

#include <vectorclass.h>
#include <iostream>

#define LAZY    true
#define MAX_FPS 60
#define REAL    double


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

class Mandelbrot {
public:

    finline Mandelbrot( sf::RenderWindow & window ) :
        m_window( window ),
        m_backgound( window.GetWidth( ), window.GetHeight( ) ),
        m_sprite( m_backgound )
    {

    }

    finline ~Mandelbrot( void ) { };

    template < bool lazy = true >
    finline void Generate(
        REAL x1, REAL x2, REAL y1, REAL y2, uint32_t PRECISION, chanel & fcol
    ) {
        static REAL lx1 = 0;
        static REAL lx2 = 0;
        static REAL ly1 = 0;
        static REAL ly2 = 0;

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
        double recall = -std::log( x2 - x1 );
        recall < 1 ?
            imax = PRECISION :
            imax = static_cast< uint32_t >( recall * PRECISION );

        REAL zoom_x = img_x / ( x2 - x1 );
        REAL zoom_y = img_y / ( y2 - y1 );

#pragma omp parallel for collapse( 2 )
        for ( uint32_t y = 0; y < img_y; ++y ) {
            for ( uint32_t x = 0; x < img_x; x += 4 ) {

                Vec4d c_r( x, x + 1, x + 2, x + 3 ); c_r = c_r / zoom_x + x1;
                Vec4d c_i( y ); c_i = c_i / zoom_y + y1;

                Vec4d z_r( 0 );
                REAL  z_r_t[ 4 ];

                Vec4d z_i( 0 );
                REAL  z_i_t[ 4 ];

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
                    Vec4d tmp( z_r );
                    z_r = std::sqr( z_r ) - std::sqr( z_i ) + c_r;
                    z_i = 2 * z_i * tmp + c_i;
                    Vec4q go_on( std::norm( z_r, z_i ) < 4 );
                    go_on = -go_on;
                    iter += go_on;
                    go_on.store( go_on_t );
                }

                iter.store( iter_t );
                z_i.store( z_i_t );
                z_r.store( z_r_t );
                for ( uint32_t i = 0; i < 4; ++i ) {
                    if ( iter_t[ i ] == imax ) {
                        m_backgound.SetPixel(
                            x + i, y,
                            sf::Color( 0, 0, 0 )
                        );
                    } else {
                        REAL ismooth = 255 *
                            static_cast< REAL >( iter_t[ i ] ) / imax;
                        m_backgound.SetPixel(
                            x + i, y,
                            sf::Color(
                                fcol.r * ismooth,
                                fcol.g * ismooth,
                                fcol.b * ismooth
                            )
                        );
                    }
                }
            }
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