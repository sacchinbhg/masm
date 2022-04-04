data segment
prim db 50 dup(0)
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov cx,03h
mov bx,02h
lea si,prim
mov [si],1H
inc si
mov [si],2H
inc si

mwhile:
mov bx,02h
mfor:
mov ax,cx
mov dx,00h
div bx

cmp dx,00H
jz nonprm
inc bx
cmp bx,cx
jb mfor

mov [si],cx
inc si
nonprm:
inc cx
cmp cx,50
jb mwhile

hlt
code ends
end start
