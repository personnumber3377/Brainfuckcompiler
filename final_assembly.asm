


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

output_byte:
	
	mov rax, 1 ; write system call
	mov rdi, 1 ; stdout
	mov rsi, r10 ; pointer
	mov rdx, 1 ; one character

	syscall

	ret





_start:
	

	mov r10, data_strip

	add r10, 5000 ; make sure that we are in the middle of the strip

	; Here is the generated assembly by main.py:







	inc r10
	inc r10
	inc r10
	dec byte [r10]
	inc r10
	inc byte [r10]
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end0_0
jump_start0_1:
	cmp byte [r10], 0
	je jump_end1_0
jump_start1_1:
	inc r10
	inc r10
	inc r10
	inc byte [r10]
	dec r10
	dec r10
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start1_1
jump_end1_0:
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc r10
	inc byte [r10]
	inc r10
	inc r10
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end1_1
jump_start1_2:
	dec r10
	dec r10
	inc byte [r10]
	inc r10
	inc r10
	inc r10
	inc r10
	inc r10
	inc byte [r10]
	dec r10
	dec r10
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start1_2
jump_end1_1:
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start0_1
jump_end0_0:
	inc r10
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	je jump_end0_1
jump_start0_2:
	cmp byte [r10], 0
	je jump_end1_2
jump_start1_3:
	inc r10
	inc r10
	inc r10
	inc byte [r10]
	inc r10
	inc byte [r10]
	dec r10
	dec r10
	dec r10
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start1_3
jump_end1_2:
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc r10
	inc r10
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end1_3
jump_start1_4:
	dec r10
	inc byte [r10]
	inc r10
	inc r10
	inc r10
	inc byte [r10]
	inc r10
	inc byte [r10]
	dec r10
	dec r10
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start1_4
jump_end1_3:
	inc r10
	inc r10
	cmp byte [r10], 0
	je jump_end1_4
jump_start1_5:
	inc r10
	cmp byte [r10], 0
	je jump_end2_0
jump_start2_1:
	cmp byte [r10], 0
	je jump_end3_0
jump_start3_1:
	inc r10
	inc r10
	inc r10
	inc byte [r10]
	dec r10
	dec r10
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start3_1
jump_end3_0:
	dec r10
	cmp byte [r10], 0
	jne jump_start2_1
jump_end2_0:
	dec r10
	dec r10
	inc byte [r10]
	inc byte [r10]
	inc r10
	inc byte [r10]
	inc r10
	inc r10
	inc r10
	inc r10
	inc r10
	inc r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start1_5
jump_end1_4:
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start0_2
jump_end0_1:
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc r10
	inc byte [r10]
	inc r10
	cmp byte [r10], 0
	je jump_end0_2
jump_start0_3:
	cmp byte [r10], 0
	je jump_end1_5
jump_start1_6:
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start1_6
jump_end1_5:
	dec r10
	inc byte [r10]
	dec r10
	cmp byte [r10], 0
	je jump_end1_6
jump_start1_7:
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start1_7
jump_end1_6:
	dec r10
	inc byte [r10]
	cmp byte [r10], 0
	jne jump_start0_3
jump_end0_2:
	inc r10
	inc r10
	cmp byte [r10], 0
	je jump_end0_3
jump_start0_4:
	cmp byte [r10], 0
	je jump_end1_7
jump_start1_8:
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	call output_byte
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start1_8
jump_end1_7:
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end1_8
jump_start1_9:
	dec byte [r10]
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start1_9
jump_end1_8:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	je jump_end1_9
jump_start1_10:
	inc r10
	inc r10
	call accept_byte
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end2_1
jump_start2_2:
	inc r10
	cmp byte [r10], 0
	jne jump_start2_2
jump_end2_1:
	dec r10
	cmp byte [r10], 0
	jne jump_start1_10
jump_end1_9:
	dec r10
	dec r10
	cmp byte [r10], 0
	je jump_end1_10
jump_start1_11:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	je jump_end2_2
jump_start2_3:
	inc r10
	dec byte [r10]
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end3_1
jump_start3_2:
	dec r10
	dec byte [r10]
	inc r10
	inc r10
	inc byte [r10]
	inc r10
	dec byte [r10]
	dec r10
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start3_2
jump_end3_1:
	dec r10
	cmp byte [r10], 0
	je jump_end3_2
jump_start3_3:
	cmp byte [r10], 0
	je jump_end4_0
jump_start4_1:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start4_1
jump_end4_0:
	inc byte [r10]
	inc r10
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end4_1
jump_start4_2:
	inc byte [r10]
	inc r10
	inc r10
	inc byte [r10]
	inc r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start4_2
jump_end4_1:
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end4_2
jump_start4_3:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start4_3
jump_end4_2:
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start3_3
jump_end3_2:
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc r10
	cmp byte [r10], 0
	je jump_end3_3
jump_start3_4:
	dec r10
	inc byte [r10]
	inc r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start3_4
jump_end3_3:
	inc r10
	cmp byte [r10], 0
	je jump_end3_4
jump_start3_5:
	cmp byte [r10], 0
	je jump_end4_3
jump_start4_4:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start4_4
jump_end4_3:
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end4_4
jump_start4_5:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start4_5
jump_end4_4:
	inc r10
	inc r10
	inc r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start3_5
jump_end3_4:
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end3_5
jump_start3_6:
	dec byte [r10]
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start3_6
jump_end3_5:
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end3_6
jump_start3_7:
	inc byte [r10]
	inc byte [r10]
	inc r10
	cmp byte [r10], 0
	jne jump_start3_7
jump_end3_6:
	inc r10
	cmp byte [r10], 0
	je jump_end3_7
jump_start3_8:
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec r10
	cmp byte [r10], 0
	jne jump_start3_8
jump_end3_7:
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end3_8
jump_start3_9:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start3_9
jump_end3_8:
	inc r10
	cmp byte [r10], 0
	jne jump_start2_3
jump_end2_2:
	dec r10
	cmp byte [r10], 0
	jne jump_start1_11
jump_end1_10:
	inc r10
	cmp byte [r10], 0
	je jump_end1_11
jump_start1_12:
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end2_3
jump_start2_4:
	inc byte [r10]
	inc r10
	inc r10
	inc byte [r10]
	inc r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start2_4
jump_end2_3:
	inc byte [r10]
	inc r10
	inc r10
	inc byte [r10]
	inc r10
	inc r10
	inc r10
	inc byte [r10]
	inc r10
	cmp byte [r10], 0
	je jump_end2_4
jump_start2_5:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start2_5
jump_end2_4:
	inc r10
	dec byte [r10]
	inc r10
	inc byte [r10]
	inc r10
	cmp byte [r10], 0
	je jump_end2_5
jump_start2_6:
	inc r10
	cmp byte [r10], 0
	je jump_end3_9
jump_start3_10:
	dec byte [r10]
	inc r10
	inc byte [r10]
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc r10
	inc r10
	inc byte [r10]
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end4_5
jump_start4_6:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start4_6
jump_end4_5:
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	dec r10
	dec r10
	dec r10
	inc byte [r10]
	inc byte [r10]
	dec r10
	dec r10
	dec r10
	inc byte [r10]
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end4_6
jump_start4_7:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start4_7
jump_end4_6:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start3_10
jump_end3_9:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	je jump_end3_10
jump_start3_11:
	inc r10
	cmp byte [r10], 0
	je jump_end4_7
jump_start4_8:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start4_8
jump_end4_7:
	inc byte [r10]
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start3_11
jump_end3_10:
	dec r10
	dec r10
	dec r10
	dec r10
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	je jump_end3_11
jump_start3_12:
	dec r10
	dec r10
	inc byte [r10]
	inc byte [r10]
	dec r10
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end4_8
jump_start4_9:
	dec byte [r10]
	dec r10
	dec r10
	dec r10
	inc byte [r10]
	cmp byte [r10], 0
	jne jump_start4_9
jump_end4_8:
	dec byte [r10]
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc r10
	inc r10
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc r10
	inc r10
	inc r10
	inc byte [r10]
	inc byte [r10]
	dec r10
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start3_12
jump_end3_11:
	dec r10
	dec r10
	dec r10
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end3_12
jump_start3_13:
	dec byte [r10]
	dec r10
	dec r10
	dec r10
	inc byte [r10]
	cmp byte [r10], 0
	jne jump_start3_13
jump_end3_12:
	inc byte [r10]
	inc r10
	dec byte [r10]
	inc r10
	inc r10
	dec byte [r10]
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start2_6
jump_end2_5:
	dec r10
	dec r10
	inc byte [r10]
	dec r10
	dec r10
	inc byte [r10]
	dec r10
	dec r10
	dec r10
	inc byte [r10]
	dec r10
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end2_6
jump_start2_7:
	inc byte [r10]
	dec r10
	inc byte [r10]
	dec r10
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start2_7
jump_end2_6:
	inc byte [r10]
	dec r10
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end2_7
jump_start2_8:
	dec byte [r10]
	inc r10
	inc byte [r10]
	inc r10
	cmp byte [r10], 0
	je jump_end3_13
jump_start3_14:
	dec byte [r10]
	dec r10
	dec byte [r10]
	dec r10
	dec r10
	cmp byte [r10], 0
	je jump_end4_9
jump_start4_10:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start4_10
jump_end4_9:
	inc r10
	cmp byte [r10], 0
	je jump_end4_10
jump_start4_11:
	inc r10
	inc r10
	cmp byte [r10], 0
	je jump_end5_0
jump_start5_1:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start5_1
jump_end5_0:
	dec r10
	dec r10
	inc byte [r10]
	dec r10
	cmp byte [r10], 0
	je jump_end5_1
jump_start5_2:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start5_2
jump_end5_1:
	inc r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start4_11
jump_end4_10:
	cmp byte [r10], 0
	jne jump_start3_14
jump_end3_13:
	dec r10
	cmp byte [r10], 0
	je jump_end3_14
jump_start3_15:
	dec r10
	cmp byte [r10], 0
	je jump_end4_11
jump_start4_12:
	dec r10
	cmp byte [r10], 0
	je jump_end5_2
jump_start5_3:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start5_3
jump_end5_2:
	inc r10
	inc byte [r10]
	inc r10
	inc r10
	cmp byte [r10], 0
	je jump_end5_3
jump_start5_4:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start5_4
jump_end5_3:
	dec r10
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start4_12
jump_end4_11:
	dec r10
	cmp byte [r10], 0
	je jump_end4_12
jump_start4_13:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start4_13
jump_end4_12:
	cmp byte [r10], 0
	jne jump_start3_15
jump_end3_14:
	inc r10
	inc r10
	inc r10
	dec byte [r10]
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	je jump_end3_15
jump_start3_16:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start3_16
jump_end3_15:
	inc byte [r10]
	inc r10
	cmp byte [r10], 0
	jne jump_start2_8
jump_end2_7:
	inc r10
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end2_8
jump_start2_9:
	dec byte [r10]
	dec r10
	dec r10
	cmp byte [r10], 0
	je jump_end3_16
jump_start3_17:
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start3_17
jump_end3_16:
	dec r10
	cmp byte [r10], 0
	jne jump_start2_9
jump_end2_8:
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end2_9
jump_start2_10:
	cmp byte [r10], 0
	je jump_end3_17
jump_start3_18:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start3_18
jump_end3_17:
	dec r10
	cmp byte [r10], 0
	je jump_end3_18
jump_start3_19:
	dec r10
	dec r10
	cmp byte [r10], 0
	je jump_end4_13
jump_start4_14:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start4_14
jump_end4_13:
	inc r10
	inc r10
	inc r10
	inc r10
	inc r10
	inc byte [r10]
	inc r10
	cmp byte [r10], 0
	je jump_end4_14
jump_start4_15:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start4_15
jump_end4_14:
	dec r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start3_19
jump_end3_18:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	je jump_end3_19
jump_start3_20:
	inc r10
	cmp byte [r10], 0
	je jump_end4_15
jump_start4_16:
	inc r10
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start4_16
jump_end4_15:
	dec r10
	dec r10
	dec r10
	dec r10
	inc byte [r10]
	inc r10
	cmp byte [r10], 0
	je jump_end4_16
jump_start4_17:
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	jne jump_start4_17
jump_end4_16:
	inc r10
	inc r10
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start3_20
jump_end3_19:
	inc r10
	cmp byte [r10], 0
	jne jump_start2_10
jump_end2_9:
	dec r10
	dec r10
	dec r10
	dec r10
	dec r10
	dec r10
	cmp byte [r10], 0
	je jump_end2_10
jump_start2_11:
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec r10
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end3_20
jump_start3_21:
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end4_17
jump_start4_18:
	dec byte [r10]
	cmp byte [r10], 0
	je jump_end5_4
jump_start5_5:
	dec r10
	dec byte [r10]
	inc r10
	inc r10
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	dec r10
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	inc byte [r10]
	cmp byte [r10], 0
	je jump_end6_0
jump_start6_1:
	dec byte [r10]
	cmp byte [r10], 0
	jne jump_start6_1
jump_end6_0:
	cmp byte [r10], 0
	jne jump_start5_5
jump_end5_4:
	cmp byte [r10], 0
	jne jump_start4_18
jump_end4_17:
	cmp byte [r10], 0
	jne jump_start3_21
jump_end3_20:
	dec r10
	inc byte [r10]
	dec r10
	inc byte [r10]
	cmp byte [r10], 0
	jne jump_start2_11
jump_end2_10:
	inc r10
	cmp byte [r10], 0
	jne jump_start1_12
jump_end1_11:
	inc r10
	inc r10
	cmp byte [r10], 0
	jne jump_start0_4
jump_end0_3:










	mov rdi, rax ; return code with zero
	mov rax, 60 ; sys_exit
	;mov rax, 0
	syscall