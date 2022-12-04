.MODEL SMALL
.STACK 100H
.DATA 



MSG0 DB 'Welcome to my calculator!!',0DH, 0AH, '$'
MSG1 DB 'PLEASE ENTER DIGIT 1 :',0DH,0AH, '$'
MSG2 DB 0DH,0AH, 'PLEASE ENTER DIGIT 2 :',0DH,0AH, '$'
MSG3 DB 0DH, 0AH, 'OUTPUT: ', 0DH, 0AH,'$'  
MSG4 DB 0DH, 0AH, 'THANK YOU FOR USING MY CALCULATOR $'
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
     
          
     LEA DX, MSG2 
     MOV AH, 09H
     INT 21H  
        
     MOV AH, 01H 
     INT 21H
     MOV BH, AL
     
     CALL TASK 
     
     LEA DX, MSG4 
     MOV AH, 09H
     INT 21H 
 
     MOV AH, 4CH
     INT 21H 
     MAIN ENDP 

TASK PROC 
     
     ADD BH, BL  
     SUB BH, 30H
     LEA DX, MSG3 
     MOV AH, 09H
     INT 21H
     
     MOV AH, 2
     MOV DL, BH
     INT 21H
     TASK ENDP
     RET

END MAIN
