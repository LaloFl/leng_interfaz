.model small
.stack 50

.data
n_aux1 db 0
n_aux2 db 0
n_aux3 db 0
n_aux4 db 0
n_aux_r db 0

str_empty db ' $'
str_test db '__TEST__ $'

; -----------------------------------------
; VAR MENU
; -----------------------------------------
n_opc db 0
str_menu_0 db '---------------MENU--------------- $'
str_menu_1 db '1)  CAPTURA E IMPRESION DE BOLETA $'
str_menu_2 db '2)  OPERACIONES ARITMETICAS $'
str_menu_3 db '3)  __PLACEHOLDER__ $'
str_menu_4 db '4)  __PLACEHOLDER__ $'
str_menu_5 db '5)  __PLACEHOLDER__ $'
str_menu_6 db '6)  __PLACEHOLDER__ $'
str_menu_7 db '7)  SALIR DEL PROGRAMA $'
str_menu_8 db 'Ingresa una opcion: $'

str_minimenu db 'Regresar a menu (1). Salir de programa (0): $'

; -----------------------------------------
; VAR OPC1
; -----------------------------------------
var_nombres db 50 dup(' $')
var_appat db 50 dup(' $')
var_apmat db 50 dup(' $')
var_nomesc db 50 dup(' $')
var_grupo db 50 dup(' $')
var_turno db 50 dup(' $')
var_nctrl db 50 dup(' $')

var_mate1 db 0
var_mate2 db 0
var_mate3 db 0
var_mate_p db 0
var_quim1 db 0
var_quim2 db 0
var_quim3 db 0
var_quim_p db 0
var_hist1 db 0
var_hist2 db 0
var_hist3 db 0
var_hist_p db 0
var_asist db 0

str_1_title db '------CAPTURA E IMPRESION DE BOLETA------ $'
str_1_q1 db 'Ingresa tu nombre: $'

; -----------------------------------------
; VAR OPC2
; -----------------------------------------


.code
mov ax, @data
mov ds, ax ; LECTURA DE .data

; -----------------------------------------
; ÁREA MACROS
; -----------------------------------------
br macro 
mov ah, 2
mov dx, 10
int 21h
endm ; SALTO DE LÍNEA

println macro str
mov ah, 09
lea dx, offset str
int 21h
br
endm ; MACRO PARA IMPRIMIR LÍNEA

print macro str
mov ah, 09
lea dx, offset str
int 21h
endm ; MACRO PARA IMPRIMIR SIN SALTO

printintvar macro var
mov al,var
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
endm ; MACRO PARA IMPRIMIR INT VAR

printstrvar macro var

endm ; MACRO PARA IMPRIMIR STR VAR

clear macro
mov ah, 0
mov al, 3
int 10h 
endm ; MACRO PARA LIMPIAR

input_str macro var
mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [var]
int 21h
endm ; MACRO PARA INPUT STRING

input_int macro var
mov ah, 1
int 21h
sub al, 30h
mov var, al
endm ; MACRO PARA INPUT INT

comp macro n1, n2
mov bl, n1
mov cl, n2
cmp bl, cl
endm ; MACRO PARA COMPARAR

; -----------------------------------------
; FIN ÁREA MACROS
; -----------------------------------------

; -----------------------------------------
; MENÚ
; -----------------------------------------
menu:
clear
println str_menu_0
println str_menu_1
println str_menu_2
println str_menu_3
println str_menu_4
println str_menu_5
println str_menu_6
println str_menu_7
print str_menu_8

input_int n_opc
br

br

; SALTOS

comp n_opc, 1
je opc_1
jl menu
comp n_opc, 2
je opc_2
comp n_opc, 3
je opc_3
comp n_opc, 4
je opc_4
comp n_opc, 5
je opc_5
comp n_opc, 6
je opc_6
comp n_opc, 7
je salir
jg menu
; SALTOS

; -----------------------------------------
; FIN MENÚ
; -----------------------------------------

opc_1:
clear
println str_1_title
println str_1_q1
input_str var_nombres
br
println var_nombres

jmp minimenu

opc_2:
clear
println str_test
jmp minimenu

opc_3:
clear
println str_test
jmp minimenu

opc_4:
clear
println str_test
jmp minimenu

opc_5:
clear
println str_test
jmp minimenu

opc_6:
clear
println str_test
jmp minimenu

minimenu:
print str_minimenu
input_int n_opc
br
comp n_opc, 1
je menu
jmp salir

salir:
clear
.exit
end