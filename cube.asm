 data segment
 num dw 04h
 m dw 03h
 data ends
 code segment:
 assume cs:code,ds:data
 start:
 mov ax,data
 mov ds,ax
 dec m
 l1:
 mov dx,num
 mul ax
 hlt code ends
 end start
 end






















