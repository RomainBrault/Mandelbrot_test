#include <SFML/Graphics.hpp>
#include <Mandelbrot.hpp>
#include <string>

int main( int argc, char* argv[] ) {

    if ( argc < 4 ) {
        std::cerr << "usage: " << argv[0]
                  << " <width> <height> <precision> [chanels]" << std::endl;
        return -1;
    }

    uint32_t width     = std::atoi( argv[ 1 ] );
    uint32_t height    = std::atoi( argv[ 2 ] );
    uint32_t precision = std::atoi( argv[ 3 ] );

    chanel fcol;

    if ( argc == 5 ) {
        std::string col = std::string( argv[ 4 ] );
        if ( col.find( 'r' ) == std::string::npos ) fcol.r = 0;
        else fcol.r = 1;
        if ( col.find( 'g' ) == std::string::npos ) fcol.g = 0;
        else fcol.g = 1;
        if ( col.find( 'b' ) == std::string::npos ) fcol.b = 0;
        else fcol.b = 1;
    }
    else {
        fcol.r = 1;
        fcol.g = 0;
        fcol.b = 0;
    }

    sf::RenderWindow App( sf::VideoMode( width, height, 32 ), "Mandelbrot" );
    App.UseVerticalSync( true );
    App.Window::SetFramerateLimit( MAX_FPS );

    const sf::Input &input = App.GetInput( );

    Mandelbrot mandel( App );
    sf::Clock clock;

    REAL scale =
        ( 600   / static_cast< REAL >( 800    ) ) *
        ( width / static_cast< REAL >( height ) );

    REAL x1 = static_cast< REAL >( -2.1 ) * scale;
    REAL x2 = static_cast< REAL >(  0.6 ) * scale;
    REAL y1 = static_cast< REAL >( -1.2 );
    REAL y2 = static_cast< REAL >(  1.2 );

    bool drag_on_l  = false;
    REAL mp_org_x_l = 0;
    REAL mp_org_y_l = 0;

    bool drag_on_r  = false;
    REAL mp_org_y_r = 0;

    while ( App.IsOpened( ) ) {
        sf::Event Event;

        while ( App.GetEvent( Event ) ) {
            // Window closed
            if ( Event.Type == sf::Event::Closed )
                App.Close( );

            // Escape key pressed
            if (
                ( Event.Type == sf::Event::KeyPressed ) &&
                ( Event.Key.Code == sf::Key::Escape )
            ) {
                App.Close();
            }

            if (
                ( drag_on_l == false ) &&
                ( Event.Type == sf::Event::MouseButtonPressed )
            ) {
                if ( Event.MouseButton.Button == sf::Mouse::Left ) {
                    mp_org_x_l = static_cast< REAL >( input.GetMouseX( ) );
                    mp_org_y_l = static_cast< REAL >( input.GetMouseY( ) );
                    drag_on_l  = true;
                }
            }

            if (
                ( drag_on_l == true ) &&
                ( Event.Type == sf::Event::MouseButtonReleased )
            ) {
                if ( Event.MouseButton.Button == sf::Mouse::Left ) {
                    drag_on_l = false;
                }
            }

            if (
                ( drag_on_r == false ) &&
                ( Event.Type == sf::Event::MouseButtonPressed )
            ) {
                if ( Event.MouseButton.Button == sf::Mouse::Right ) {
                    mp_org_y_r = static_cast< REAL >( input.GetMouseY( ) );
                    drag_on_r  = true;
                }
            }

            if (
                ( drag_on_r == true ) &&
                ( Event.Type == sf::Event::MouseButtonReleased )
            ) {
                if ( Event.MouseButton.Button == sf::Mouse::Right ) {
                    drag_on_r = false;
                }
            }
        }

        if ( drag_on_l == true ) {
            REAL dep_x =
                ( x2 - x1 ) * ( input.GetMouseX( ) - mp_org_x_l ) / 5000.f;
            REAL dep_y =
                ( x2 - x1 ) * ( input.GetMouseY( ) - mp_org_y_l ) / 5000.f;
            x1 += dep_x;
            x2 += dep_x;
            y1 += dep_y;
            y2 += dep_y;
        }

        if ( drag_on_r == true ) {
            REAL dep = 1 - (
                1 / ( 1 - ( ( input.GetMouseY( ) - mp_org_y_r ) / 5000.f ) )
            );
            x1 += ( x2 - x1 ) * dep;
            x2 -= ( x2 - x1 ) * dep;
            y1 += ( y2 - y1 ) * dep;
            y2 -= ( y2 - y1 ) * dep;
        }

        mandel.Generate< LAZY >( x1, x2, y1, y2, precision, fcol );
        mandel.Draw( );

        float framerate =
            1 / ( clock.GetElapsedTime( ) );
        clock.Reset( );

        sf::String FPS( std::to_string( framerate ) );
        FPS.SetColor( sf::Color( 255, 255, 255 ) );
        FPS.SetPosition( 10.f, 10.f );

        App.Draw( FPS );
        App.Display( );
    }

    return 0;
}