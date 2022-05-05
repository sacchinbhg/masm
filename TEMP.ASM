CODE SEGMENT
ASSUME CS:CODE
START:
        MOV AX, 01H
        MOV BX, 01H
        MOV CX, 04H
SAC:    MUL BX
        INC BX
        CMP BX,CX
        JNZ SAC
        HLT
CODE ENDS
END START
