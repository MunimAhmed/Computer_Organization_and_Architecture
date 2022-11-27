.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV AL,11011100B
    MOV CX,8
    
    REPEAT:
    SHL AL,1
    RCR BL,1
    LOOP REPEAT    
        
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN