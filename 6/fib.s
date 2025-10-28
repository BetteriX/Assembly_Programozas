.intel_syntax noprefix
.globl main
.text
main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 52

    mov     DWORD PTR[rbp-52], 0    #   F[0]
    mov     DWORD PTR[rbp-48], 1    #   F[1]
    mov     rdx, 2
cond:
    cmp     rdx, 13
    jge     done
body:
    mov     ebx, DWORD PTR[rbp-52+rdx*4-4]
    mov     ecx, DWORD PTR[rbp-52+rdx*4-8]

    add     ebx, ecx

    mov     DWORD PTR[rbp-52+rdx*4], ebx
    inc     rdx
    jmp     cond
done:
    mov     eax, DWORD PTR[rbp-4]
    mov     rsp, rbp
    pop     rbp
    ret
