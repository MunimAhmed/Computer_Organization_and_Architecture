
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.code 



main proc 
    
    mov ah, 2
    mov dx,077 ;
    int 21h 
    
    mov ah, 2
    mov dx,085 ;
    int 21h  
    
    mov ah, 2
    mov dx,078 ;
    int 21h    
    
    mov ah, 2
    mov dx,073 ;
    int 21h  
    
    mov ah, 2
    mov dx,077 ;
    int 21h  
    


    mov ah,4ch
    int 21h
    main endp
end main



