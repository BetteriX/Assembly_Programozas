// Output with interrupt (Compile as: gcc 37_Interrupt.c 37_Interrupt.s -no-pie)

// #include<stdio.h>

int my_write(int fd, char *s, int len);

int my_printf(char *s, ...)
{
  int L = 0;
  while (s[L++] != '\0')
    ;
  // value insertion and formatting are skipped...
  L = my_write(1, s, L); // invocation of the wrapper function of the system call
  return L;
}

int main()
{
  my_printf("Hello World!\n");
  return 0;
}
