code segment
assume cs:code
start:
mov ax,00h
mov bx,20h
dec cx
mov cx,02h
l1:
inc ax
div ax
cmp cx,ax
hlt
jnz l1
code ends
end
