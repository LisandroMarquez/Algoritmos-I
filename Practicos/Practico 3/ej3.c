// Imports
#include <stdio.h>

// Main
int main(void) {
    //# Init Vars
    int x, y;
    
    //& Ejercicio a

    //% Required input
    printf("Ingrese x: ");
    scanf("%i", &x);

    //! Logic
    x = 5;

    //* Output
    printf("  x = %i\n", x);

    //& Ejercicio b
    
    //% Required inputs
    printf("\nIngrese x: ");
    scanf("%i", &x);

    printf("Ingrese y: ");
    scanf("%i", &y);
    
    //! Logic
    x = x + y;

    //* Output 1
    printf("  x = %i\n  y = %i\n\n",x , y);

    //! Logic
    y = y + y;

    //* Output 2
    printf("  x = %i\n  y = %i\n",x , y);

    //& Ejercicio c
    
    //% Required inputs
    printf("\nIngrese x: ");
    scanf("%i", &x);

    printf("Ingrese y: ");
    scanf("%i", &y);

    //! Logic
    y = y + y;

    //* Output 1
    printf("  x = %i\n  y = %i\n\n",x , y);

    //! Logic
    x = x + y;

    //* Output 2
    printf("  x = %i\n  y = %i",x , y);

    return 0;
}