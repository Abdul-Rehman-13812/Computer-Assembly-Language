.model small  
org 100h
.data

.code


start:
   
    mov ax, 3525h     
    mov bx, offset isr 
    int 21h            

    
    mov ah, 4Ch        
    int 21h           

isr:
    pusha              

    
    mov ah, [si]       
    cmp ah, 1          
    je service_1       
    cmp ah, 2          
    je service_2      
    cmp ah, 3         
    je service_3      

service_1:
    
    mov ax, [si]       
    add ax, [di]       
    mov [bx], ax      
    jmp isr_done

service_2:
   
    mov ax, [si]       
    mul [di]           
    mov [bx], ax      
    jmp isr_done

service_3:
    
    mov ax, [si]       
    mov bl, [di]       
    xor ah, ah        
    div bl            
    mov [si], al      
    mov [di], ah     

isr_done:
    popa              
    iret              

end start
