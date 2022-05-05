codeseg segment
assume CS: codeseg
start:
        MOV AL,03H
        MOV BH,03H
        MUL AL,BH
        HLT
codeseg ends
end
