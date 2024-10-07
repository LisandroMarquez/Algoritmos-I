// Imports
#include <stdio.h>

// Main
int main(void) {
    // Define variables
    int x = 7;
    int y = 3;
    int z = 5;
    int res1 = x + y + 1;
    int res2 = z * z + y * 45 - 15 * x;
    float aux1 = y - 2;
    int aux2 = (x * 3 + 1) % 5;     // Cambio a tipo entero
    _Bool res3 = (aux1 == aux2);     // Comparación entre float e int
    float res4 = (float)y / 2 * x;  // Forzar división flotante
    _Bool res5 = (y < x * z);

    // Show outputs
    printf("Variables:\n  x = 7\n  y = 3\n  z = 5\n");
    printf("Resultados:\n  [ x + y + 1 ] es %i\n", res1);
    printf("  [ z * z + y * 45 - 15 * x ] es %i\n", res2);
    printf("  [ (y - 2) == (x * 3 + 1) mod 5 ] es %i\n", res3);
    printf("  [ y / 2 * x ] es %f\n", res4);
    printf("  [ (y < x * z) ] es %i\n", res5);

    return 0;
}