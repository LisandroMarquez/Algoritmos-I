//+ Imports
#include <stdio.h>
#include <assert.h>

const int N = 5;

//+ Functions
int sumatoria(int tam, int a[])
{
    //# Init Vars
    int pos = 0, sum = 0;

    //? Loop for insert data into array
    while(pos < tam) {
        //! Logic
        sum = a[pos] + sum;
        pos++;
    }

    return sum;
}

//+ Main
int main(void)
{
    //# Init Vars
    int array[N], pos = 0;

    //? Loop for insert data into array
    while(pos < N) {
        //% Required input
            printf("Ingresa el valor para A[%d]: ", pos);
            scanf("%d", &array[pos]);
            pos++;
    } pos = 0;

    //% Call function
    int suma = sumatoria(N, array);

    //* Output
    printf("\nLa suma de todos los elementos del arreglo es: %d", suma);

    return 0;
}


/*
(Arreglos, Funci ́on sumatoria). Hacer un programa en un archivo con nombre sumatoria.c que
contenga la funci ́on
int sumatoria(int tam, int a[])
que recibe un tama ̃no m ́aximo de arreglo y un arreglo como argumento, y devuelve la suma de los elementos del
arreglo. En la funci ́on main pedir los datos del arreglo al usuario asumiendo un tama ̃no constante previamente
establecido (en tiempo de compilacilaci ́on).
*/