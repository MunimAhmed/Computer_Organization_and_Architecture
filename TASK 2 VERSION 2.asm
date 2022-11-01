.MODEL SMALL
.STACK 100H 
.DATA  

Asteric1 DB '**********', 0AH, 0DH, '$'
Asteric2 DB '*        *', 0AH,0DH, '$'
N DB '* MUNIM  *', 0AH, 0DH, '$'


.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
  
    
    LEA DX, Asteric1
    MOV AH, 09H
    INT 21H 
    
    MOV BX, 0
    
    START:
    CMP BX, 3
    JL IF
    JGE ELSE
    
    IF:
    LEA DX, Asteric2
    MOV AH, 09H
    INT 21H 
    ADD BX, 1
    
    
    JMP START
    
    ELSE:  

    LEA DX, N
    MOV AH, 09H
    INT 21H 
    
    MOV BX, 0
    
    START2:  
    
    CMP BX, 4
    JL IF2
    JGE ELSE2
    
    IF2:
    LEA DX, Asteric2
    MOV AH, 09H
    INT 21H 
    ADD BX, 1
    
    
    JMP START2
    
    ELSE2:
    LEA DX, Asteric1
    MOV AH, 09H
    INT 21H 
    

 EXIT:
    
    MOV AH, 4CH
    INT 21H 
    MAIN ENDP  

END MAIN
    
    