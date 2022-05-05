code segment
assume cs:code
start:
mov cx,04
mov ax,00
mov bx,ax
li:
inc bx
add ax,bx
cmp bx,cx
jnz li
hlt
code ends
end
