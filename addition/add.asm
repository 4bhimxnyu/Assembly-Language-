global _start

section.data
    num1 db 10
    num2 db 20\

section.text

_start:
    mov al,9
    mov bl,2
    add al,bl


    mov eax,1 
    int 80h