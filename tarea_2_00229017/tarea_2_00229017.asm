org 100h

;primer ejercicio: 00229017-> (2+2+9+0+1+7)/6 -> 21/6 = 3.5
mov ax, 0000h
add ax, 2d
add ax, 2d
add ax, 9d
add ax, 1d
add ax, 7d
mov cl, 6d
div cl ;Rrespuesta=3 -> Hay salud

mov cl, "H"
mov [200h], cl
mov cl, "a"
mov [201h], cl
mov cl, "y"
mov [202h], cl
mov cl, ""
mov [203h], cl
mov cl, "s"
mov[204h], cl
mov cl, "a"
mov [205h], cl
mov cl, "l"
mov [206h], cl
mov cl, "u"
mov [207h], cl
mov cl, "d"
mov [208h], cl

;Segundo ejercicio: 
mov     ax, 0000h
mov     al, 2d
mov     bx, 210h
mov     cx, 2d

estTot: mul     cx
        mov [bx], ax
        cmp ah, 00h
        ja segcell
        cmp ah, 00h
        je primcell

segcell: add bx, 2h
         jmp n

primcell: add bx, 1h

n: cmp bx, 21Fh
    jb estTot

;Tercer ejercicio: 
mov ax, 0000h
mov     ax, 0d
mov     [220h], ax      ;Condicion(0) = 0
mov     ax, 1d
mov     [221h], ax      ;Condicion(1) = 1
mov     bx, 222h

fibi:  mov ax, 0000h
            mov [bx], ax
            sub bx, 2h
            mov al, [bx]
            add bx, 1h
            add ax, [bx]
            add bx, 1h
            mov [bx], ax
            add bx, 1h
            cmp bx, 22Fh
            jb  fibi

            int 20h