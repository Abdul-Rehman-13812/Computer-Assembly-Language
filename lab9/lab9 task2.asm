.model small 
.data

msg db "this is the 16 bit value$"
num dw 1023h
.code

mov ax , @data 
mov ds , ax



mov ah ,0x9  
int 21h

mov bx , offset num
mov ax , [bx]

mov si ,10h
mov cx  ,4h

l1:
mov dx , 0
div si 

add dl , 30h
PUSH dx

loop l1

push bp

mov bp ,sp
mov si , 0 
mov cx , 4

mov ah , 2

l2:
add si , 2
mov dx , [bp+si]
int 21h

loop l2
 



        
      
 
 
 
 
 
mov ah , 0x4c
int 21h

.exit
