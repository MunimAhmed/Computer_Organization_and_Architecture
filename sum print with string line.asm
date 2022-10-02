
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data

msg db 0ah,0dh,'THE SUM OF '
A db ?, ' AND '
B db ?, ' IS '
SUM db ? , '$'


.code
main proc 
    
   mov ax, @data
   mov ds, ax
   
   mov ah, 2
   mov dl, '?'
   int 21h
   
   mov ah, 1
   int 21h
   mov A, al
   
   mov ah, 1
   int 21h 
   mov B, al
   
   add al, A 
   sub al, 30h
   mov SUM, al
   
   lea dx,msg
   mov ah, 9
   int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main



