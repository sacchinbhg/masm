codeseg segment
assume CS: codeseg
start:
        MOV AL,03H
        MOV BH,03H
        ADD AL,BH
        HLT
codeseg ends
end
