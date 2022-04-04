DATA SEGMENT
        NAME1 DB "SACCHIN GANESH SUNDAR$"
        LEN1 DW $-NAME1
        REV1 DB 30 DUP(?)
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE, DS:DATA
START:  MOV AX, DATA
        MOV DS, AX
        MOV CX, LEN1
        MOV BX, CX
        ADD CX, -2
        LEA SI, NAME1
        LEA DI, REV1
        ADD SI, CX
L1:     MOV AL, [SI]
        MOV [DI], AL
        DEC SI
        INC DI
        LOOP L1
        MOV AL, [SI]
        MOV [DI], AL
        INC DI
        MOV DL, "$"
        MOV [DI], DL
PRINT:  MOV AH, 09H
        LEA DX, NAME1
        INT 21H
        MOV DX, 13
        MOV AH, 2
        INT 21H
        MOV DX, 10
        MOV AH, 2
        INT 21H
        MOV AH, 09H
        LEA DX, REV1
        INT 21H
EXIT:   MOV AH, 4CH
        INT 21H
CODE ENDS
END START
