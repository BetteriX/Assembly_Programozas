#include <stdio.h>

int a = 3;
int b = 2;
int c = 6;

int main()
{
    if (a >= b && a >= c)
    {
        return a;
    }
    else if (b >= a && b >= c)
    {
        return b;
    }
    return c;
}