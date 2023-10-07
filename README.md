## Brainfuck compiler

This python program converts brainfuck files into assembly and then assembles this assembly file to an executable. Technically the "read byte" and "write byte" calls are not compiled, because they are pre-programmed functions in the assembly, but it is close enough to being compiled, so that I think it can be called a compiled language.

I have tested it with the gameoflife.bf program. All other characters other than > < + - , . \[ \] are ignored.

There are probably bugs in it, so feel free to file an issue.

To use just type python3 main.py gameoflife.bf

Then to run the binary just run ./binary


