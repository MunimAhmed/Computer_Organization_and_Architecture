.MODEL SMALL
.STACK 100H
.DATA 

MSG0 DB 'Welcome to my calculator!!',0DH, 0AH, '$'
MSG1 DB 'Please enter a Hex Digit (A-F) : $'
MSG2 DB 0DH,0AH,'In Decimal it is : $'   
MSG3 DB 'WRONG INPUT : $'
MSG4 DB 0DH, 0AH, 'THANK YOU FOR USING MY CALCULATOR',0DH,0AH,'$'
MSG5 DB 'HAVE A GOOD DAY',0DH,0AH,'$'
MSG6 DB 0DH, 0AH,'WRONG INPUT! PLEASE TRY AGAIN $'
 
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
     
     MOV AH, 01H 
     INT 21H
     MOV BL, AL
     
     CALL TASK
     
     WRONG_EXIT:
     LEA DX, MSG6 
     MOV AH, 09H
     INT 21H 
 
     EXIT:
     MOV AH, 4CH
     INT 21H 
     MAIN ENDP 

TASK PROC 
     
     CMP BX, 'A'
     JGE IF
     JL WRONG_EXIT
       
     IF: 
     CMP BX, 'F'
     JLE IF2
     JG WRONG_EXIT
     
     IF2:
     LEA DX, MSG2 
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 02H 
     MOV DL, 31H
     INT 21H
     
     SUB BL, 11H 
     MOV DL, BL 
     INT 21H 
     
     LEA DX, MSG4 
     MOV AH, 09H
     INT 21H
     
     LEA DX, MSG5 
     MOV AH, 09H
     INT 21H  
     JMP EXIT
     TASK ENDP
     
END MAIN