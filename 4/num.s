.intel_syntax noprefix
.globl  main, a, b, c
.data
a:  .4byte   3
b:  .4byte   2
c:  .4byte   6
.text
main: # a >= b
    mov eax, DWORD PTR[a]
    mov ebx, DWORD PTR[b]
    cmp eax, ebx
    jge NEXT1
    jmp ELSE1
NEXT1: # a >= c
    mov eax, DWORD PTR[a]
    mov ecx, DWORD PTR[c]
    cmp eax, ecx
    jge END

ELSE1: # b >= a
    mov eax, DWORD PTR[b]
    mov ebx, DWORD PTR[a]
    cmp eax, ebx
    jge NEXT2
    jmp ELSE2

NEXT2: # b >= c
    mov eax, DWORD PTR[b]
    mov ecx, DWORD PTR[c]
    cmp eax,ecx
    jge END
ELSE2:
    mov eax, DWORD PTR[c]
    jmp END

END: ret
