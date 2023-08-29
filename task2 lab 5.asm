.model small   

.data

arrayA dw 1h,2h,3h,4h,11,5h,6h,7h,8h,10h,9h,12h,13h,14h,15h,16h,17h,18h,19h,20h      
arrayb dw 1h,2h,3h,4h,11,5h,6h,7h,8h,10h,9h,12h,13h,14h,15h,16h,17h,18h,19h,20h
arrayc dw 20 dup(?)

.code

mov ax , @data
mov ds , ax


mov si, 0

mov cx, 19

mov ax ,[arrayA+si] 
mov dx , [arrayb+si] 

    

mov bx , offset arrayc

mov [arrayc+si], ax


l1:
  add si,1
mov ax ,[arrayA+si] 
mov dx , [arrayb+si] 

add ax , dx 

mov [arrayc+si] , ax


loop l1

.exit
 


