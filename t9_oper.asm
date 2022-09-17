.model small
.stack
.data
    n1 db 0
    n2 db 0
    n3 db 0

    r1 db 0
    r2 db 0
    r3 db 0

    msg1 db 10,13,7,'1. R = ','$'

    msg2 db 10,13,7,'2. R = ','$'

    msg3 db 10,13,7,'3. R = ','$'

    msg0 db 10,13,7,'Ingresa un numero:','$'


.code
mov ax, seg @data
mov ds, ax

;INP1----------------------------------------------------------
mov ah, 09h
lea dx, msg0
int 21h

mov ah, 01h
int 21h
sub al, 30h
mov n1, al
;INP2----------------------------------------------------------
mov ah, 09h
lea dx, msg0
int 21h

mov ah, 01h
int 21h
sub al, 30h
mov n2,al
;-----------------------------------------------------------
;INP3----------------------------------------------------------
mov ah, 09h
lea dx, msg0
int 21h

mov ah, 01h
int 21h
sub al, 30h
mov n3,al
;-----------------------------------------------------------
;1. 
;N1 + N2
mov al, n1
add al,n2
mov r1,al
;R+1
mov al, r1
add al, 1
mov r1, al
;R+1
mov al, r1
add al, 1
mov r1, al
;-----------------------------------------------------------
;2. 
;N1 + N2 + N3
mov al, n1
add al, n2
mov r2,al
;R+N3
mov al, r2
add al, n3
mov r2, al
;-----------------------------------------------------------
;3. 
;2 OPERACIONES
;(N1 + N2) * N3

;N1+N2
mov al, n1
add al, n2
mov r3,al

;R * N3
mov al,r3
mov bl,n3
mul bl
mov r3,al

; EMPAQUETAMIENTOS
;R1
mov ah, 09h
lea dx, msg1
int 21h

mov al,r1
aam
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h

mov ah, 02h 
mov dx, 10
int 21h

;R2
mov ah, 09h
lea dx, msg2
int 21h

mov al,r2
aam
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h

mov ah, 02h 
mov dx, 10
int 21h

;R3
mov ah, 09h
lea dx, msg3
int 21h

mov al,r3
aam
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h

mov ah, 02h 
mov dx, 10
int 21h

.exit
end