global _start

; Define the stack frame
section .data
; data goes here
    hello db "Hello,World!",10
    len equ $-hello

section.text

_start:
; Write the string to the console
    mov eax,4  ; write to file
    mov ebx,1  ; STDOUT handle
    mov ecx,hello ; the message we sent in section.data
    mov edx,len  ; size of the message
    int 80h    ; execute the syscall

    xor ebx,ebx ; send = as 'exit code'
    mov eax,1 ; terminate process
    int 80h ; execute the syscall