//+ Imports
#include <stdio.h>
#include <stdbool.h>

//+ Functions
int minimo(int x, int y) {
    if (x <= y){
        return x;
    } else {
        return y;
    }
    return 0;
}

int valorAbs(int x) {
    if (x >= 0) {
        return x;
    } else {
        return (-x);
    }
    return 0;
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

        //! Logic
        printf("min(%i, %i) = %i\n", x, y, minimo(x,y));
        break;
    case 2:
        //% Required inputs
        printf("\nIngrese x: ");
        scanf("%i", &x);

        //! Logic
        printf("|%i| = %i\n", x, valorAbs(x));
        break;
    default:
        //! Logic
        printf("\nNúmero fuera del rango solicitado. Fin del programa");
        break;
    }

    return 0;
}