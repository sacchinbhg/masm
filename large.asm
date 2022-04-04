data1 segment
array dw 03h,05h,02h,07h,08h
m dw 5h

data1 ends

code1 segment
assume cs:code1,ds:data1

start:
mov ax,data1
mov ds,ax
dec m
mov cx,m
mov si,0
mov bx,array[si]
add si,2
l1:
mov dx,array[si]
cmp bx,dx
jae big
mov bx,array[si]
big:
add si,2
loop l1
hlt
code1 ends
end start


