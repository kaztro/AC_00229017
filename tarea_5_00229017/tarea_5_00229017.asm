org 	100h

section .text

	call 	grafico	; Llamada a iniciar modo grafico 13h

	xor 	si, si
	xor 	di, di

	mov 	si, 115d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_h

	mov 	si, 145d ; X -> Columna
	mov 	di, 55d ; Y -> Fila
	call 	linea_h

	mov 	si, 155d ; X -> Columna
	mov 	di, 75d ; Y -> Fila
	call 	linea_h
    
	mov 	si, 115d ; X -> Columna
	mov 	di, 175d ; Y -> Fila
	call 	linea_h

    mov 	si, 155d ; X -> Columna
	mov 	di, 95d ; Y -> Fila
	call 	linea_h2
    
    mov 	si, 145d ; X -> Columna
	mov 	di, 145d ; Y -> Fila
	call 	linea_h2

	mov	    si, 115d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_v

	mov	    si, 205d ; X -> Columna
	mov 	di, 75d ; Y -> Fila
	call 	linea_v

	mov	    si, 205d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_v2

	mov	    si, 145d ; X -> Columna
	mov 	di, 55d ; Y -> Fila
	call 	linea_v3

    mov	    si, 185d ; X -> Columna
	mov 	di, 95d ; Y -> Fila
	call 	linea_v3

	mov	    si, 155d ; X -> Columna
	mov 	di, 75d ; Y -> Fila
	call 	linea_v4

	call 	kb		; Utilizamos espera de alguna tecla

	int 	20h

grafico:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	mov	ah, 0Ch
	mov	al, 1010b
	int 	10h
	ret

linea_h: 
lupi_h:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 205d
	jne 	lupi_h
	ret

linea_h2: 
lupi_h2:mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 185d
	jne 	lupi_h2
	ret

linea_v:
lupi_v:	mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 175d
	jne 	lupi_v
	ret

linea_v2:
lupi_v2:mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 55d
	jne 	lupi_v2
	ret

linea_v3:
lupi_v3:mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 145d
	jne 	lupi_v3
	ret

linea_v4:
lupi_v4:mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 95d
	jne 	lupi_v4
	ret

kb: 	mov	ah, 00h
	int 	16h
	ret

section .data