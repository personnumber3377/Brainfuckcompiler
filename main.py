
# This program compiles brainfuck code. (It first compiles it into assembly and then into an executable.)

import sys
import os

start_stuff = '''


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







'''


end_stuff = '''









	mov rdi, rax ; return code with zero
	mov rax, 60 ; sys_exit
	;mov rax, 0
	syscall'''



global_output = ""

INCREMENT_DATA_POINTER = "	inc r10\n"
DECREMENT_DATA_POINTER = "	dec r10\n"
INCREMENT_BYTE = "	inc byte [r10]\n"
DECREMENT_BYTE = "	dec byte [r10]\n"
OUTPUT_BYTE = "	call output_byte\n"
ACCEPT_BYTE = "	call accept_byte\n"


INSTRUCTIONS = {">":INCREMENT_DATA_POINTER, "<":DECREMENT_DATA_POINTER, "+":INCREMENT_BYTE, "-":DECREMENT_BYTE, ".":OUTPUT_BYTE, ",":ACCEPT_BYTE}


all_start_loop_things = []
all_end_loop_things = []

def start_of_loop(jump_counter):

	'''
	This is basically this in assembly:

	cmp byte [r10], 0
	je jump_end0
jump_start0:

	'''

	global all_start_loop_things
	global all_end_loop_things

	global global_output
	global_output += "	cmp byte [r10], 0\n"
	print("jump_counter-1 == "+str(jump_counter-1))
	global_output += "	je jump_end"+str(jump_counter)+"_"+str(all_end_loop_things.count(jump_counter+1))+"\n"
	global_output += "jump_start"+str(jump_counter)+"_"+str(all_start_loop_things.count(jump_counter))+":\n"

	return


def end_of_loop(jump_counter):

	'''
	This is basically this in assembly:

	cmp byte [r10], 0
	jne jump_start0
jump_end0:

	'''
	global global_output

	global all_start_loop_things
	global all_end_loop_things

	global_output += "	cmp byte [r10], 0\n"
	global_output += "	jne jump_start"+str(jump_counter-1)+"_"+str(all_start_loop_things.count(jump_counter-1))+"\n"
	global_output += "jump_end"+str(jump_counter-1)+"_"+str(all_end_loop_things.count(jump_counter))+":\n"
	print("all_start_loop_things == "+str(all_start_loop_things))
	print("jump_counter-1 == "+str(jump_counter-1))

	return



def emit(opcode, jump_counter):
	global global_output
	global all_loop_things
	if opcode == "[" or opcode == "]":
		if opcode == "[": # Start of the loop. First check for zero and if zero, then jump to "jump_end"+str(jump_counter)
			all_start_loop_things.append(jump_counter)
			start_of_loop(jump_counter)
			return jump_counter+1
		else:
			end_of_loop(jump_counter)
			all_end_loop_things.append(jump_counter)
			return jump_counter-1

	if opcode not in INSTRUCTIONS.keys():
		return jump_counter

	global_output += INSTRUCTIONS[opcode]
	#print("all_end_loop_things == "+str(all_end_loop_things))
	#print("all_start_loop_things == "+str(all_start_loop_things))
	#print("INSTRUCTIONS[opcode] == "+str(INSTRUCTIONS[opcode]))
	return jump_counter

def process_char(character, jump_counter, contents):

	jump_counter = emit(character, jump_counter)
	return jump_counter


def main():

	# RAX is the data pointer.
	global global_output

	fh = open(sys.argv[1], "r")

	contents = fh.read()

	if contents[-1] == "\n":
		contents = contents[:-1]

	fh.close()

	jump_counter = 0
	contents = list(contents)

	for char in contents:
		jump_counter = process_char(char, jump_counter, contents)

	print(start_stuff)
	print(global_output)
	print(end_stuff)

	final_output = start_stuff+global_output+end_stuff

	fh = open("./final_assembly.asm", "w+")

	fh.write(final_output)
	fh.close()


	# Assemble and link. (This python program is not an assembler or a linker. This just converts brainfuck to assembler.)

	os.system("nasm final_assembly.asm -felf64 -o binary.o")
	os.system("ld binary.o -o binary")
	os.system("rm binary.o")
	os.system("rm final_assembly.asm")

	return 0


if __name__=="__main__":
	exit(main())



