//+ Imports
#include <stdio.h>
#include <stdbool.h>

//+ Main
int main(void)
{
    //# Init Var
    int x, y, i;
    bool res;

    //& Ejercicio a
    //% Required inputs
    printf("Ingrese x (x -> 13): ");
    scanf("%i", &x);
    
    printf("Ingrese y (y -> 3): ");
    scanf("%i", &y);
    
    printf("Ingrese i (i -> 0): ");
    scanf("%i", &i);

    //! Lógica
    i = 0;

    //? Uso del while
    while (x >= y)
    {
        //! Lógica
        x = x - y;
        i++; // i = i + 1

        //* Output
        printf("\nOutput:\n  x = %i\n  y = %i\n  i = %i\n\n",x , y, i);
    }

    //& Ejercicio b
    //% Required inputs
    printf("Ingrese x (x -> 5): ");
    scanf("%i", &x);
    
    printf("Ingrese i (i -> 0): ");
    scanf("%i", &i);
    
    printf("Ingrese res (res -> false): ");
    scanf("%i", &res);

    //! Lógica
    i = 2;
    res = true;

    //? Uso del while
    while (i < x && res)
    {
        //! Lógica
        res = res && (x % i != 0);
        i++; // i = i + 1

        //* Output
        printf("\nOutput:\n  x = %i\n  i = %i\n  res = %i\n\n",x , i, res);
    }

    return 0;
}