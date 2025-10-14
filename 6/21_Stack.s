# The system stack (LIFO memory)

        .intel_syntax noprefix
        .globl     main
        .text
main:   mov        rcx, 8
        push       rcx                # store the value of rcx (8 bytes) to the top of the stack (rsp=rsp-8)
        mov        rcx, 7
        push       rcx
        mov        rcx, 6
        push       rcx
        mov        rcx, 5
        push       rcx
        mov        rcx, 4
        push       rcx
        mov        rcx, 3
        push       rcx
        mov        rcx, 2
        push       rcx
        pop        rbx                # the value from the top of the stack is copied into rbx (rsp=rsp+8)
        pop        rbx
        pop        rbx
        pop        rax
        add        rsp, 24            # restore the value of stack pointer (rsp) by adding 3*8
        ret


### C style ###
# /* NOT AVAILABLE, IMPOSSIBLE */

