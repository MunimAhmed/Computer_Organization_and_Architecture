; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.CODE


MAIN PROC
MOV CX,255
MOV BL,0
TOP:
MOV AH,2
MOV DL,BL
INT 21H
INC BL
DEC CX
JNZ TOP

EXIT:
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN

ret


