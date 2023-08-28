;mov ax , 2
;mov bx , 3
;add ax , bx
;mov ax , 0x4c00
;int 0x21

mov ax , [num1]
mov bx , [num2]
add ax , bx 

num1: db 5
num2:db 3 
mov ax,   0x4c00
int   0x21      
         
         
       
 mov ax ,65
mov bx , 525
add al , bh
mov cl , 220
mov dl , 56  
add cl , dl 

;task 1   

mov ax ,6
add ax ,6 
add ax ,6
add ax ,6
add ax ,6
add ax ,6

 


int 21h 

;task 2 

.model small
.stack 100
.data
.code

mov ax , 5
mov bx , 6
mov cx , 9
mov dx , 8


add ax ,bx  ;add ax and bx 
mov bx , 0
mov bx ,ax  ;value in b is b = 11


sub cx ,dx     ; sub cx and dx 

mov dx , 0
mov dx , cx    ; value in dx is 1

add bx , dx    ; add the values  of( ax+bx) and(dx-cx)
                 ;than new value is c = 12
 
