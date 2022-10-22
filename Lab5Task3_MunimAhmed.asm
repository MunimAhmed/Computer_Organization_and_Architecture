.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC
    MOV DL,'F' 
      
    CMP DL,'A'
    JGE IF1
    JMP EXIT
    
    IF1:
    CMP DL,'Z'
    JLE IF2
    JMP EXIT
    
    IF2:
    JMP DISPLAY

   
    
    
    DISPLAY:
    MOV AH,2
    MOV DL,DL
    INT 21H
    JMP EXIT
EXIT:
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN