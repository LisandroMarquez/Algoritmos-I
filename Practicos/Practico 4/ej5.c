//+ Imports
#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

//+ Functions
int suma_hasta(int n)
{
    //# Init Vars
    int i = 0;
    int sum = 0;

    //? Uso del while
    while (i < n + 1) {
        sum = sum + i;
        i++;
    }

    //* Return
    return sum;
}

//+ Main
int main(void)
{
    //# Init Vars
    int n = 0;

    //% Required inputs
    printf("Ingrese un n° natural: ");
    scanf("%d", &n);

    //! Error if n not natural
    assert(n >= 0);

    //? Logic
    int suma = suma_hasta(n);
    printf("La suma de los naturales hasta %d es %d\n", n, suma);

    return 0;
}

/* Consigna
Definir en C una programa que contenga la función
    int suma_hasta(int n)
que toma un número entero n como argumento, y devuelve la suma de los primeros n naturales (ver ejercicio 3).
En la función main pedir al usuario que ingrese el entero n, si es negativo imprimir un mensaje de error, y si es
no negativo imprimir el resultado devuelto por suma_hasta.
*/