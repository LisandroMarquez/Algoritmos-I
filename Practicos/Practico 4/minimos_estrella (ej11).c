//+ Imports
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <limits.h>

const int N = 5;

//+ Functions
int minimo_pares(int tam, int a[])
{
    //# Init Vars
    int n = 0, min = INT_MAX;

    //? Loop to check all even numbers
    while (n < tam)
    {
        if (a[n] < min && a[n] % 2 == 0) {
            min = a[n];
        }
        n++;
    }
    return min;
}

int minimo_impares(int tam, int a[])
{
    //# Init Vars
    int n = 0, min = INT_MAX;

    //? Loop to check all even numbers
    while (n < tam)
    {
        if (a[n] < min && a[n] % 2 != 0) {
            min = a[n];
        }
        n++;
    }
    return min;
}

//+ Function from ej10
bool existen_pares(int tam, int a[]) {
    //# Init var
    int n = 0, count = 0;

    //? Loop to check all even numbers
    while (n < tam)
    {
        if (a[n] % 2 == 0) {
            count++;
        }
        n++;
    }
    return (count > 0) ? true : false;
}

bool existen_impares(int tam, int a[]) {
    //# Init var
    int n = 0, count = 0;

    //? Loop to check all even numbers
    while (n < tam)
    {
        if (a[n] % 2 != 0) {
            count++;
        }
        n++;
    }
    return (count > 0) ? true : false;
}

//+ Main
int main(void)
{
    //# Init Vars
    int pos = 0, array[N];
    int min_par, min_impar, minimo;
    bool e_par, e_impar;

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
    min_impar = minimo_impares(N, array);
    min_par = minimo_pares(N, array);
    minimo = (min_impar <= min_par) ? min_impar : min_par;
    e_par = existen_pares(N, array);
    e_impar = existen_impares(N, array);


    //! If all even, show minimum even number, otherwise, show minimum even number
    if (e_par) {
        //* Output
        printf("\nEl minimo n° par del arreglo es: %d", min_par);
    } 
    if (e_impar) {
        //* Output
        printf("\nEl minimo n° impar del arreglo es: %d", min_impar);
    }
    if (e_par && e_impar) {
        //* Output
        printf("\n\nEl minimo del arreglo es: %d", minimo);
    }
}

/*
Hacer un programa en un archivo con nombre minimos.c que contenga las siguientes funciones:
    int minimo_pares(int tam, int a[])
    int minimo_impares(int tam, int a[])
Estas funciones reciben un tamaño máximo de arreglo y un arreglo como argumentos, devolviendo el elemento
par más pequeño del arreglo y el elemento impar más pequeño del arreglo respectivamente.
a) En la función main se debe pedir al usuario los elementos del arreglo (asumiendo un tamaño constante) y
luego mostrar por pantalla:
El resultado de minimo_pares(), para el arreglo ingresado
El resultado de minimo_impares(), de nuevo, para el arreglo ingresado
El elemento mínimo del arreglo ingresado (utilizando el resultado de ambas funciones para calcularlo).
Pueden definir alguna función auxiliar si les resulta necesario.
NOTA: Investigar las constantes definidas en la librería <limits.h> para definir el neutro de la operación
mínimo
b) (Punto estrella) Hacer una segunda versión del programa en el archivo minimos_estrella.c y usar las
funciones del ejercicio 10 en la función main para que en caso de no haber elementos pares no se muestre el
resultado de minimo_pares() y en caso de no haber impares no se muestre el resultado de minimo_impares()
*/