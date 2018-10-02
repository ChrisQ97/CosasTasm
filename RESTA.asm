;**********************************************************
; RESTA.ASM
;
; Este programa resta dos variables de tipo palabra.
;**********************************************************
;****** CÓDIGO DE INICIO **********************************
	ideal
	dosseg
	model small
	stack 256
	;****** VARIABLES DEL PROGRAMA ****************************
	dataseg
codsal db 0
dato1 dw ?
dato2 dw ?
resul dw ?
;****** CÓDIGO DEL PROGRAMA *******************************
	codeseg
inicio:
	mov ax, @data ; Inicializa el
	mov ds, ax ; segmento de datos
	mov ax, [dato1] ; resul = dato1 - dato2
	sub ax, [dato2]
	mov [resul], ax
salir:
	mov ah, 04Ch
	mov al, [codsal]
	int 21h
;****** CÓDIGO DE TERMINACIÓN *****************************
end inicio