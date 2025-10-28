#include <stdio.h>

int main()
{
    int i = 2;
    int F[13];
    F[0] = 0;
    F[1] = 1;
    for (int i = 2; i < 13; i++)
    {
        F[i] = F[i - 1] + F[i - 2];
    }

    return F[12];
}