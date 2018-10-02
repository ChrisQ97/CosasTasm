;**********************************************************
; MULTI.ASM
;
; Este programa multiplica dos variables de un byte sin
; signo.
;**********************************************************
;****** CÓDIGO DE INICIO **********************************
		ideal
		dosseg
		model small
		stack 256
;****** VARIABLES DEL PROGRAMA ****************************
			dataseg
		codsal db 0
		dato1 db ?
		dato2 db ?
		resul dw ?
;****** CÓDIGO DEL PROGRAMA *******************************
codeseg
inicio:
		mov ax, @data ; Inicializa el
		mov ds, ax ; segmento de datos
		mov al, [dato1] ; resul = dato1 * dato2
		mul [dato2]
		mov [resul], ax
salir:
		mov ah, 04Ch
		mov al, [codsal]
		int 21h
;****** CÓDIGO DE TERMINACIÓN *****************************
end inicio