//+ Imports
#include <stdio.h>

//+ Main
int main(void)
{
    //# Init Var
    int i, r;

    //& Ejercicio a
    //% Required input
    printf("Ingrese i (i -> 4): ");
    scanf("%i", &i);

    //? Uso del while
    while (i != 0)
    {
        //* Output a.1
        printf("\nOutput a.1:\n  i = %i\n", i);
        //! Logic
        i--; // i = i - 1;
        //* Output a.2
        printf("\nOutput a.2:\n  i = %i\n", i);
    }

    //* Output Final A
    printf("\nOutput Final A:\n  i = %i\n\n", i);

    //& Ejercicio b
    //% Required input
    printf("Ingrese i (i -> 400): ");
    scanf("%i", &i);

    //? Uso del while
    while (i != 0)
    {
        //* Output b.1
        printf("\nOutput b.1:\n  i = %i\n", i);
        //! Logic
        i = 0;
        //* Output b.2
        printf("\nOutput b.2:\n  i = %i\n", i);
    }

    //* Output Final B
    printf("\nOutput Final B:\n  i = %i\n\n", i);

    //& Ejercicio c
    //% Required input
    printf("Ingrese i (i -> 4): ");
    scanf("%i", &i);

    //? Uso del while
    while (i < 0)
    {
        //* Output c.1
        printf("\nOutput c.1:\n  i = %i\n", i);
        //! Logic
        i--; // i = i - 1;
        //* Output c.2
        printf("\nOutput c.2:\n  i = %i\n", i);
    }

    //* Output Final C
    printf("\nOutput Final C:\n  i = %i\n\n", i);

    //& Ejercicio d
    //% Required input
    printf("Ingrese i (i -> 0): ");
    scanf("%i", &i);

    //? Uso del while
    while (i <= 0) //!!!!! ESTE BUCLE NO TERMINA NUNCA SI LE METES UN i = 0 Ó MENOR
    {
        //* Output d.1
        printf("\nOutput d.1:\n  i = %i\n", i);
        //! Logic
        i--; // i = i - 1;
        //* Output d.2
        printf("\nOutput d.2:\n  i = %i\n", i);
    }

    //* Output Final D
    printf("\nOutput Final D:\n  i = %i\n\n", i);

    //& Ejercicio e
    //% Required input
    printf("Ingrese r (r -> 3): ");
    scanf("%i", &r);

    //? Uso del while
    while (r != 0)
    {
        //* Output e.1
        printf("\nOutput e (Inicio Bucle):\n  r = %i\n", r);

        //? Uso del if
        if (r < 0) {
            //* Output e.1.1
            printf("\nOutput e.1.1:\n  r = %i\n", r);
            //! Logic
            r++; // r = r + 1;
            //* Output e.1.2
            printf("\nOutput e.1.2:\n  r = %i\n", r);
        } else if (r > 0) {
            //* Output e.2.1
            printf("\nOutput e.2.1:\n  r = %i\n", r);
            //! Logic
            r--; // r = r - 1;
            //* Output e.2.2
            printf("\nOutput e.2.2:\n  r = %i\n", r);
        }
    }

    //* Output Final E
    printf("\nOutput Final E:\n  r = %i\n\n", r);

    return 0;
}