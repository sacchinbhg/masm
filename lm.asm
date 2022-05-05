
data segment
m dw 5h
array dw 10h,30h,90h,50h,70h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
dec m
mov cx,m
mov si,0
mov bx,array[si]
add si,2
start_loop:
mov dx,array[si]
cmp dx,bx
jbe big
mov bx,array[si]
big:
add si,2
loop start_loop
hlt
code ends
end start
