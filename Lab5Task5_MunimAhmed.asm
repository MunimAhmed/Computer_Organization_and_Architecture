.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC
    MOV AX,'Z'
    MOV BX,'K'
    MOV CX,'E'
     
      
    CMP AX,BX
    JL IF
    CMP BX,CX
    JL IF
    JMP ELSE
    
    
    IF:
    MOV DX,'0'
    MOV AH,2
    MOV DX,DX
    INT 21H
    JMP EXIT
    

    
    ELSE:
    MOV DX,'1'
    MOV AH,2
    MOV DX,DX
    INT 21H
    JMP EXIT
    
    
    
EXIT:
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN