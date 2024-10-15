section .data
    fizz db "Fizz"
    buzz db "Buzz"
    newline db 0x0A

    div1 dq 3
    div2 dq 5

section .text
    global _start

_start:
    mov r8, 0
    call _loopStart

    mov rax, 60
    mov rdi, 0
    syscall

_loopStart:
    inc r8
    call _printNewline
    cmp r8, 100
    jne _checkFizz
    ret
_checkFizz:
    mov rax, r8
    cqo
    mov rbx, [div1]
    idiv rbx
    cmp rdx, 0
    jnz _checkBuzz
    call _printFizz
_checkBuzz:
    mov rax, r8
    cqo
    mov rbx, [div2]
    idiv rbx
    cmp rdx, 0
    jnz _loopEnd
    call _printBuzz
    jmp _loopStart
_loopEnd:
    mov rax, r8
    cqo
    mov rbx, [div1]
    idiv rbx
    cmp rdx, 0
    jz _loopStart
    call _printNumber
    jmp _loopStart

_printFizz:
    mov rax, 1
    mov rdi, 1
    mov rsi, fizz
    mov rdx, 4
    syscall
    ret

_printBuzz:
    mov rax, 1
    mov rdi, 1
    mov rsi, buzz
    mov rdx, 4
    syscall
    ret

_printNewline:
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall
    ret

_printNumber:
    mov rax, r8
    cqo
    mov rbx, 10
    idiv rbx
    mov r9, rax
    add r9, '0'
    mov r10, rdx
    add r10, '0'
    push r9
    mov rax, 1
    mov rdi, 1
    mov rsi, rsp
    mov rdx, 1
    syscall
    pop r9
    push r10
    mov rax, 1
    mov rdi, 1
    mov rsi, rsp
    mov rdx, 1
    syscall
    pop r10
    ret
