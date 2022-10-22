.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC
    MOV AX,'Z'
    MOV BX,'K'
    MOV CX,'E'
     
      
    CMP AX,BX
    JL IF1
    JMP ELSE1
    
    
    IF1:
    MOV AX,'0'
    MOV DX,AX
    MOV AH,2
    MOV DX,DX
    INT 21H
    JMP EXIT
    

    ELSE1:
    CMP BX,CX
    JL IF2
    JMP ELSE2
    
    
    IF2:
    MOV BX,'0'
    MOV AH,2
    MOV DX,BX
    INT 21H
    JMP EXIT 
    
    ELSE2:
    MOV CX,'0'
    MOV AH,2
    MOV DX,CX
    INT 21H
    JMP EXIT
    
    
    
    
EXIT:
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN