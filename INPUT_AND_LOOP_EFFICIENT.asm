.MODEL SMALL
.STACK 100H

.DATA
MSG DB 'ENTER A CHARACTER:$'

.CODE

MAIN PROC

MOV AX, @DATA
MOV DS, AX



MOV AH, 9
LEA DX, MSG
INT 21H


MOV AH, 1 
INT 21H
MOV BL, AL

;LINE BREAK
MOV AH, 2
MOV DL, 10D
INT 21H  

MOV DL, 13D
INT 21H


MOV AH, 2

MOV CX, 10D

L:

MOV DL, BL
INT 21H


MOV DL, 10D
INT 21H  

MOV DL, 13D
INT 21H
LOOP L
    
MAIN ENDP