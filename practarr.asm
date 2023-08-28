.model small
   .stack 100h
.data 

 arr1 dw 1,2,3,4,5,6,4,7,8,5
 
 
 
.code

mov ax , @data
mov ds, ax

mov si , offset arr1   

mov dx , [si] 
   mov dx,[si+1]
mov ah ,2   


int 21h 




 
 
            
     .exit
