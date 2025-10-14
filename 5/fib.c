#include <stdio.h>
/*
int a = 0;
int b = 1;

int A[13];

int main()
{
    A[0] = a;
    A[1] = b;
    for (int i = 2; i < 14; i++)
    {
        A[i] = a + b;
        a = b;
        b = A[i];
    }

    return A[13];
}
*/

int main()
{
    // static int i;
    register int i;
    static int F[13];
    F[0] = 0;
    F[1] = 1;
    for (int i = 2; i < 13; i++)
    {
        F[i] = F[i - 1] + F[i - 2];
    }

    return F[12];
}