section .data
    hello db 'Hello?', 0

section .text
    global _start

_start:
    mov eax, 4           ; syscall number for sys_write
    mov ebx, 1           ; file descriptor 1 is stdout
    mov ecx, hello       ; message to write
    mov edx, 13          ; message length
    int 0x80             ; make kernel call

    mov eax, 1           ; syscall number for sys_exit
    xor ebx, ebx         ; return 0 status
    int 0x80             ; make kernel call