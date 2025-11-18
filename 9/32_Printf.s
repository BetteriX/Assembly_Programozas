# The standard C printf function

        .intel_syntax noprefix
        .globl     main
        .section   .rodata
.LC0:   .string    "world!"
.LC1:   .string    "Hello %s%c%d\n"
        .text
main:   push       rbp
        mov        rbp, rsp
        sub        rsp, 8
        and        rsp, 0xfffffffffffffff0       # RSP dividable by 16 (printf likes it)
        call       rand
        and        eax, 0xffff
        mov        DWORD PTR [rbp-8], eax
        lea        rdi, [.LC1]                   # load the address of constant format string (first parameter)
        lea        rsi, [.LC0]                   # load the address of constant string (second parameter)
        mov        edx, 9                        # load the '\t' (third parameter)
        mov        ecx, DWORD PTR [rbp-8]        # load the value of x variable (fourth parameter) 
        mov        eax, 0                        # number of float parameters of printf
        call       printf                        # invocation of C standard printf function (stdio.h)
        mov        DWORD PTR [rbp-4], eax        # saving returned value 
        mov        eax, DWORD PTR [rbp-4]
        mov        rsp, rbp
        pop        rbp
        ret


### C style ###
# #include<stdio.h>
# #include<stdlib.h>
# int main(){
#   int x, y;
#   x=rand()&0xffff; //rand()%65536;
#   y=printf("Hello %s%c%d\n","world!",'\t',x);
#   return y; 
#   }

