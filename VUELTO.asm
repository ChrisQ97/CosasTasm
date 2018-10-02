
 ideal
 dosseg
 model small
 stack 256
;****** VARIABLES DEL PROGRAMA ****************************
 dataseg
codsal db 0
dinero dw ?
pago dw ?
vuelto dw ?
;****** CÓDIGO DEL PROGRAMA *******************************
 codeseg
inicio:
 mov ax, @data 
 mov ds, ax 
 mov ax, [dinero] 
 sub ax, [pago]
 mov [vuelto], ax
salir:
 mov ah, 04Ch
 mov al, [codsal]
 int 21h
;****** CÓDIGO DE TERMINACIÓN *****************************
 end inicio