code segment
assume cs:code

start:
mov ax,01h
mov cx,05h

ab:
mul cx
loop ab

hlt
code ends
end 
