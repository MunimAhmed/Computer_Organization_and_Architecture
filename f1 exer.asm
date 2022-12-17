.MODEL SMALL
.STACK 100H
.DATA
MSG1 DW "PLEASE ENTER A NUMBER:",0AH,0DH,"$"
MSG2 DW 0AH,0DH,"NOT A NUMBER",0AH,0DH,"$"
MSG3 DW 0AH,0DH,"EVEN NUMBER",0AH,0DH,"$"
MSG4 DW 0AH,0DH,"ODD NUMBER",0AH,0DH,"$"

MAIN PROC
    MOV AX,@DATA
    MOV DS, AX
    
    LEA DX, MSG1
    MOV AH, 9
    INT 21H    
    
    MOV AH, 1
    INT 21H
    
    CMP AL, 30H
    JL NOT_NUMBER
    CMP AL, 39H
    JG NOT_NUMBER
    
    NUMBER:
    TEST AL,1
    JZ EVEN  
    
    ODD:
    LEA DX, MSG4
    MOV AH, 9
    INT 21H 
    JMP EXIT
    
    EVEN:
    LEA DX, MSG3
    MOV AH, 9
    INT 21H 
    JMP EXIT
    
    
    NOT_NUMBER:
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN