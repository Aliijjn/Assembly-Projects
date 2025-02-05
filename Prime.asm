section .data
    newline db 0x0A
    zeroAscii db 0x30

section .text
    global _start

_start:
    mov r8, 1
    call _loop
    mov rax, 60
    mov rdi, 0
    syscall

_loop:
    inc r8
    cmp r8, 100000
    je _return
    call _checkPrime
    cmp r9, 0
    jz _loop
    call _initPrint
    jmp _loop
_return:
    ret

_checkPrime:
    mov r9, 1
_loopPrime:
    inc r9
    mov r10, r9
    imul r10, r9
    cmp r10, r8
    ja _returnTrue
    mov r10, r9
    inc r10
_loopModulo:
    dec r10
    cmp r10, 1
    je _loopPrime
    mov rax, r8
    mov rbx, r10
    xor rdx, rdx
    div rbx
    cmp rdx, 0
    jnz _loopModulo
_returnFalse:
    mov r9, 0
    ret
_returnTrue:
    mov r9, 1
    ret

_initPrint:
    mov r10, 0
    mov r9, r8
_divideNum:
    mov rax, r9
    mov rbx, 10
    xor rdx, rdx
    div rbx
    mov r9, rax
    inc r10
    add rdx, '0'
    push rdx
    cmp r9, 0
    jne _divideNum
_printNum:
    mov rsi, rsp
    mov rax, 1
    mov rdi, 1
    mov rdx, 1
    syscall
    pop rsi
    dec r10
    cmp r10, 0
    jne _printNum
    call _printNewline
    ret

_printNewline:
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall
    ret