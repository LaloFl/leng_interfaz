.model small
.stack

.data
str1 db 'Hola$'
str2 db 'soy$'
str3 db 'Diego$'

.code
mov ah, 00h
mov al, 03h
int 10h

mov ax, @data
mov ds, ax

mov ah, 09h
lea dx, str1
int 21h

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, str2
int 21h

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, str3
int 21h

.exit
end