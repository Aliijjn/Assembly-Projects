# FizzBuzz_ASM

Welcome to my first assembly project, which is FizzBuzz. While it's usually a very easy exercise, it was extremely tedious, yet challenging in assembly.

## What I've learned from this project: ✅
- The basics of assembly
- How C code translates into assembly

## Dependencies to run the file:
- nasm (assembler for x86-64 Intel assembly on Linux)
- ld (linker, turns object file into an executable)

## How to run the file: (Linux only)
While in the same directory as FizzBuzz.asm run the following commands:

`nasm -f elf64 -o FizzBuzz.o FizzBuzz.asm`

`ld FizzBuzz.o -o FizzBuzz`

`./FizzBuzz`

### This will be the output (until 100):
![unnamed](https://github.com/user-attachments/assets/cc327992-fd5d-4803-8305-3894720337b1)

### Alijn Kuijer, October 2024
