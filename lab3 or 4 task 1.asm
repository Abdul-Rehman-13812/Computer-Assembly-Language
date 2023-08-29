;lab3 task 1
.model small  

 .stack 100h 
 
  .data
  
 .code
 
 mov word ptr   [0x1000] , 0x1F00
 mov word ptr  [0x1001],  0x1F00
 mov word ptr  [0x1002],  0x1254
 mov word ptr  [0x1003],   0x34EF
 mov word ptr  [0x1004],   0x8700 
 
 add ax , [0x1000]
 add ax , [0x1001]
 add ax , [0x1002]
 add ax , [0x1003]
 add ax , [0x1004]
 
 mov bx , 0xCD1Fh 
 
 mov es , bx 
     
 mov word ptr es: [000eh] , ax
           
           
;lab 4 task 1

.model small

.data
.code

mov word ptr  [0x1000] ,  0x1F540398

mov word ptr  [0x1001] ,   0xC0A1F02E

add ax , [0x1000]

add ax , [0x1001]

mov bx ,  0x1010

mov es, bx

mov word ptr es :[000eh] , ax 

.exit       
 
    
   
                             
 
 
 
 