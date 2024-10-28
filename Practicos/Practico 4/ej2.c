//+ Imports
#include <stdio.h>
#include <stdbool.h>

//+ Main
int main(void)
{
    //# Init Vars
    int x, y, z, x1, y1;

    //& Ejercicio a
    //% Required inputs
    printf("Ingrese x: ");
    scanf("%i", &x);
    
    printf("Ingrese y: ");
    scanf("%i", &y);

    //! Lógica
    x1 = x;
    x = x + 1;
    y = x1 + y;
    printf("\nLógica aplicada:\nx, y := x + 1, x + y\n");

    //* Output
    printf("\nOutput:\n  x = %i\n  y = %i\n\n", x, y);

    //& Ejercicio b
    //% Required inputs
    printf("Ingrese x: ");
    scanf("%i", &x);
    
    printf("Ingrese y: ");
    scanf("%i", &y);
    
    printf("Ingrese z: ");
    scanf("%i", &z);

    //! Lógica
    x1 = x;
    y1 = y;
    x = y;
    y = y1 + x1 + z;
    z = x1 + y1;
    printf("\nLógica aplicada:\nx, y, z := y, y + x + z, y + x\n");

    //* Output
    printf("\nOutput:\n  x = %i\n  y = %i\n  z = %i\n", x, y, z);

    return 0;
}