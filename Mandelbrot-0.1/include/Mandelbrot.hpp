#ifndef MANDELBROT_HPP_INCLUDED
#define MANDELBROT_HPP_INCLUDED

#include <vectorclass.h>
#include <iostream>

#define LAZY    true
#define MAX_FPS 60
#define REAL    double


template < typename T >
static finline constexpr T sqr( T x ) {
    return x * x;
}

template < typename T >
static finline T module( T r, T i ) {
    return sqr( r ) + sqr( i );
}

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
        REAL x1, REAL x2, REAL y1, REAL y2, uint32_t PRECISION
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
        if ( -std::log( x2 - x1 ) < 2.8 ) {
            imax = PRECISION;
        } else {
            imax = static_cast< uint32_t >(
                std::log( -std::log( x2 - x1 ) ) * PRECISION
            );
        }

        REAL zoom_x = img_x / ( x2 - x1 );
        REAL zoom_y = img_y / ( y2 - y1 );

#pragma omp parallel for collapse( 2 )
        for ( uint32_t x = 0; x < img_x; ++x ) {
            for ( uint32_t y = 0; y < img_y; ++y ) {

                REAL c_r = x / zoom_x + x1;
                REAL c_i = y / zoom_y + y1;

                REAL z_r = 0;
                REAL z_i = 0;

                uint32_t i;
                for (
                    i = 0;
                    ( i < imax ) && ( module( z_r, z_i ) < 4 );
                    ++i
                ) {
                    REAL tmp = z_r;
                    z_r = sqr( z_r ) - sqr( z_i ) + c_r;
                    z_i = 2 * z_i * tmp + c_i;
                }

                if ( i == imax ) {
                    m_backgound.SetPixel(
                        x, y,
                        sf::Color( 0, 0, 0 )
                    );
                } else {
                    REAL ismooth = static_cast< REAL >( i );
                    m_backgound.SetPixel(
                        x, y,
                        sf::Color(
                            static_cast< uint64_t >( ismooth * 3 ) % 255,
                            static_cast< uint64_t >( ismooth * 5 ) % 255,
                            static_cast< uint64_t >( ismooth * 7 ) % 255
                        )
                    );
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