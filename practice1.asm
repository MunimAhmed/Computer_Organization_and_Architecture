.MODEL SMALL
.STACK 100H
.DATA
  
  MSG1 DB "THE NUMBER IS NEGATIVE $"
  MSG2 DB "THE NUMBER IS POSITIVE $"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    
    MOV BX, 10
    
    CMP BX, 0
    JL IF
    JGE ELSE
    
    IF:    
    LEA DX,MSG1
    MOV AH, 09H
    INT 21H 
    
    JMP END_IF  
    
    ELSE: 
    LEA DX,MSG2
    MOV AH, 09H
    INT 21H  
    
    JMP END_IF  
    
    END_IF:
    
    MOV AH, 4CH
    INT 21H 
    MAIN ENDP  

END MAIN
    
    