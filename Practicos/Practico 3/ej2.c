// Imports
#include <stdio.h>
#include <string.h>

// Main
int main(void) {
    /* Debugging Utilizá GDB o printf como ayuda y encontrá valores para las variables que forman el estado:
        (x → ⬜ , y → ⬜, z → ⬜, b → ⬜, w → ⬜)
    de manera que las siguientes expresiones tengan el valor indicado:
        x % 4 == 0                      | True
        x + y == 0 && y - x == (-1) * z | True
        not b && w                      | False
    */

   // Define vars
   int x = 4, y = -4,z = 8;
   _Bool b = 1,  w = 1;
   char aux1[6], aux2[6], aux3[6]; 

   // Auxiliar
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

    if (!b && w) {
        strcpy(aux3, "True");
    } else {
        strcpy(aux3, "False");
    }

    // Outputs
    printf("Para cumplir que todas esas condiciones, las variables deben tener los siguientes valores:\n");
    printf("  x = 4\n");
    printf("  y = -4\n");
    printf("  z = 8\n");
    printf("  b = True\n");
    printf("  w = True\n");
    printf("Expresiones solicitadas:\n  x mod 4 == 0 = %s\n", aux1 );
    printf("  x + y == 0 && y - x == (-1) * z = %s\n", aux2 );
    printf("  not b && w = %s\n", aux3 );
}