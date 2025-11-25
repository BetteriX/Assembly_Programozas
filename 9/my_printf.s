        .intel_syntax noprefix
        .globl main
        .section .rodata
.LC0:   .string "Hello World!\n"
        .text
main:
    push    rbp
    mov     rbp, rsp
    lea     rdi, [.LC0]
    mov     eax, 0
    call    printf
    mov     DWORD PTR[rbp-4], eax
    mov     eax, DWORD PTR[rbp-4]
    mov     rsp, rbp
    pop     rbp
    ret
