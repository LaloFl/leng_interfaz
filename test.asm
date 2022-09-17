.model small
.stack 50

.data
str db 'hola $'

.code
mov ax, @data
mov ds, ax ; LECTURA DE .data

mov ah, 09
lea dx, str
int 21h

.exit
end