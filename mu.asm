data segment 
arr db 09,04,02,08,03
small db  ?
large db  ?
count db 5
data  ends

code segment
assume cs:code,ds:data
   start:
     mov ax,data
     mov ds,ax
     lea bx,arr
     lea si,arr
      mov ch,5
outer: mov al,[bx]
       mov  cl,ch
       mov si,bx
inn:cmp al,[si]
       jl swap
cont: inc si
      dec cl
      jnz inn
      inc bx
      dec ch
      jnz outer
      jmp halt

swap:
     mov [bx],al
     xchg al,[si]
     mov [bx],al
     jmp cont
halt:mov al,[arr]
     mov large,al
     mov al,[arr+4]
     mov small,al
     hlt
     code ends
     end start
