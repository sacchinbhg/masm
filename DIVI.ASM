code segment
assume cs:code
start:
  mov ax,0b9a8h
  and ax,00f0h
  ;div ax
hlt
code ends
end
  
