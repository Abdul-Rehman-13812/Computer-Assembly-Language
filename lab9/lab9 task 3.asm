.model small 

.data

tem dw 0
.code

main  proc
    
mov ax , @data
mov ds , ax 

call num1
mov dx , 0

call num2
adc ax, dx

MOV CX, 4
MOV SI ,0

L1:

MOV dx , 0
div si 

mov dl , 0x30
mov ah , 2
int 21
loop l1

.exit
main Endp 

proc num1
    
    mov ah , 1
    int 21h
    sub al , 0x30
    mov dl , al
    mov cl , 4
    shl dl , cl
    int 21h 
    
    
     sub al , 0x30
    mov dh , al
    mov cl , 4
    shl dh , cl
    or dh , dl 
      
    int 21h     
    
    
     sub al , 0x30
    mov bl , al
    mov cl , 4
    shl bl , cl
    int 21h    
    
     sub al , 0x30
    mov bh , al
    mov cl , 4
    shl bh , cl
    or bh,bl 
    mov ax , dx
        
  
   ret   
    Endp    num1
 
 num2 proc 
    mov tem , ax
   mov ah , 1
    int 21h
    sub al , 0x30
    mov dl , al
    mov cl , 4
    shl dl , cl
    int 21h 
    
    
     sub al , 0x30
    mov dh , al
    mov cl , 4
    shl dh , cl
    or dh , dl 
      
    int 21h     
    
    
     sub al , 0x30
    mov bl , al
    mov cl , 4
    shl bl , cl
    int 21h    
    
     sub al , 0x30
    mov bh , al
    mov cl , 4
    shl bh , cl
    or bh,bl 
    mov ax , dx
    mov ax , tem
           
   ret   
   Endp    num2