data segment public 
extrn res:word
data ends
public fact
code2 segment public 
fact proc far
Assume cs:code2,ds:data
mov ax,01
mov cl,[si]

repet:	mul cx
	loop repet
	mov res,ax
	ret
	fact endp
	code2 ends
	end	