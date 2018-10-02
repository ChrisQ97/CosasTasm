;**********************************************************
; PRIMER.ASM.
;
; Este programa ilustra la estructura de un programa en
; ensamblador. Tambi�n muestra las principales directivas
; para el ensamblador.
;**********************************************************
;****** C�DIGO DE INICIO **********************************
ideal
dosseg
model small
stack 256
;****** DECLARACI�N DE CONSTANTES SIMB�LICAS **************
cte equ 10
;****** VARIABLES DEL PROGRAMA ****************************
dataseg
codsal db 0
dato1 db ?
dato2 db ?
resul db ?
;****** C�DIGO DEL PROGRAMA *******************************
codeseg
inicio:
mov ax, @data ; Inicializa el 
mov ds, ax ; segmento de datos

mov al, [dato1]
add al, [dato2]
add al, cte
mov [resul], al

salir:
mov ah, 04Ch
mov al, [codsal]
int 21h

;****** C�DIGO DE TERMINACI�N *****************************
end inicio