.intel_syntax noprefix
.globl main
.text
main:
    mov eax, 1 # result (f)
    mov ebx, 5 # amount of factorial (n)

factorial_loop:
    cmp ebx, 1          # n > 1
    jle done            # jumps to done    
    imul eax, ebx       # f = f * n
    dec ebx             # n--
    jmp factorial_loop  # jumps to the factorial_loop

done:
    ret                 # return f (returns eax without moving it)
