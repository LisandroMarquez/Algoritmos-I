//+ Imports
#include <stdio.h>
#include <assert.h>

const int N = 5;

//+ Structs
struct div_t {
    int cociente;
    int resto;
};

struct div_t division(int x, int y) {
    //! Check division with 0
    assert(y != 0);

    //? Calculate
    struct div_t n;
    n.cociente = x / y;
    n.resto = x % y;

    //! Teorema del resto
    assert(x == ((n.cociente * y) + n.resto));

    return n;
}

//+ Main
int main(void) {
    int x, y;

    //% Required input
    printf("Ingrese el dividendo (x): ");
    scanf("%d", &x);

    printf("Ingrese el divisor (y): ");
    scanf("%d", &y);

    //! Call function
    struct div_t res = division(x, y);

    //* Output
    printf("Cociente: %d\n", res.cociente);
    printf("Resto: %d\n", res.resto);

    return 0;
}

/*
(Algoritmo de la división) Crear un archivo llamado division.c que contenga la siguiente función:
struct div_t division(int x, int y){
...
}
donde la estructura div_t se define como
struct div_t {
int cociente;
int resto;
};
Esta función recibe dos enteros no negativos (divisor no nulo) y devuelve el cociente junto con el resto de la
división entera. En la función main pedir al usuario los dos números enteros, imprimir un mensaje de error si el
divisor es cero, o imprimir tanto el cociente como el resto en otro caso.
*/