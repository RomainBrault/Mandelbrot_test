#include <SFML/Window.hpp>
#include <Mandelbrot.hpp>

static inline void generateMandelbrot( ) {

}


int main( void ) {

    sf::Window App( sf::VideoMode( 800, 600, 32 ), "SFML Window" );

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
        }

        App.Display( );
    }

    return 0;
}