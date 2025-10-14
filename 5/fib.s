.intel_syntax noprefix
.globl  main
.data
.comm F,52
.text
main:
    mov DWORD PTR[F], 0
    mov DWORD PTR[F+4], 1
    mov edx, 2
    jmp cond

body:
    mov ebx, DWORD PTR[F+edx*4-4]
    mov ecx, DWORD PTR[F+edx*4-8]

    add ebx, ecx
    
    mov DWORD PTR[F+edx*4], ebx
    inc edx
cond:
    cmp edx, 13
    jl  body
    
    mov eax, DWORD PTR[F+48]
    ret
