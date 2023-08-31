.model small
.data 
.code

main proc
mov ax,5
mov bx , 10

push ax
push bx 

call addition 


    


.exit  

main endp


addition proc 
    
    mov bp ,sp
    mov ax ,0 
    add ax, [bp+4]
    add ax , [bp+6]
    
    pop bp 

