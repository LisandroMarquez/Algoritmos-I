//+ Imports
#include <stdio.h>

//+ Main
int main(void)
{
    /* Traducir a c:
        z := x;
        x := y;
        y := z;
    */

    //# Init vars
    int x, y, z;
    
    //! Logic
    z = x;
    x = y;
    y = z;

    return 0;
}