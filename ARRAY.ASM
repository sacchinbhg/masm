DATA SEGMENT
        NUM1 DB 3H,5H,7H,4H,1H
DATA ENDS
CODE SEGMENT
        ASSUME DS:DATA, DS:CODE
START:
        MOV AX,DATA
        MOV DS,AX
        MOV CX,5H
        LEA SI, NUM1
        MOV AX, 0000H
LOOP1:  ADD AX, [SI]
        INC SI
        DEC CX
        JNZ LOOP1
        HLT
CODE ENDS
END START
