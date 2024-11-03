//+ Imports
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <limits.h>

const int N = 5;

//+ Functions
int elem_iguales(int tam, int a[])
{
    //# Init Vars
    int max_count = 1;   // Para almacenar el tramo máximo encontrado
    int current_count = 1; // Contador del tramo actual
    int i = 1;

    //? Loop para encontrar el tramo más largo de elementos consecutivos iguales
    while (i < tam) {
        if (a[i] == a[i - 1]) {
            current_count++;
        } else {
            if (current_count > max_count) {
                max_count = current_count;
            }
            current_count = 1; // Reinicia el conteo para el siguiente tramo
        }
        i++;
    }

    // Verifica si el último tramo es el más largo
    if (current_count > max_count) {
        max_count = current_count;
    }

    return max_count;
}

//+ Main
int main(void)
{
    //# Init Vars
    int pos = 0, array[N];
    int cuantos_iguales;

    //? Loop for insert data into array
    while(pos < N) {
        //% Required input
            printf("Ingresa el valor para A[%d]: ", pos);
            scanf("%d", &array[pos]);
            pos++;
    } pos = 0;

    //? Logic
    printf("\nArray: \n   ");
    while (pos < N) {
        printf("Array[%d] = %d, ", pos, array[pos]);
        pos++;
    }

    //? Call functions
    cuantos_iguales = elem_iguales(N, array);

    //* Output
    printf("\nEl mayor tramo de elementos iguales es de: %d", cuantos_iguales);
}

/*
Programar en el archivo prim_iguales.c la función
    int prim_iguales(int tam, int a[])
que siendo tam el tamaño del arreglo a[] devuelve la longitud del tramo inicial más largo cuyos elementos
son todos iguales (parecida a la función primIguales del Proyecto 1).
a) En la función main se le debe pedir al usuario los elementos del arreglo asumiendo un tamaño constante
previamente establecido (en tiempo de compilación) y luego mostrar el resultado de la función prim_iguales
por pantalla
b) (Punto Estrella) Mostrar por pantalla el mayor tramo inicial del arreglo a[] que tiene a todos sus elementos iguales.
*/