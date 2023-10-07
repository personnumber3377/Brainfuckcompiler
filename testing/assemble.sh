#!/bin/sh

nasm assembly.asm -felf64 -o binary.o
ld binary.o -o binary


