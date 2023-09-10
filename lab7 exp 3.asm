.model small

.stack 
.data 
 .code 
  main proc
    
    mov ax ,@data 
    mov ds , ax 
    mov ax , 5
    mov bx , 10
    
    push ax
    push bx
    
    call addition 
    
    pop bx 
    pop bx
    
    .exit
     main endp 
  
  addition proc
    
    push bp
    mov bp , sp 
     
     mov ax , 0
     add ax , [bp+4 ]
     add ax ,[bp+6]
     
     pop bp
     
     ret

  