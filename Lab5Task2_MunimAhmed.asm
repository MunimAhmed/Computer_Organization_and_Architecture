.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
   MOV AL,-1
   CMP AL,0
   
   JL IF
   JMP ELSE
   
   IF:
   MOV AX, 31H 
   JMP DISPLAY
   
   ELSE:
   MOV AX, 30H
   JMP DISPLAY
   
   DISPLAY:
   MOV AH, 2
   MOV DX,AX
   INT 21H
    

EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN

