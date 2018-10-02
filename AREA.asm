
ideal
dosseg
model small
stack 256
;****** VARIABLES DEL PROGRAMA ****************************
dataseg
codsal db 0
const  db 2
base db ?
altura db ?
area dw ?
;****** CÓDIGO DEL PROGRAMA *******************************
codeseg
inicio:
 mov ax, @data 
 mov ds, ax 
 mov al, [base] 
 mul [altura]
 mov [area], ax
 mov ah,09h
lea dx,msj6 ;desplegar div
int 21h
xor ax,ax ;limpiamos el registro ax. 
mov al,const
mov bl,al
mov al,area
div bl ;	

salir:
 mov ah, 04Ch
 mov al, [codsal]
 int 21h
;****** CÓDIGO DE TERMINACIÓN *****************************
 end inicio