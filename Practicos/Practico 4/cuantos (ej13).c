//+ Imports
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <limits.h>

const int N = 5;

//+ Structs
struct comp_t
{
    int menores;
    int iguales;
    int mayores;
};

//+ Functions
struct comp_t cuantos(int tam, int a[], int elem) {
    //# Init Vars
    int n = 0;
    struct comp_t count;
    count.menores = 0, count.iguales = 0, count.mayores = 0;
    
    //? Loop to count if lower, equal or higger
    while (n < tam)
    {
        if (elem > a[n]) {
            count.menores++;
        }
        else if (elem == a[n]) {
            count.iguales++;
        } else {
            count.mayores++;
        }
        n++;
    }
    return count;
}

//+ Main
int main(void)
{
    //# Init Vars
    int pos = 0, num, array[N];
    int cuantos_iguales;

    //? Loop for insert data into array
    while(pos < N) {
        //% Required input
            printf("Ingresa el valor para A[%d]: ", pos);
            scanf("%d", &array[pos]);
            pos++;
    } pos = 0;

    //% Required input
    printf("Ingresa un n°: ", num);
    scanf("%d", &num);

    //! Logic
    printf("\nArray: \n   ");
    while (pos < N) {
        printf("Array[%d] = %d, ", pos, array[pos]);
        pos++;
    }

    //? Call functions
    struct comp_t contador = cuantos(N, array, num);

    assert(contador.iguales != 0 || contador.mayores != 0 || contador.menores != 0);

    //* Output
    printf("\n\nEl array posee %d menores a '%d'", contador.menores, num);
    printf("\nEl array posee %d iguales a '%d'", contador.iguales, num);
    printf("\nEl array posee %d mayores a '%d'", contador.mayores, num);
}

/*
Hacer un programa en un archivo nuevo cuantos.c que calcula cuántos
elementos menores, iguales y mayores a un número hay en un arreglo. La función tiene el siguiente prototipo:
struct comp_t cuantos(int tam, int a[], int elem)
donde la estructura comp_t se define como sigue:
struct comp_t {
int menores;
int iguales;
int mayores;
};
La función toma un tamaño máximo de arreglo, el arreglo y un entero, y devuelve una estructura con tres enteros
que respectivamente indican cuántos elementos menores, iguales o mayores al argumento hay en el arreglo. La
función cuantos debe contener un único ciclo.
*/