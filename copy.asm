data segment
arr db 05h dup(0)
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
call copy
hlt
copy proc near
lea di,arr
mov al,05h
mov cl,04h
l1: mov [di],al
inc di
loop l1
ret
copy endp
code ends
end start

