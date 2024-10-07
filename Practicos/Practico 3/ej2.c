// Imports
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

// Main
int main(void) {
    /* Debugging Utilizá GDB o printf como ayuda y encontrá valores para las variables que forman el estado:
        (x → ⬜ , y → ⬜, z → ⬜, b → ⬜, w → ⬜)
    de manera que las siguientes expresiones tengan el valor indicado:
        x % 4 == 0                      | True
        x + y == 0 && y - x == (-1) * z | True
        not b && w                      | False
    */

   //# Init Vars
   int x, y, z, temp;
   bool b, w;
   char aux1[6], aux2[6], aux3[6];
   //? Solution: x = 4, y = -4, z = 8, b = False (0), w = False (0);

    printf("Ingrese x: ");
    scanf("%i", &x);
    printf("Ingrese y: ");
    scanf("%i", &y);
    printf("Ingrese z: ");
    scanf("%i", &z);
    printf("Ingrese b (1 → True, 0 → False): ");
    scanf("%d", &temp); //! No se puede asignar nada con imputs a las variables tipo bool
    b = temp;
    printf("Ingrese w (1 → True, 0 → False): ");
    scanf("%d", &temp); //! No se puede asignar nada con imputs a las variables tipo bool
    w = temp;

   //% Auxiliar
   if (x % 4 == 0) {
        strcpy(aux1, "True");
   } else {
        strcpy(aux1, "False");
   }

   if ( (x + y == 0) && (y - x == (-1) * z) ) {
        strcpy(aux2, "True");
    } else {
        strcpy(aux2, "False");
    }

    if ((b /= 1) && (w == 1)) {
        strcpy(aux3, "True");
    } else {
        strcpy(aux3, "False");
    }

    //* Outputs
    printf("\nVariables asignadas:\n");
    printf("  x = %i\n", x);
    printf("  y = %i\n", y);
    printf("  z = %i\n", z);
    printf("  b = %i\n", b);
    printf("  w = %i\n", w);
    printf("Expresiones solicitadas:\n  x mod 4 == 0 = %s\n", aux1 );
    printf("  x + y == 0 && y - x == (-1) * z = %s\n", aux2 );
    printf("  not b && w = %s\n", aux3 );
}