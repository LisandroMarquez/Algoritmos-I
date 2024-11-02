//+ Imports
#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

//+ Functions
int minimo(int x, int y) {
    assert(x != y);
    if (x <= y){
        return x;
    } else {
        return y;
    }
    return 0;
}

int valorAbs(int x) {
    return (x >= 0) ? x : -x;
}

//+ Main
int main(void)
{
    //# Init Vars
    int x, y, elegir;

    //% Required inputs
    printf("¿Qué programa desear usar?\n  1) Minimo entre 2 números\n  2) Valor Absoluto\nElección: ");
    scanf("%i", &elegir);

    //? Programa a usar
    switch (elegir)
    {
    case 1:
        //% Required inputs
        printf("\nIngrese x: ");
        scanf("%i", &x);
    
        printf("Ingrese y: ");
        scanf("%i", &y);

        //* Corroborar con assert
        assert(x != y);

        //! Logic
        int min = minimo(x, y);
        printf("min(%i, %i) = %i\n", x, y, min);
        assert(min == x || min == y);
        break;
    case 2:
        //% Required inputs
        printf("\nIngrese x: ");
        scanf("%i", &x);

        //* Corroborar con assert
        assert(x != y);

        //! Logic
        int absVal = valorAbs(x);
        printf("|%i| = %i\n", x, absVal);
        assert(absVal >= 0);
        break;
    default:
        //! Logic
        printf("\nNúmero fuera del rango solicitado. Fin del programa");
        break;
    }

    return 0;
}