// Imports
#include <stdio.h>

// Main
int main(void) {
    // Ejercicio a
    int x;
    printf("Ingrese x: ");
    scanf("%i", &x);
    x = 5;
    printf("  x = %i\n", x);

    // Ejercicio b
    int y;

    printf("\nIngrese x: ");
    scanf("%i", &x);

    printf("Ingrese y: ");
    scanf("%i", &y);
    
    x = x + y;

    printf("  x = %i\n  y = %i\n\n",x , y);

    y = y + y;

    printf("  x = %i\n  y = %i\n",x , y);

    // Ejercicio c
    printf("\nIngrese x: ");
    scanf("%i", &x);

    printf("Ingrese y: ");
    scanf("%i", &y);

    y = y + y;

    printf("  x = %i\n  y = %i\n\n",x , y);

    x = x + y;

    printf("  x = %i\n  y = %i",x , y);
    return 0;
}