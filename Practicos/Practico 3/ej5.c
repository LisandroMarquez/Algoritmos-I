//+ Imports
#include <stdio.h>

//+ Main
int main(void)
{
    //# Init Vars
    int x, y;

    //& Ejercicio a, b y c (Son iguales la lógica, distintos los inputs)
    
    //% Required inputs
    printf("Ingrese x: ");
    scanf("%i", &x);
    
    printf("Ingrese y: ");
    scanf("%i", &y);

    //? Uso del if
    if (x >= y) {
        //* Output 1
        printf("  x = %i\n  y = %i\n\n",x , y);
        x = 0;
        //* Output 2
        printf("  x = %i\n  y = %i\n\n",x , y);
    } else if (x <= y) {
        //* Output 1'
        printf("  x = %i\n  y = %i\n\n",x , y);
        x = 2;
        //* Output 2'
        printf("  x = %i\n  y = %i\n\n",x , y);
    }

    //* Output 3
    printf("Fin del if:\n  x = %i\n  y = %i\n\n",x , y);

    return 0;
}