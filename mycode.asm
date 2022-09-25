
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt  


org 100h

.MODEL SMALL
.STACK 100H
.DATA

A DW 2h
B DW 5h
SUM DW ?
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX,A
    ADD AX,B
    ;MOV SUM,AX
    
EXIT:
MOV AX,4CH
INT 21H

MAIN ENDP
END MAIN

ret




