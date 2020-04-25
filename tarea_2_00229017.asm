org 100h

;Primer ejercicio: 00229017-> (2+2+9+0+1+7)/6 -> 21/6 = 3.5


mov ax, 0000h

add ax, 2d
add ax, 2d
add ax, 9d
add ax, 1d
add ax, 7d

mov cl, 6d

div cl ;R=3 -> Hay salud