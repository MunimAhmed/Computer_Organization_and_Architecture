.MODEL SMALL
.STACK 100H
.DATA
  
  MSG DB "Hello World $" 
  MSG2 DB "BYE $" 

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX       
    
    MOV BX, 0
    
    START: 
    CMP BX, 5
    JL IF  
    JGE ELSE   
 
    
    IF: 
    MOV AX, BX
    ADD AX, 1
    MOV BX, AX
       
    LEA DX,MSG
    MOV AH, 09H
    INT 21H  
    
    MOV AH,2 
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    JMP START     
    
    ELSE:   
    LEA DX,MSG2
    MOV AH, 09H
    INT 21H  
    
    MOV AH,2 
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    JMP EXIT:
    
    

 EXIT:
    
    MOV AH, 4CH
    INT 21H 
    MAIN ENDP  

END MAIN
    
    