#include <stdio.h>

int n = 5;
int f = 1;

int main()
{
    while (n > 1)
    {
        f = f * n;
        n--;
    }
    return f;
}