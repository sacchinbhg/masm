code segment
assume cs:code
start:
mov ah,36h
mov al,46h
add ah,al
mov al,ah
and al,0fh
cmp al,9h
ja l1
pushf
pop cx
and al,04h
cmp cl,01h
ja l1
l1:
add al,06h
;and al,0fh
mov al,ah
and bl,0f0h
cmp bl,09h
ja l2
pushf
pop cx
and cl,00h
cmp cl,01h
ja l2
l2:
add bl,06h
and bl,0f0h
add al,bl
hlt
code ends 
end start
 