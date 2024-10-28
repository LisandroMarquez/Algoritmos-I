//+ Imports
#include <stdio.h>
#include <stdbool.h>

//+ Function
bool es_vocal(char letra) {
    switch (letra)
    {
    case 'a': return true;
    case 'e': return true;
    case 'i': return true;
    case 'o': return true;
    case 'u': return true;
    case 'A': return true;
    case 'E': return true;
    case 'I': return true;
    case 'O': return true;
    case 'U': return true;
    default: return false;
    }
}

//+ Main
int main(void)
{
    //# Init Vars
    char l;
    bool flag;

    //% Required inputs
    printf("Ingrese un caracter para saber si es una vocal: ");
    scanf("%c", &l);

    //! Logic
    flag = es_vocal(l);

    //* Output
    if (flag) {
        printf("\nEl caracter '%c' es una vocal", l);
    } else {
        printf("\nEl caracter '%c' no es una vocal", l);
    }

    return 0;
}