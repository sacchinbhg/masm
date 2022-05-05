stack segment
dw 20 dup(0)
top label word
stack ends

code segment
assume cs:code,ss:stack
start:
 mov ax,stack
 mov ss,ax
 mov ax,00h
 mov bx,00h
 mov cx,00h
 mov dx,00h
 mov al,33h
 mov bl,93h
 add al,bl
pushf
pop cx
and cx,0011h
cmp cx,0011h
je l1
mov al,33h
add al,bl
jc l3
pushf
pop cx
and cx,0010h
cmp cx,0010h
jc l2
mov cl,al
and cl,0fh
cmp cl,09h
ja l2
mov cl,al
and cl,0f0h
and cl,90h
ja l3
con: hlt
l1:add al,06h
   jmp con
l2:and al,0fh
   add al,06h
   and ah,0f0h
   add ah,al
   jmp con
l3:
   mov dl,0h
and dl,0f0h
add dl,60h
mov dh,ah
and ah,0fh
add dl,dh
jmp con
code ends
end
