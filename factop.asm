data segment
fac db 05h
res dw ?
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea si,fac
mov al,01h
mov cl,[si]
l1:mul cl
loop l1
hlt
code ends
end


