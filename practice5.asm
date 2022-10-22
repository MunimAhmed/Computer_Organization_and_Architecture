.MODEL SMALL
.STACK 100H 
.DATA


.CODE
MAIN PROC  
    
    MOV BX, 2
    
    CMP BX, 1
    JE PRINT1
    JNE IF1
    
    IF1:
    CMP BX, 3
    JE PRINT1
    JNE IF2
    
    IF2:
    CMP BX, 2
    JE PRINT2
    JNE IF3
    
    IF3:
    CMP BX, 4
    JE PRINT2
    JNE EXIT
    
    
    PRINT1: 
    MOV BX, 'O'
    MOV AH,2
    MOV DX, BX
    INT 21H
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    JMP EXIT
    
    PRINT2:
    MOV BX, 'e' 
    MOV AH,2
    MOV DX, BX
    INT 21H
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    JMP EXIT
    
    

 EXIT:
    
    MOV AH, 4CH
    INT 21H 
    MAIN ENDP  

END MAIN
    
    