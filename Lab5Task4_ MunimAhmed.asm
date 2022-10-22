.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC
    MOV AX,'A'
    MOV BX,'F'
    MOV CX,'E'
     
      
    CMP AX,BX
    JL IF1
    JMP EXIT
    
    IF1:
    CMP BX,CX
    JL IF2
    JMP ELSE
    
    IF2:
    MOV AX,'0'
    MOV BX,AX
    MOV AH,2
    MOV DX,BX
    INT 21H
    JMP EXIT

    
    ELSE:
    MOV BX,'0'
    MOV AH,2
    MOV DX,BX
    INT 21H
    JMP EXIT
    
    
    
EXIT:
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN