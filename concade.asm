DATA SEGMENT
str1 DB 'HELLO'
str2 DB 'KITTY'
COUNT EQU ($-str1)
COUNT1 EQU($-str2)
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
      MOV AX,DATA
      MOV DS,AX
      MOV CX,COUNT
      MOV DX,COUNT1
      LEA bx,str2
      mov di,bx
      lea bx,str1
      mov si,bx
loop1:     
      cmp [si],'$'
      je loop2
      inc si
      jmp loop1
loop2: cmp [di],'$'
       je loop3
       mov al,[si]
       mov ah,[di]
       inc si
       inc di
       jmp loop2
loop3:
       inc si
       mov [si],'$'
       lea dx,str1
       mov ah,09h
       int 21h
       ret
       HLT
      CODE ENDS
      END START


