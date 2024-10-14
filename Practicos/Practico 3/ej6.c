//+ Imports
#include <stdio.h>

//+ Main
int main(void)
{
    //# Init Vars
    int x, y, z, m;

    //% Required inputs
    printf("Ingrese x: ");
    scanf("%i", &x);
    
    printf("Ingrese y: ");
    scanf("%i", &y);

    printf("Ingrese z: "); 
    scanf("%i", &z);
    
    printf("Ingrese m: ");
    scanf("%i", &m);

    //? Uso del if
    if (x < y) {
        m = x;
    } else if (x >= y) {
        m = y;
    }

    //* Output 1
        printf("\nOutput 1:\n  x = %i\n  y = %i\n  z = %i\n  m = %i\n\n",x , y, z, m);

    //? Uso del if
    if (m < z) {
        ;
    } else if (m >= z) {
        m = z;
    }

    //* Output 2
        printf("Output 2:\n  x = %i\n  y = %i\n  z = %i\n  m = %i\n",x , y, z, m);
}