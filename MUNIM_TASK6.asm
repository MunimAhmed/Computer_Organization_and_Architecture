.MODEL SMALL
.STACK 100H
.DATA 


MSG1 DB 'Please enter a Letter :',0DH, 0AH, '$'
MSG2 DB 0DH,0AH,'Output:', 0DH,0AH, '$'  

.CODE  

 MAIN PROC
     MOV AX, @DATA 
     MOV DS, AX  
     
     LEA DX, MSG1 
     MOV AH, 09H
     INT 21H  
     
     MOV AH, 01H 
     INT 21H
     MOV BL, AL
     
     CALL TASK
 
     EXIT:
     MOV AH, 4CH
     INT 21H 
     MAIN ENDP 

TASK PROC 
     
     XOR BL, 00100000b
     LEA DX, MSG2 
     MOV AH, 09H
     INT 21H
     
     MOV AH, 2
     MOV DL, BL
     INT 21H
     TASK ENDP
     

END MAIN

