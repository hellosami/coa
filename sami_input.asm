; oah is for line feed (moves to next output line) & odh is for carriage return.
; Carriage return has ASCII value 13 or 0XD & Linefeed has value 10 or 0XA.
; Carriage return means to return to the beginning of the current line without advancing downward.

.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 'ENTER A CHARACTER: $'    ;DB = BYTE
MSG2 DB 'YOUR CHARACTER IS: $'

.CODE

MAIN PROC

;ACCESSING DATA
MOV AX, @DATA
MOV DS, AX

MOV AH, 9

LEA DX, MSG1
INT 21H

MOV AH, 1
INT 21H ; INPUT->AL  ;TAKES INPUT, 'A' WILL GO TO AL


MOV DL, AL
MOV AH, 2 ; LOOKS IN DL
INT 21H       ; IT IS DEPEND ON THE VALUE OF AH, 9 = I WANT TO DISPLAY


MAIN ENDP
END MAIN ; PROGRAM FINISH    

; USER DEFINED FUNCTION SHOULD BE WRITTEN UNDER THE MAIN PROCEDURE