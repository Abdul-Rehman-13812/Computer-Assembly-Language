;past paper v1 ques 2 

.model small

.data

num1 db 0x77, 0x00,0xab, 0x67,0xef,0x45,0xcd,0x54
num2 db 0x45, 0xef,0x87,0xb9,0x6b,0x45,0xff,0x23
result db 8(?)

.code

mov ax , @data
mov dx , ax 

mov si , offset num1
mov di , offset num2
mov bx , offset result

mov cx , 8 
mov ah , 0

add_loop:

mov al , [si]
adc al , [di]
mov [bx] , al 

inc si 
inc bx 

loop add_loop
        
        
mov ah , 0x4c        
int 21h 

.exit