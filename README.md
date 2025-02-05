# Assembly Projects

Welcome to this repo, where I store all of my Assembly projects, which currently consists of:
- FizzBuzz
- Prime Number Generator

## FizzBuzz:
The perfect test for beginner programmers, where you have to print out the numbers 1 to 100. If a number is cleanly divisable by 3, you print out "Fizz" and if it's cleanly divisable by 5, you print out "Buzz". This is an easy task in most programming languages, however it took me a while to do in Assembly.

### What I've learned from this project: ✅
- The basics of Assembly
- How Assembly instructions work compared to C code

## Prime Number Generator:
For my second project I wanted to do something more challenging. A prime number generator. Again, it's a relatively easy task in most languages, but quite challenge in Assembly. Learing how to use the stack was also tricky.

### What I've learned from this project: ✅
- How to handle a more complex control flow in Assembly
- How the stack really works

## Running the files:

### Dependencies to run the files: ⚙️
- nasm (assembler for x86-64 Intel assembly on Linux)
- ld (linker, turns object file into an executable)

### How to run the files: (Linux only)
While in the repo's directory, run the following commands:

`nasm -f elf64 -o FizzBuzz.o FizzBuzz.asm` && `ld FizzBuzz.o -o FizzBuzz` && `./FizzBuzz`

### Images
### This will be the output of FizzBuzz (until 100):
![unnamed](https://github.com/user-attachments/assets/cc327992-fd5d-4803-8305-3894720337b1)

### Alijn Kuijer, October 2024 - February 2025
