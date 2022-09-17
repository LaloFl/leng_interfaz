.model small
.stack

.data
titulo db 'Encuesta de aptitudes para trabajo$'

preg1 db '1. Cual es tu nombre?$'
preg2 db '2. Que carrera cursas?$'
preg3 db '3. Que semestre cursas?$'
preg4 db '4. Cual es tu promedio?$'
preg5 db '5. Que especialidad tomaste o te gustaria tomar?$'
preg6 db '6. Prefieres trabajar solo o en equipo?$'
preg7 db '7. Que otra carrera te habria gustado cursar?$'
preg8 db '8. Sabes ingles?$'
preg9 db '9. Que campo de tu carrera te parece mas interesante?$'
preg10 db '10. Que tecnologias de desarrollo de software conoces?$'

.code
mov ah, 00h
mov al, 03h
int 10h

mov ax, @data
mov ds, ax ; LECTURA DE CADENAS EN @data

mov ah, 09h
lea dx, titulo
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg1
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg2
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg3
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg4
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg5
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg6
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg7
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg8
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg9
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

mov ah, 09h
lea dx, preg10
int 21h ; IMPRIMIR

mov ah, 02h
mov dl, 0ah
int 21h
mov ah, 02h
mov dl, 0dh ; SALTO DE LINEA

.exit
end