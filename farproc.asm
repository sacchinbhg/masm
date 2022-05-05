data segment public
 fac db  05
 res dw ?
 data ends
 stack segment word
 dw 20 dup(0)
 top label word
 stack ends
 public res
 code2 segment public
 extrn fact:far
 code2 ends
 code1 segment
 assume cs:code1,ds:data
 start:
       mov ax,data
       mov ds,ax
       mov ax,stack
       mov ss,ax
       mov sp,offset top
       mov si,offset fact
       call fact
       HLT
       code1 ends
       end start

