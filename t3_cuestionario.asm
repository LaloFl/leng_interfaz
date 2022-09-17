.model small
.stack 50

.data
titulo db 'Encuesta de aptitudes para trabajo$'

preg1 db 10,13,7,'1. Cual es tu nombre: $'
resp1 db 50 dup(' '), '$'
msg1 db 10,13,7, '1. Tu nombre es: $'

preg2 db 10,13,7,'2. Que carrera cursas: $'
resp2 db 50 dup(' '), '$'
msg2 db 10,13,7, '2. Cursas la carrera de : $'

preg3 db 10,13,7,'3. Que semestre cursas: $'
resp3 db 50 dup(' '), '$'
msg3 db 10,13,7, '3. Cursas el semestre numero $'

preg4 db 10,13,7,'4. Cual es tu promedio: $'
resp4 db 50 dup(' '), '$'
msg4 db 10,13,7, '4. Tu promedio es de: $'

preg5 db 10,13,7,'5. Que especialidad tomaste o te gustaria tomar: $'
resp5 db 50 dup(' '), '$'
msg5 db 10,13,7, '5. La especialidad que tomaste/tomarias es: $'

preg6 db 10,13,7,'6. Prefieres trabajar solo o en equipo: $'
resp6 db 50 dup(' '), '$'
msg6 db 10,13,7, '6. Prefieres trabajar: $'

preg7 db 10,13,7,'7. Que otra carrera te habria gustado cursar: $'
resp7 db 50 dup(' '), '$'
msg7 db 10,13,7, '7. Tu segunda opcion de carrera es: $'

preg8 db 10,13,7,'8. Sabes ingles: $'
resp8 db 50 dup(' '), '$'
msg8 db 10,13,7, '8. Sabes ingles: $'

preg9 db 10,13,7,'9. Que campo de tu carrera te parece mas interesante: $'
resp9 db 50 dup(' '), '$'
msg9 db 10,13,7, '9. El campo mas interesante de tu carrera para ti es: $'

preg10 db 10,13,7, '10. Que tecnologias de desarrollo de software conoces: $'
resp10 db 50 dup(' '), '$'
msg10 db 10,13,7, '10. Las tec. de desarrollo de software que conoces son: $'

.code
mov ax, @data
mov ds, ax

mov ah, 09h
lea dx, titulo
int 21h ; TITULO

; \n
mov ah, 02h
mov dx, 10
int 21h

; 1
mov ah, 09h
lea dx, preg1 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp1] 
int 21h ; IN resp

; 2
mov ah, 09h
lea dx, preg2 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp2] 
int 21h ; IN resp

; 3
mov ah, 09h
lea dx, preg3 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp3] 
int 21h ; IN resp

; 4
mov ah, 09h
lea dx, preg4 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp4] 
int 21h ; IN resp

; 5
mov ah, 09h
lea dx, preg5 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp5] 
int 21h ; IN resp

; 6
mov ah, 09h
lea dx, preg6 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp6] 
int 21h ; IN resp

; 7
mov ah, 09h
lea dx, preg7 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp7] 
int 21h ; IN resp

; 8
mov ah, 09h
lea dx, preg8 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp8] 
int 21h ; IN resp

; 9
mov ah, 09h
lea dx, preg9 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp9] 
int 21h ; IN resp

; 10
mov ah, 09h
lea dx, preg10 
int 21h ; OUT preg

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [resp10] 
int 21h ; IN resp

mov ah, 09h
lea dx, msg1
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp1] 
int 21h ; OUT respuesta (parte dos VAR INPUT)
mov ah, 09h
lea dx, msg2
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp2] 
int 21h ; OUT respuesta (parte dos VAR INPUT)
mov ah, 09h
lea dx, msg3
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp3] 
int 21h ; OUT respuesta (parte dos VAR INPUT)
mov ah, 09h
lea dx, msg4
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp4] 
int 21h ; OUT respuesta (parte dos VAR INPUT)
mov ah, 09h
lea dx, msg5
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp5] 
int 21h ; OUT respuesta (parte dos VAR INPUT)
mov ah, 09h
lea dx, msg6
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp6] 
int 21h ; OUT respuesta (parte dos VAR INPUT)
mov ah, 09h
lea dx, msg7
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp7] 
int 21h ; OUT respuesta (parte dos VAR INPUT)
mov ah, 09h
lea dx, msg8
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp8] 
int 21h ; OUT respuesta (parte dos VAR INPUT)
mov ah, 09h
lea dx, msg9
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp9] 
int 21h ; OUT respuesta (parte dos VAR INPUT)
mov ah, 09h
lea dx, msg10
int 21h ; OUT respuesta (parte uno CONST)
mov ah, 09h
lea dx, offset [resp10] 
int 21h ; OUT respuesta (parte dos VAR INPUT)

.exit
end