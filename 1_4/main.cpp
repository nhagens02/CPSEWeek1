// Samen gemaakt met Kasper.
#include "hwlib.hpp"

extern "C" char toggleCase(char c);
//    if (c >= 65 && c <= 90) {
//        return c + 32;
//    }
//    else if (c >= 97 && c <= 122) {
//        return c - 32;
//    }
//    else { return c; }
//}

extern "C" void uart_put_char( char c ){
   hwlib::cout << c;
}

extern "C" void print_asciz(const char* s);


extern "C" void application();

int main( void ){	
   
   namespace target = hwlib::target;   
    
   // wait for the PC console to start
   hwlib::wait_ms( 2000 );

   application();
}