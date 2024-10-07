//+ Imports
#include <stdio.h>

//+ Main
int main(void)
{   /*¿Es posible implementarlo en C?
        d) Var x,y : Int;
                [σ0 : (x → 2, y → 5)]
                [σ1 : ()]
            y,x := y + y,x + y
    */

    //# Init Vars
    int x, y;

    //% Required inputs
    printf("Ingrese x: ");
    scanf("%i", &x);
    
    printf("Ingrese y: ");
    scanf("%i", &y);

    //! Se puede de esta manera, y se ejecuta linealmente.
    y = y + y, x = x + y;

    //* Output
    printf("\nEstado final de las variables:\n  x = %i\n  y = %i\n",x , y);
    return 0;
}