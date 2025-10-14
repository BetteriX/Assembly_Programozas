.intel_syntax noprefix
.globl main
.globl n,f

.data
n:  .4byte  5 # int n = 5
f:  .4byte  1 # int f = 1

.text
loop:
    mov eax, DWORD PTR[f]   # load f into eax
    mov ebx, DWORD PTR[n]   # load n into ebx
    imul eax, ebx           # f = f * n
    mov DWORD PTR[f], eax   # store back to f
    dec ebx                 # n--
    mov DWORD PTR[n], ebx   # store back to n
main:
    mov eax, DWORD PTR[f]   # return f
    mov ebx, DWORD PTR[n]   # load n into ebx
    #setg al                # n > 1 with cmp ebx, 1
    cmp ebx, 1              # n == 1 
    jne loop                # If not true jump to loop

    ret
