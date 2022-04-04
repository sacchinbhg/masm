.model small
.stack 200
.code
start:
mov ax,1111h
mov bx,1111h
add ax,bx
int 03h
end start 
