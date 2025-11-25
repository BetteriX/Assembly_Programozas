# Command line arguments and pointer-pointers (Compile as: gcc 36_ComLineArg.s -no-pie) 

        .intel_syntax noprefix
        .section   .rodata
.FORM:  .string    " %s"
        .globl     main
        .text
main:   push       rbp
        mov        rbp, rsp
        sub        rsp, 16
        mov        DWORD PTR [rbp-8], edi
        mov        QWORD PTR [rbp-16], rsi
        mov        DWORD PTR [rbp-4], 0
        jmp        .COND
.BODY:  movsx      rax, DWORD PTR [rbp-4]
        mov        rbx, QWORD PTR [rbp-16]
        mov        rsi, QWORD PTR [rbx+rax*8]
        lea        rdi, [.FORM]
        mov        eax, 0
        call       printf
        add        DWORD PTR [rbp-4], 1
.COND:  mov        eax, DWORD PTR [rbp-4]
        cmp        eax, DWORD PTR [rbp-8]
        jl         .BODY
        mov        edi, 10
        call       putchar
        mov        eax, 0
        mov        rsp, rbp
        pop        rbp
        ret


### C style ###
# #include<stdio.h>
# int main(int argc, char* argv[]){
#   int i;
#   for(i=0;i<argc;i++)
#     printf(" %s",argv[i]);
#   putchar('\n');  
#   return 0; 
#   }

