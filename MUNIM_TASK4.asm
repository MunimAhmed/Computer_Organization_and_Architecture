.MODEL SMALL
.STACK 100H
.DATA 

MSG0 DB "Welcome User! $"
MSG1 DB 0DH,0AH, "Please User Enter Letter 1:", 0DH, 0AH,"$"
MSG2 DB 0DH,0AH, "Please User Enter Letter 2:", 0DH, 0AH,"$"
MSG3 DB 0DH,0AH, "Please User Enter Letter 3:", 0DH, 0AH,"$"
L1 DB ?
L2 DB ?
L3 DB ?
.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG0
     MOV AH, 09H
     INT 21H 
     
      
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 1
     INT 21H
     MOV L1, AL
     
       
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 1
     INT 21H
     MOV L2, AL
     
     LEA DX, MSG3
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 1
     INT 21H
     MOV L3, AL
     

     
     CALL TASK 
                    
     MOV AH, 4CH
     INT 21H
     MAIN ENDP    

TASK PROC     
     MOV AH,2 
     MOV DL, 0AH
     INT 21H
     MOV DL, 0DH
     INT 21H
     MOV DL, L1
     INT 21H 
     MOV DL, 0AH
     INT 21H
     MOV DL, 0DH
     INT 21H
     
     MOV AH,2
     MOV DL, L2
     INT 21H 
     MOV DL, 0AH
     INT 21H
     MOV DL, 0DH
     INT 21H
     
     MOV AH,2
     MOV DL, L3
     INT 21H 
     MOV DL, 0AH
     INT 21H
     MOV DL, 0DH
     INT 21H
     
     TASK ENDP
     

END MAIN