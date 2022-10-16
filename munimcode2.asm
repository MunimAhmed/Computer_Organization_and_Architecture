; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.CODE


MAIN PROC
    MOV AL,'C'
    MOV BL,'B'
    MOV AH,2
        CMP AL,BL
        JNBE ELSE_
        MOV DL,AL
        JMP DISPLAY
    ELSE_:
        MOV DL,BL
    DISPLAY:
        INT 21H
    

EXIT:
MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN



