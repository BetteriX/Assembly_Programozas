# Local variable (with dynamic lifetime)

        .intel_syntax noprefix
        .globl     main
        .text
main:   push       rbp                     # store base pointer (rbp) into the stack
        mov        rbp, rsp                # save stack pointer (rsp) into rbp
        sub        rsp, 4                  # memory allocation in the stack for a local variable (4 bytes)
        mov        DWORD PTR [rbp-4], 123
        mov        eax, DWORD PTR [rbp-4]
        mov        rsp, rbp                # restore the original rsp, local variable is freed
        pop        rbp                     # restore base pointer from the stack
        ret


### C style ###
# int main(){
#   int abc=123;
#   return abc; 
#   }

