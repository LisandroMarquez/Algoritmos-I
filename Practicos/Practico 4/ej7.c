//+ Imports
#include <stdio.h>
#include <assert.h>

const int N = 5;

//+ Functions
void imprimir_arreglo(int n_max, int a[n_max])
{
    //# Init Vars
    int n = 0;

    //? Logic
    printf("\nArray: \n");
    while (n < N) {
        printf("   Array[%d] = %d\n", n, a[n]);

        n++;
    }
}

void pedir_arreglo(int n_max, int a[n_max])
{
    //# Init Vars
    int pos = 0;

    //? Loop for insert data into array
    while(pos < n_max) {
        //% Required input
            printf("Ingresa el valor para A[%d]: ", pos);
            scanf("%d", &a[pos]);
            pos++;
    } pos = 0;

    imprimir_arreglo(n_max, a);
}

//+ Main
int main(void)
{
    int array[N];
    pedir_arreglo(N, array);
}

/* CONSIGNA
(Arreglos, entrada-salida) Escribir un programa que solicite el ingreso de un arreglo de enteros
int a[] y luego imprime por pantalla. El programa debe utilizar dos nuevas funciones además de la función
main:
una que dado un tamaño máximo de arreglo y el arreglo, solicita los valores para el arreglo y los devuelve,
guardándolos en el mismo arreglo int a[]; función con prototipo (también conocido como signatura o
firma):
void pedir_arreglo(int n_max, int a[])
otra que imprime cada uno de los valores del arreglo int a[], de prototipo:
void imprimir_arreglo(int n_max, int a[])
*/