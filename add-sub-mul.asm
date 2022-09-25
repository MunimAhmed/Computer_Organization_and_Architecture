
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA

A DW 3h
B DW 2h
SUM DW ?
SUB1 DW ?
MUL1 DW ? 
.CODE


MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX,A 
    MOV BX,B
    ADD AX,BX
    MOV SUM,AX  
    
    MOV AX,A
    MOV BX,B
    SUB AX,BX
    MOV SUB1,AX
    
    MOV AX,A
    MOV BX,B
    MUL BX
    MOV MUL1,AX
    
    
    MOV ah,4ch
    INT 21h
    MAIN ENDP
END MAIN
    





