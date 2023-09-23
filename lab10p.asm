.model small 

.data

.code

mov ax , @data
 mov dx , ax
 
 mov ax , 0
 mov es , ax
 
 mov word ptr es:[65*4] , isr65
 mov word ptr es:[65*4+2] , cs
 
 
 .exit  
 isr65 proc
    
    mov ah , 0
    mov al , 5
    mov bl , 10 
    int 0x65
 
 

 

 cmp ah, 0
  jmp isr0
  jmp exit
  
  cmp ah , 1
  jmp isr1
  jmp exit
  
  cmp ah,2
  jmp isr2
  jmp exit
  
 
 isr0:
 add al ,bl 
 mov cl, al
 jmp exit
 
 isr1:
 sub bl ,dl 
 mov dh , bl
 jmp exit
 
 isr2:
  mov al, bl
  div bl
  jmp exit


jmp l1:

msg db "Values excuted succeful$"

l1:
mov dx , offset msg
mov ah , 9
int 0x21
  
  
  
  exit:  
  
  
iret  

isr65 Endp 
 