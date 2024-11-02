//+ Imports
#include <stdio.h>
#include <assert.h>

const int N = 5;

//+ Functions
void intercambiar(int tam, int a[N], int i, int j)
{
    //# Init Var
    int aux;

    //! Logic
    aux = a[i];
    a[i] = a[j];
    a[j] = aux;
}

//+ Main
int main(void)
{
    //# Init Vars
    int Array[N] ;  // Declaración del arreglo constante de tamaño 4
    int n = 0, i, j;

    //? Loop for insert data into array
    while(n < N) {
        //% Required input
            printf("Ingresa el valor a asignar: ");
            scanf("%d", &Array[n]);
            n++;
    } n = 0;

    //% Required inputs
    printf("\nIngrese una posición del arreglo (entre 0 y 4): ");
    scanf("%d", &i);
    printf("Ingrese otra posición del arreglo distinta al anterior (entre 0 y 4): ");
    scanf("%d", &j);

    //! Error if i or j outside array range
    assert(i>(-1) && i<N && j>(-1) && j<N);
    assert(i != j);

    //? Logic
    printf("\nArray antes del intercambio: \n");
    while (n < N) {
        printf("   Array[%d] = %d\n", n, Array[n]);

        n++;
    } n = 0;

    intercambiar(N, Array, i, j);

    printf("\nArray después del intercambio: \n");
    while (n < N) {
        printf("   Array[%d] = %d\n", n, Array[n]);

        n++;
    }

    return 0;
}
/*
(Procedimiento intercambio). Hacer un programa en el archivo nuevo intercambio_arreglos.c
que contenga la siguiente función:
    void intercambiar(int tam, int a[], int i, int j)
que recibe un tamaño máximo de arreglo, un arreglo y dos posiciones como argumento, e intercambia los elementos
del arreglo en dichas posiciones. En la función main pedirle al usuario que ingrese los elementos del arreglo y
las posiciones, chequear que las posiciones estén en el rango correcto y luego imprimir en pantalla el arreglo
modificado.
*/