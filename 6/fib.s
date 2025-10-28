.intel_syntax noprefix
.globl main
.text
main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 56
    mov     DWORD PTR[rbp-52], 0    #   F[0]
    mov     DWORD PTR[rbp-48], 1    #   F[1]
    mov     rdx, 2
    jmp     cond

body:
    mov     ebx, DWORD PTR[rbp-56+rdx*4-4] # 48
    mov     ecx, DWORD PTR[rbp-56+rdx*4-8] # 

    add     ebx, ecx

    mov     DWORD PTR[rbp-56-i*4], ebx # 
    inc     DWORD PTR[rbp-56]

cond:
    cmp     DWORD PTR[rbp-56], 13
    jl      body

    mov     eax, DWORD PTR[rbp-4]
    mov     rsp, rbp
    pop     rbp
    ret