.model small

.data

.code

mov ax , @data 
mov ds , ax

mov ax, 0
mov es, ax

mov word ptr es:[0], isr0
mov word ptr  es :[2], cs


mov ax , 100
mov bl , 0

div bl 

.exit

jmp l1

isr0 proc

msg db "divided by 0$"
l1:

mov dx , offset msg
mov ah, 09
int 0x21

iret
isr0

 endp

