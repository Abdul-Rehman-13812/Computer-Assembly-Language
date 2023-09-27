.model small

.data

.code     

start:

mov ax , @data
mov ds , ax

mov ax ,0
mov es , ax

mov es:[65*4] ,isr65
mov es:[65*4+2] , cs

mov ah , 0
mov si , 2
mov di , 3

 
 Endp start

 MOV AH,1
 INT 21H
 SUB AL,30h

isr65: 

  
cmp al , 1
je addition  


cmp al , 2
je multiplecation 

cmp al , 3 
je division    
   
   jmp exit
   iret

 addition: 
   
 add si , di
mov bx , si  

jmp exit

    mov ah ,0x9
    int 21h
    
 multiplecation:
 
 mul si
 mov bx , si
    jmp exit
 
  division:  
  
  div si
  mov ax,si  
  
  exit:
  
  