code segment
assume cs:code,ds:code
          org 1000h
                 mov ax,12h
                 mov bx,12h
                 add ax,bx
                 mov si,1200h
                 mov[si],ax
                 hlt
                 code ends
                 end
