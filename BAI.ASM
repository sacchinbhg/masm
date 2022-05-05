code segment
assume cs:code
start:
mov ax,04h
mov bx,02h
add ax,bx
mov si,2000h
mov [si],ax
hlt
code ends
end