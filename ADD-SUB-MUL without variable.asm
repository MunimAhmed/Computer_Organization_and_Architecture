
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
   
    MOV AX,3H 
    MOV BX,2H
    ADD AX,BX  
    
    
    MOV AX,3H 
    MOV BX,2H
    SUB AX,BX
    
    
    MOV AX,3H 
    MOV BX,2H
    MUL BX
    
    
    MOV ah,4ch
    INT 21h
    MAIN ENDP
END MAIN
    





