;**********************************************************
; AREAT.ASM
;
; Este programa multiplica dos variables de un byte sin
; signo.
;**********************************************************
;****** CÓDIGO DE INICIO **********************************
		ideal
		dosseg
		model small
		stack 			256
;****** VARIABLES DEL PROGRAMA ****************************
				dataseg
		codsal 		db 		0
		dato1 		db 		?
		dato2 		db 		?
		dato3 		db		?
		resul 		dw 		?
;****** CÓDIGO DEL PROGRAMA *******************************
		codeseg
inicio:
		mov 		ax, 		@data ; Inicializa el
		mov 		ds, 		ax ; segmento de datos
		mov 		al, 		[dato1] ; resul = dato1 * dato2   esto va a l el dato1
		mul 		[dato2]
		mov 		[resul], 	ax   ; esto es guarda en ax la respuesta o resultado y luego se pasa a resul
		; dividendo esta en ax
		div 		[dato3]		; divisor es fuente un byte
		mov			[resul],		ax; cociente esta en al	

salir:
		mov 		ah, 		04Ch
		mov 		al, 		[codsal]
		int 		21h
;****** CÓDIGO DE TERMINACIÓN *****************************
end inicio