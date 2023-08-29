;lab 5 task 1 
.model small

.data
array db 1 ,2, 3 ,4,5,6,7,8,9,10   
sum db ?

.code
mov ax ,@data
mov dx, ax

mov bx , offset array
mov si , 0 
mov cx, 9 
mov al ,[bx +si]


l1:  
inc si
add al ,[bx+si]

loop l1

mov bx , offset sum
mov [bx] , al 



 
 .exit