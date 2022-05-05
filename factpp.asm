data segment
fac db 05h
res dw ?
data ends
code segment
assume cs:code,ds:data
start:
     mov ax,data
     mov ds, ax
     lea si,fact
     call fact
     mov res,ax
     hlt
     fact proc near
     mov al,01h
     mov cl,[si]
     l1:mul cx
     loop l1
     mov res,ax
     ret
     fact endp
     code ends
     end start
