.model small
.stack 50

.data
str_a db 'a) Ingresa un numero: $'
str_b db 'b) Ingresa un numero: $'

str_mayor db 'a es mayor que b $'
str_menor db 'a es menor que b $'
str_igual db 'a es igual a b $'

n1 db 0
n2 db 0

.code
mov ax, @data
mov ds, ax

; MACROS
clear macro
mov ah, 0
mov al, 3
int 10h
endm

br macro 
mov ah, 2
mov dx, 10
int 21h
endm

println macro str
mov ah, 09h
lea dx, str
int 21h
br
endm

print macro str
mov ah, 09h
lea dx, str
int 21h
endm

input_int macro var
mov ah, 1
int 21h
sub al, 30h
mov var, al
endm

; CÓDIGO
clear

print str_a
input_int n1
br
print str_b
input_int n2
br
br

mov bl, n1
mov cl, n2

cmp bl, cl
jg mayor
jl menor
je igual

mayor:
println str_mayor
jmp salir

menor:
println str_menor
jmp salir

igual:
println str_igual
jmp salir

salir:
.exit
end