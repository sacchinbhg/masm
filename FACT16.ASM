CODE SEGMENT
ASSUME CS:CODE
START:
        MOV CX, 4H
        MOV AX, 1H
        MOV BX, 2H
        SUB CX, BX

LOOP1:  MUL CX
        LOOP LOOP1
        MOV CX, 4H
        MOV BX, AX
        MOV AX, 1H
LOOP2:  MUL CX
        LOOP LOOP2
        DIV BX
        MOV CX, 2H
        MOV BX, AX
        MOV AX, 1H
LOOP3:  MUL CX
        LOOP LOOP3
        XCHG AX,BX
        DIV BX
        HLT
        CODE ENDS
        END START














