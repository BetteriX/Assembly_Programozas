        .intel_syntax noprefix
        .section	.rodata
.LC0:  	.string 	" Hello!"
.LC1:	.string 	" Hello %s!\n"
		.globl main
		.text
main:
	push 	rbp
	mov 	rbp, rsp
	sub		rsp, 16
	mov 	DWORD PTR [rbp-4], edi
	mov		QWORD PTR [rbp-16], rsi
	cmp		DWORD PTR [rbp-4], 1
	jne		.L2 
	lea 	rdi, [.LC0]
	call 	puts
	jmp 	.L3

.L2:
	mov		rax, QWORD PTR [rbp-16]
	mov		rsi, QWORD PTR [rax+8]
	lea 	rdi, [.LC1]
	mov		eax, 0
	call 	printf

.L3:
	mov 	eax, 0
	mov 	rsp, rbp
	pop 	rbp
	ret
