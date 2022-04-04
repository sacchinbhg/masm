data segment public
 extrn res: word
 data ends
 public fact
 code2 segment public
 fact proc far
 assume cs:code2,ds:data
 mov ax,01
 mov cl,[si]
 r:mul cl
        loop r
        mov res,ax
        ret
        fact endp
        code2 ends
        end
