//+ Imports
#include <stdio.h>

//+ Main
int main(void)
{
    //# Init vars
    const int A[4];  // Declaración del arreglo constante de tamaño 4
    int i,s,c,n = 0;    // Declaración de las variables enteras i y s

    //& Ejercicio a
    //% Required inputs
    printf("Ingrese i (i -> 3): ");
    scanf("%d", &i);
    
    printf("Ingrese s (s -> 5): ");
    scanf("%d", &s);

    //? Loop for insert data into array
    while(n < 4) {
        printf("Ingresa el valor para A[%d] (A[0] -> 2, A[1] -> 10, A[2] -> 10, A[3] -> -1): ", n);
        scanf("%d", &A[n]);
        n++; // n = n + 1
    } n = 0;

    //! Logic
    i = 0, s = 0;

    //? Uso del while
    while (i < 4) {
        //* Output a.1
        printf("\nOutput a.1:\n  i = %d\n  s = %d\n", i, s);
        //! Logic
        s = s + A[i];
        i++; // i = i + 1
        //* Output a.2
        printf("\nOutput a.2:\n  i = %d\n  s = %d\n", i, s);
    }

    //* Output Final A
    printf("\nOutput Final A:\n  i = %d\n  s = %d\n", i, s);

    //& Ejercicio b
    //% Required inputs
    printf("Ingrese i (i -> 3): ");
    scanf("%d", &i);
    
    printf("Ingrese c (c -> 12): ");
    scanf("%d", &c);

    //? Loop for insert data into array
    while(n < 4) {
        printf("Ingresa el valor para A[%d] (A[0] -> 12, A[1] -> -9, A[2] -> 10, A[3] -> -1): ", n);
        scanf("%d", &A[n]);
        n++; // n = n + 1
    } n = 0;

    //! Logic
    i = 0, c = 0;

    //? Uso del while
    while (i < 4) {
        //* Output b.1
        printf("\nOutput b.1:\n  i = %d\n  A[%d] = %d\n  c = %d\n", i, i, A[i], c);
        if (A[i] > 0) {
            //! Logic
            c++; // c = c + 1
        } else if (A[i] <= 0) {
            ;
        }
        //* Output b.2
        printf("\nOutput b.2:\n  i = %d\n  A[%d] = %d\n  c = %d\n", i, i, A[i], c);
        //! Logic
        i++; // i = i + 1
        //* Output b.3
        printf("\nOutput b.3:\n  i = %d\n  A[%d] = %d\n  c = %d\n", i, i, A[i], c);
    }

    //* Output Final B
    printf("\nOutput Final B:\n  i = %d\n  A[%d] = %d\n  c = %d\n", i, i, A[i], c);

    return 0;
}