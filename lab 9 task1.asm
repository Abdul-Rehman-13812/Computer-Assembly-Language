.model small

.data

msg db "input number$"
hexanum db ? 

.code
mov ax , @data
mov ds , ax 
     
     
mov dx , offset msg 
mov ah , 9
int 21h

mov ah ,0ah   
MOV bX , offset hexanum

int 21h
mov hexanum , ah

jmp exit




mov ah , 0x4c
int 21h
exit:

.exit