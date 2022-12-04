.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DW "I AM FROM MAIN PROCEDURE $"
MSG2 DW "I AM FROM SECOND PROCEDURE $"
MSG3 DW "I AM FROM THIRD PROCEDURE $"
.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 2
     MOV DX, 0AH
     INT 21H
     MOV DX, 0DH
     INT 21H 
     
     CALL SECOND
     CALL THIRD
     
     MOV AH, 4CH
     INT 21H
     MAIN ENDP  


SECOND PROC
     
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 2
     MOV DX, 0AH
     INT 21H
     MOV DX, 0DH
     INT 21H
     SECOND ENDP

THIRD PROC
       
     LEA DX, MSG3
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 2
     MOV DX, 0AH
     INT 21H
     MOV DX, 0DH
     INT 21H
     THIRD ENDP
END MAIN