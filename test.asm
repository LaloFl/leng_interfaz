.model small
.stack 50

.data
str_ db 'hola $'

.code
mov ax, @data
mov ds, ax

mov ah, 0
mov al, 3
int 10h ; LIMPIAR


mov dl, ncol
mov dh, nrow
mov  bh, 0
mov  ah, 02h
int 10h

mov ah, 9
lea dx, str_
int 21h

.exit
end