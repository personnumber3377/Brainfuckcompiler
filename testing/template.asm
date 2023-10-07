

section .bss

data_strip:	resb 10000

section .data
	


section .text


global _start


accept_byte:
	; https://stackoverflow.com/questions/2535989/what-are-the-calling-conventions-for-unix-linux-system-calls-and-user-space-f
	mov rax, 0 ; read system call
	mov rdi, 0 ; filehandle number zero (stdin)
	mov rsi, r10 ; buffer
	mov rdx, 1 ; read one byte

	syscall ; call kernel

	ret ; return






_start:
	

	mov r10, data_strip

	add r10, 5000 ; make sure that we are in the middle of the strip

	mov byte [r10], 10
	; Here is the generated assembly within this template

	; HEREISTHECODE

	 

	cmp byte [r10], 0
	je jump_end0
jump_start0:

	; Get a character.
	call accept_byte
	dec byte [r10]
	
	cmp byte [r10], 0
	jne jump_start0
jump_end0:

	mov rdi, rax ; return code with zero
	mov rax, 60 ; sys_exit
	;mov rax, 0
	syscall





