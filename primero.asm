;**********************************************************
; PRIMER.ASM.
;
; Este programa ilustra la estructura de un programa en
; ensamblador. También muestra las principales directivas
; para el ensamblador.
;**********************************************************
;****** CÓDIGO DE INICIO **********************************
ideal
dosseg
model small
stack 256
;****** DECLARACIÓN DE CONSTANTES SIMBÓLICAS **************
cte equ 10
;****** VARIABLES DEL PROGRAMA ****************************
dataseg
codsal db 0
dato1 db ?
dato2 db ?
resul db ?
;****** CÓDIGO DEL PROGRAMA *******************************
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

;****** CÓDIGO DE TERMINACIÓN *****************************
end inicio