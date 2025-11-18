# Local strings (local char array with termination character)

        .intel_syntax noprefix
        .section   .rodata
.FORM:  .string    "The string is: %s\n"       # format string of printf
        .globl     main
        .text
main:   push       rbp
        mov        rbp, rsp
        sub        rsp, 34                     # 30 bytes for string and 4 bytes for int
        and        rsp, 0xfffffffffffffff0
        mov        DWORD PTR [rbp-34], 0
        jmp        .COND
.BODY:  mov        edx, DWORD PTR [rbp-34]
        add        edx, 65
        movsx      rax, DWORD PTR [rbp-34]
        mov        BYTE PTR [rbp-30+rax], dl   # s[i]=...
        add        DWORD PTR [rbp-34], 1
.COND:  cmp        DWORD PTR [rbp-34], 26
        jl         .BODY
        movsx      rax, DWORD PTR [rbp-34]
        mov        BYTE PTR [rbp-30+rax], 0    # string termination: \0
        lea        rsi, [rbp-30]
        lea        rdi, [.FORM]
        mov        eax, 0
        call       printf
        mov        eax, 0
        mov        rsp, rbp
        pop        rbp
        ret


### C style ###
# #include<stdio.h>
# int main(){
#   int i;
#   char s[30];
#   for(i=0;i<26;i++)
#     s[i]=i+'A';
#   s[i]='\0';
#   printf("The string is: %s\n",s);
#   return 0; 
#   }

