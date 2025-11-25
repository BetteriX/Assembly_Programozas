# Output with interrupt (Compile as: gcc 37_Interrupt.c 37_Interrupt.s -no-pie) 

        .intel_syntax noprefix
        .globl     my_write

my_write:
        push       rbp
        mov        rbp, rsp
        mov        eax, 4     # code for system write (system-call ID)
        mov        ebx, edi   # standard output
        mov        rcx, rsi   # address of the string
        mov        edx, edx   # number of characters to write
        int        0x80       # interrupt vector index for Linux kernel processes
        mov        rsp, rbp
        pop        rbp
        ret
        

### C style ###
# /* NOT AVAILABLE, IMPOSSIBLE */ 
