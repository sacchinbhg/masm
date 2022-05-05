DATA SEGMENT
    NUMBERS DB 38H, 29H, 89H, 45H, 46H
DATA ENDS

CODE SEGMENT 
ASSUME CS: CODE, DS: DATA
START: MOV AX, DATA
       MOV DS, AX
       MOV CH, 05H

UP2: MOV CL, 05H
     LEA SI, NUMBERS

UP1: MOV AL, [SI]
     MOV BL, [SI+1]
     CMP AL, BL
     JC DOWN
     MOV DL, [SI+1]
     XCHG [SI], DL
     MOV [SI+1], DL

DOWN: INC SI
      DEC CL
      JNZ UP1
      DEC CH
      JNZ UP2
      INT 3
      CODE ENDS
      END START
