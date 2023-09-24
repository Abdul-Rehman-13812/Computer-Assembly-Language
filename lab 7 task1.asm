.model small
.data
arr1 db 1, 2, 3, 4, 5
arr2 db 1, 2, 3, 4, 5
arr3 db 5 dup(?) ; Reserve space for arr3 with the same size as arr1 and arr2

.code
main proc
    mov ax, @data
    mov ds, ax

    mov bx, offset arr1
    mov dx, offset arr2
    mov ax, 5

    push bx
    push dx
    push ax

    mov cx, 5

    call sum

    ; Display the contents of arr3 to verify the result
    mov si, 0

print_loop:
    mov dl, arr3[si]   ; Load the current element of arr3 into DL
    add dl, '0'         ; Convert it to ASCII
    mov ah, 02h         ; AH = 02h (function to print character)
    int 21h             ; DOS interrupt to print character

    inc si              ; Move to the next element
    loop print_loop     ; Repeat for the entire array

    ; Exit the program
    mov ah, 4Ch         ; AH = 4Ch (function to exit)
    int 21h             ; DOS interrupt to exit

main Endp

sum proc
    push bp
    push cx
    push si

    mov bp, sp
    mov cx, [bp + 8]    ; Load the size of the arrays from the parameter
    mov ax, [bp + 10]   ; Load the address of arr1
    mov bx, [bp + 12]   ; Load the address of arr2
    mov di, offset arr3 ; Load the address of arr3

    mov si, 0

sum_loop:
    mov al, [ax + si]   ; Load the current element of arr1 into AL
    add al, [bx + si]   ; Add the current element of arr2 to AL
    mov [di + si], al   ; Store the result in the corresponding element of arr3

    inc si
    loop sum_loop       ; Repeat for the entire array

    pop si
    pop cx
    pop bp
    ret

sum Endp
    
