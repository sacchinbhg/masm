data segment
array db 07h,09h,05h,12h,03h,04h
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov cl,06
xoR di,di
LEA bx,Array
mov dl,Min
L1:
mov al,[bx+di]
LMP dl,al
JL L2
INC di
DEC cl
CMP cl,00
JNZ L1
L2:
mov SI,2000
mov [SI],al
JMP L1
HLT
code ends
data ends
end


