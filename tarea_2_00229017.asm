org 100h

;Primer ejercicio: 00229017-> (2+2+9+0+1+7)/6 -> 21/6 = 3.5


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


