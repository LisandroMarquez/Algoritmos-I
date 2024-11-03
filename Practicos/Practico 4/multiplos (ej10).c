//+ Imports
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

const int N = 5;

//+ Functions
bool todos_pares(int tam, int a[]) {
    //# Init var
    int n = 0;

    //? Loop to check all even numbers
    while (n < tam)
    {
        if (a[n] % 2 != 0) {
            return false;
        }
        n++;
    }
    return true;
}

bool existe_multiplo(int m, int tam, int a[]) {

    //! Check division with 0
    assert(m != 0);

    //# Init var
    int n = 0;

    //? Loop to check all even numbers
    while (n < tam)
    {
        if (a[n] % m == 0) {
            return true;
        }
        n++;
    }
    return false;
}

//+ Main
int main(void)
{
    //# Init Vars
    int pos = 0, array[N], multiplo;
    bool par, mult;

    //? Loop for insert data into array
    while(pos < N) {
        //% Required input
            printf("Ingresa el valor para A[%d]: ", pos);
            scanf("%d", &array[pos]);
            pos++;
    }

    //% Required input
    printf("\nIngresa un n°: ");
    scanf("%d", &multiplo);

    //? Call functions
    par = todos_pares(N, array);
    mult = existe_multiplo(multiplo, N, array);

    //* Output
    printf("\nTodos los n° del arreglo son pares: %s", par ? "true" : "false");
    printf("\nExiste un multiplo de %d en el arreglo: %s", multiplo, mult ? "true" : "false");

}
/*
Hacer un programa en un archivo multiplos.c que contenga las siguientes funciones:
    bool todos_pares(int tam, int a[])
    bool existe_multiplo(int m, int tam, int a[])
La primera recibe un tamaño máximo de arreglo y un arreglo como argumento devolviendo true cuando todos
los elementos del arreglo a[] son numeros pares y false en caso contrario. La segunda determina si hay en el
arreglo a[] algún elemento que es múltiplo de m. En la función main se debe pedir al usuario los elementos del
arreglo (asumiendo un tamaño constante) y luego permitirle elegir qu ́e función ejecutar. En caso que se elija la
función existe_multiplo() se le debe pedir al usuario un valor para m.
*/