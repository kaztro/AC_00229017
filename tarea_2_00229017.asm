org 100h

section .text

      mov di, 0d
      mov cx, [len]

lupi: mov bl, [comnt + di]
      mov [di + 200h], bl
      inc di
      loop lupi

      int 200h

section .data

comnt .data

comnt db    "Me recupero"
len   equ   $-comnt