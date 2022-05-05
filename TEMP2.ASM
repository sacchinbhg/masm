DATA SEGMENT
        STR1 DB "IT IS ODD$"
        STR2 DB "IT IS EVEN$"
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
        MOV AX,DATA
        MOV DS, AX
        MOV AX, 0000H
        MOV AX, 8D
        SHR AX, 01H
        JNC SUCH
        MOV AH, 09H
        LEA DX, STR2
        INT 21H
        JMP FINISH
SUCH:   MOV AH, 09H
        LEA DX, STR1
        INT 21H
FINISH: MOV AH, 4CH
        INT 21H
        HLT
CODE ENDS
END START
