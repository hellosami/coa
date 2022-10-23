; oah is for line feed (moves to next output line) & odh is for carriage return.
; Carriage return has ASCII value 13 or 0XD & Linefeed has value 10 or 0XA.
; Carriage return means to return to the beginning of the current line without advancing downward.

.MODEL SMALL
.STACK 100H

.DATA
MSG1 DB 'THIS IS A MESSAGE1$'
MSG2 DB 0AH, 'THIS IS A MESSAGE2$'
MSG3 DB 0AH, 'THIS IS A MESSAGE3$'

.CODE

MAIN PROC
; ACCESSING DATA
MOV AX, @DATA
MOV DS, AX

MOV AH, 9

LEA DX, MSG1
INT 21H

LEA DX, MSG2
INT 21H

LEA DX, MSG3
INT 21H

MAIN ENDP
END MAIN