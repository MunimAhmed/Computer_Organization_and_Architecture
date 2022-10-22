.MODEL SMALL
.STACK 100H
.DATA
  
  MSG DB "Hello World $"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    
    MOV BX, 1
    CMP BX, 0
    JGE IF
    
    IF:    
    LEA DX,MSG
    MOV AH, 09H
    INT 21H  
    
    MOV AH,2 
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    JMP IF  
    
    MOV AH, 4CH
    INT 21H 
    MAIN ENDP  

END MAIN
    
    