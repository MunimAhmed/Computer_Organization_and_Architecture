.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB "TYPE A CHARACTER $"
MSG2 DB 0DH,0AH,"THE ASCII CODE OF $"
MSG3 DB " IN BINARY IS $" 
MSG4 DB 0DH,0AH,"THE NUMBER OF 1 BIT IS $"
.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 1
     INT 21H
     
     XOR BX, BX
     MOV BL, AL
     
     LEA DX, MSG2
     MOV AH,09H
     INT 21H
     
     MOV DL,BL
     MOV AH, 2
     INT 21H
     
     LEA DX, MSG3
     MOV AH, 09H
     INT 21H
     
     CALL TASK 
                    
     MOV AH, 4CH
     INT 21H
     MAIN ENDP    

TASK PROC     
     MOV CX, 8
     MOV BH, 0
     
     BINARY:
     
     SHL BL,1
     JNC ZERO 
     INC BH
     MOV DL, 31H
     JMP DISPLAY
     
     ZERO:
     
     MOV DL, 30H
     
     DISPLAY:
     MOV AH,2 
     INT 21H
     
     LOOP BINARY
     
     ADD BH, 30H 
     
     LEA DX, MSG4
     MOV AH,9
     INT 21H
     
     MOV DL, BH
     MOV AH, 2
     INT 21H 
     
     TASK ENDP
     

END MAIN