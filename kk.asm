code segment
assume cs:code 
start:
mov bh,05h

mov ah,01h

mov dh,00h
l1:
inc dh
mul dh
cmp dh,bh
jne l1

hlt
code ends
end
