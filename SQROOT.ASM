ASSUME CS:CODE
CODE SEGMENT
START:
        MOV CX, 00H
        MOV BX, 64D
SUCH:   INC CX
        MOV AX, CX
        MUL CX
        CMP AX, BX
        JNZ SUCH
        HLT
CODE ENDS
END START
