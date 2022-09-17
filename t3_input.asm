.model small
.stack 50

.data
preg db 'Escribe tu nombre: $'
resp db 50 dup(' '), '$'
msg db 'Tu nombre es: $'

.code
mov ax, @data
mov ds, ax

mov ah, 09h
lea dx, preg 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp] 
int 21h ; IN resp

mov ah, 09h
lea dx, msg 
int 21h ; OUT respuesta (parte 1 CONST)

mov ah, 09h
lea dx, offset [resp] 
int 21h ; OUT respuesta (parte 2 VAR INPUT)

.exit
end