.model small
 
 .data
.code 

mov qword ptr[0x1000] , 0x1F540398
mov qword ptr [ 0x1008], 0xC0A1F02E

mov eax , dword ptr [0x1000] 
mov edx , dword ptr [0x1004] 
mov ebx , dword ptr [0x1008] 
mov ecx , dword ptr [0x100c]

add eax , ebx 
add edx , ecx 

mov qword ptr  [0x1010]  , eax 
mov qword ptr [0x1014] , edx 

int 21h

 