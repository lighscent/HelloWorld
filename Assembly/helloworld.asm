section .data
    hello db 'Hello World !', 0xA, 0    ; Notre string avec newline et null terminator

section .text
    global _start

_start:
    ; write system call
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, hello      ; message à écrire
    mov edx, 14         ; longueur du message
    int 0x80            ; appel système

    ; exit system call
    mov eax, 1          ; sys_exit
    mov ebx, 0          ; status de sortie
    int 0x80            ; appel système