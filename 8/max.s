    .intel_syntax noprefix
    .globl max

max:
    lea     rcx, [rdi+rsi*4]
    mov     eax, DWORD PTR [rdi]
    add     rdi, 4
    jmp     cond

body:
    cmp     eax, DWORD PTR[rdi]
    jge     next
    mov     eax, DWORD PTR[rdi]

next:
    add     rdi, 4

cond:
    cmp     rdi,rcx
    jl      body
    ret
    