.MODEL SMALL
.STACK 100H

.DATA
TEXT1 DB 'HELLO$'
TEXT2 DB 'WORLD$'
TEXT3 DB '!$'

MAIN PROC

;ACCESSING DATA
MOV AX, @DATA
MOV DS, AX

;TEXT1
LEA DX, TEXT1

;MOV AH, 9
;INT 21H

;TEXT2

LEA DX, TEXT2

;MOV AH, 9
;INT 21H

;TEXT3

LEA DX ,TEXT3

MOV AH, 9
INT 21H



    
MAIN ENDP
END MAIN