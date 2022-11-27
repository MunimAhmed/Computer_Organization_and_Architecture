.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    XOR BX,BX 
    MOV AH, 1 
    INT 21H 
    
    WHILE_:
    CMP AL, 0DH  
    JE END_WHILE  
    AND AL,0FH 
    SHL BX, 1
    OR BL, AL
    INT 21H
    JMP WHILE_
    
    END_WHILE:
    
    MOV AH,2        
    MOV DL,0AH     
    INT 21H
    MOV DL,0DH      
    INT 21H
    
    MOV CX,8        
    SHL BL,1   
    
    
    TOP:
        JC CF1    
        JNC CF0
        
        CF1:
            MOV DL,'1'
            INT 21H
            SHL BL,1
            DEC CX
            JNZ TOP
            JMP EXIT
            
        CF0:
            MOV DL,'0'
            INT 21H
            SHL BL,1
            DEC CX
            JNZ TOP
            JMP EXIT    
        
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN