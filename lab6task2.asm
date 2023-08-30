;lab6 task 2 
.model small

.data

array dw 1,2,3,4,5,5,5,5,43,32,3,2,4,3,43,34,54,65,76,8

.code

mov ax , @data
mov dx ,ax  

mov bx ,offset array
mov cx , 20 

sort_loop:

mov si , 0 
mov di , 0 

inner_loop: 
mov ax ,[array+si*2]
mov bx ,[array+di*2]

cmp ax , bx 
jbe skip_swap


skip_swap:
inc si
inc di
loop inner_loop



display_loop:
mov al , [si]
add si , 2
loop display_loop  

mov ah , 4ch
int 21h
.exit




