.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC
    MOV AL,4
     
      
    CMP AL,1
    JE IF_1
    CMP AL,3
    JE IF_1
    
    CMP AL,2
    JE IF_2
    CMP AL,4
    JE IF_2
    
    JMP EXIT
   
    
    IF_1:
    MOV BX,'O'
    MOV AH,2
    MOV DX,BX
    INT 21H
    JMP EXIT

    
    IF_2:
    MOV BX,'E'
    MOV AH,2
    MOV DX,BX
    INT 21H
    JMP EXIT 

    
    
    
    
EXIT:
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN