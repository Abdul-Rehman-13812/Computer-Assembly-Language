.model small

.data 

array dw 23, 45, 12, 8, 56, 34, 19, 6, 72, 10
array dw 8 dup(?)

.code

mov ax , @data 
mov dx , ax

mov bx , offset array  
mov si , 0

mov cx , 10  
innerloop:


mov al , [bx + si] 
add si ,1
cmp al , [bx + si-1]
jl smaller

xchg al,[bx+si]
xchg al ,[bx+si-1]

smaller:
dec cx
jnz innerloop

dec cx

jnz outerloop
.exit




 
