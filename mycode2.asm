
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.code

main proc
    mov ah,1 ;INPUT
    int 21h
    mov bx,ax 
    
    mov ah, 2
    mov dl,0ah ;new line
    int 21h
    mov dl,0dh ;carries return
    int 21h
    
    mov ah,2 ;OUTPUT
    mov dx,bx
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main






