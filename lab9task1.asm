.model small

.data

msg db "input number$"
hexanum db ? 

.code
mov ax , @data
mov ds , ax 
     
mov ah , 0x9 
int 21h
    
mov dx , offset msg 

mov ah ,0x1
int 21h    

sub al,0x30 
mov hexanum , al

jmp exit




mov ah , 0x4c
int 21h
exit:

.exit
