.MODEL SMALL
.STACK 100H

.DATA
;SAMI DB 'HELLO WORLD!$' ;DB = BYTE  

N DB 'NAME: ABDVLLAH $'
I DB 'ID: 19-3783-2 $'
L DB 'LOCATION: DHAKA BANGLADESH $'
linefeed db 13, 10, "$"

MAIN PROC
MOV AX, @DATA ; I WANT TO ACCESS IN THE DATA
MOV DS, AX

MOV AH, 9
LEA DX, N    

INT 21H ; IT IS DEPEND ON THE VALUE OF AH, 9 = I WANT TO DISPLAY             


LEA DX, I    

INT 21H ; IT IS DEPEND ON THE VALUE OF AH, 9 = I WANT TO DISPLAY         

LEA DX, L    

INT 21H ; IT IS DEPEND ON THE VALUE OF AH, 9 = I WANT TO DISPLAY
    
MOV AH, 4CH ; 4CH = DOS EXITS
INT 21H  



    
MAIN ENDP  
END MAIN ; PROGRAM FINISH

; USER DEFINED FUNCTION SHOULD BE WRITTEN UNDER THE MAIN PROCEDURE      


