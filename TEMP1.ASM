DATA SEGMENT
        STR1 DB "SACCHIN SUNDAR$"
        LEN1 DW $-STR1
        STR2 DB 30 DUP(?)
DATA ENDS
CODE SEGMENT
        ASSUME CS: CODE, DS:DATA

START:  MOV AX, DATA
        MOV DS, AX
        MOV CX, LEN1
        ADD CX, -2
        LEA SI, STR1
        LEA DI, STR2
        ADD SI, CX
SUCH:   MOV AL, [SI]
        MOV [DI], AL
        INC DI
        DEC SI
        LOOP SUCH
        MOV AL, [SI]
        MOV [DI], AL
        INC DI
        MOV DL, "$"
        MOV [DI], DL
PRINT:  MOV AH, 09H
        LEA DX, STR1
        INT 21H
        MOV DX, 13
        MOV AH, 2
        INT 21H
        MOV DX, 10
        MOV AH, 2
        INT 21H
        MOV AH, 09H
        LEA DX, STR2
        INT 21H
EXIT:   MOV AH, 4CH
        INT 21H
CODE ENDS
END START
