code segment
start:
mov dx,05h
mov bx,00h
mov cx,01
mov ax,00
add bx,cx
add ax,bx
mov si,bx
mov  bx,cx
mov cx,si
l1:dec dx
jnz l1
dec cx
hlt
loop l1
code ends
end start

