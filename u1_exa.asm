;██████╗ ██╗███████╗ ██████╗  ██████╗ 
;██╔══██╗██║██╔════╝██╔════╝ ██╔═══██╗
;██║  ██║██║█████╗  ██║  ███╗██║   ██║
;██║  ██║██║██╔══╝  ██║   ██║██║   ██║
;██████╔╝██║███████╗╚██████╔╝╚██████╔╝
;╚═════╝ ╚═╝╚══════╝ ╚═════╝  ╚═════╝ 
;                                     
;███████╗██╗      ██████╗ ██████╗ ███████╗███████╗
;██╔════╝██║     ██╔═══██╗██╔══██╗██╔════╝██╔════╝
;█████╗  ██║     ██║   ██║██████╔╝█████╗  ███████╗
;██╔══╝  ██║     ██║   ██║██╔══██╗██╔══╝  ╚════██║
;██║     ███████╗╚██████╔╝██║  ██║███████╗███████║
;╚═╝     ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝
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
str_aux_num db 'Ingresa un numero: $'
str_ing_a db 'Ingresa el valor de "a": $'
str_ing_b db 'Ingresa el valor de "b": $'
str_ing_c db 'Ingresa el valor de "c": $'

; -----------------------------------------
; VAR MENU
; -----------------------------------------
n_opc db 0
str_menu_0 db '---------------MENU--------------- $'
str_menu_1 db '1)  CAPTURA E IMPRESION DE BOLETA $'
str_menu_2 db '2)  OPERACIONES ARITMETICAS $'
str_menu_3 db '3)  IMPRESION DE CUADRADO $'
str_menu_4 db '4)  CAPTURA DE 4 NUMEROS $'
str_menu_5 db '5)  SALTOS LOGICOS $'
str_menu_6 db '6)  CUESTIONARIO 10 PREGUNTAS $'
str_menu_7 db '7)  SALIR DEL PROGRAMA $'
str_menu_8 db 'Ingresa una opcion: $'

str_minimenu db 'Regresar a menu (1). Salir de programa (0): $'

; -----------------------------------------
; VAR OPC1
; -----------------------------------------

; VAR
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
var_quim1 db 0
var_quim2 db 0
var_quim3 db 0
var_hist1 db 0
var_hist2 db 0
var_hist3 db 0
var_asist db 0

var_mate_p db 0
var_hist_p db 0
var_quim_p db 0
var_prom db 0
var_porc_asist db 0

; PREGUNTAS
str_1_title db '------CAPTURA E IMPRESION DE BOLETA------ $'
str_1_nombres db 'Ingresa tu(s) nombre(s) inicial(es): $'
str_1_appat db 'Ingresa tu apellido paterno: $'
str_1_apmat db 'Ingresa tu apellido materno: $'
str_1_nomesc db 'Ingresa el nombre de tu escuela: $'
str_1_grupo db 'Ingresa tu grupo: $'
str_1_turno db 'Ingresa tu turno: $'
str_1_nctrl db 'Ingresa tu no. de control: $'
str_1_mate1 db '(MATE, parcial 1) Ingresa tu calif.: $'
str_1_mate2 db '(MATE, parcial 2) Ingresa tu calif.: $'
str_1_mate3 db '(MATE, parcial 3) Ingresa tu calif.: $'
str_1_quim1 db '(QUIM, parcial 1) Ingresa tu calif.: $'
str_1_quim2 db '(QUIM, parcial 2) Ingresa tu calif.: $'
str_1_quim3 db '(QUIM, parcial 3) Ingresa tu calif.: $'
str_1_hist1 db '(HIST, parcial 1) Ingresa tu calif.: $'
str_1_hist2 db '(HIST, parcial 2) Ingresa tu calif.: $'
str_1_hist3 db '(HIST, parcial 3) Ingresa tu calif.: $'
str_1_asist db 'Ingresa tu numero de asistencias (9 total): $'

; FORMATO
str_1_row_02 db 'DATOS DEL ALUMNO                                                                $'
str_1_row_03 db '                                                                                $'
str_1_row_ex db '     ==================        ==================         =================     $'
str_1_row_04 db '      APELLIDO PATERNO          APELLIDO MATERNO              NOMBRE(S)         $'
str_1_row_05 db 'DATOS DE LA ESCUELA                                                             $'
str_1_row_06 db '                                                                                $'
str_1_row_07 db '    ========================     =======         ============      ==========   $'
str_1_row_08 db '      NOMBRE DE LA ESCUELA        GRUPO             TURNO           #CONTROL    $'
str_1_row_09 db '|--------------------------------------------------| |-----------------------|  $'
str_1_row_10 db '|                 |PERIODOS DE EVALUACION |        | |       ASISTENCIA      |  $'
str_1_row_11 db '|ASIGNATURAS/AREAS|-----------------------|PROMEDIO| |-----------------------|  $'
str_1_row_12 db '|                 |  1RO  |  2DO  |  3RO  |        | |CALENDARIO ESCOLAR| 10 |  $'
str_1_row_13 db '|-----------------|--------------------------------| |-----------------------|  $'
str_1_row_14 db '|   MATEMATICAS   |       |       |       |        | |    ASISTENCIAS   |    |  $'
str_1_row_15 db '|-----------------|--------------------------------| |-----------------------|  $'
str_1_row_16 db '|     QUIMICA     |       |       |       |        | | % DE ASISTENCIA  |    |  $'
str_1_row_17 db '|-----------------|--------------------------------| |-----------------------|  $'
str_1_row_18 db '|     HISTORIA    |       |       |       |        |                            $'
str_1_row_19 db '|--------------------------------------------------| |-----------------------|  $'
str_1_row_20 db '                                                     |PROMEDIO FINAL DE GRADO|  $'
str_1_row_21 db '  |--------------------|   |--------------------|    |-----------------------|  $'
str_1_row_22 db '  |  PROMOVIDO   |     |   | NO PROMOVIDO |     |    |                       |  $'
str_1_row_23 db '  |--------------------|   |--------------------|    |-----------------------|  $'

str_x db 'X$'
; -----------------------------------------
; VAR OPC2
; -----------------------------------------
; MENÚ
str_2_title db '--------OPERACIONES ARITMETICAS--------$'
str_2_menu_1 db '1) SUMA$'
str_2_menu_2 db '2) RESTA$'
str_2_menu_3 db '3) MULTIPLICACION$'
str_2_menu_4 db '4) DIVISION$'
str_2_menu_5 db '5) OPERACION (a + b) / c$'
str_2_menu_6 db '6) REGRESAR A MENU PRINCIPAL$'
str_2_menu_7 db 'Ingresa una opcion: $'

str_2_minimenu db 'Regresar a submenu (1). Regresara menu principal (2). Salir de programa (0): $'

; AUX
str_2_res db 'El resultado es: $'

; SUMA
str_2_suma_title db '---------SUMA (a + b)---------$'
; RESTA
str_2_resta_title db '---------RESTA (a - b)---------$'
; MULTIPLICACIÓN
str_2_mult_title db '---------MULTIPLICACION (a * b)---------$'
; DIVISIÓN
str_2_divi_title db '---------DIVISION (a / b)---------$'
; OPERACIÓN (a + b) / c
str_2_oper_title db '---------OPERACION (a + b) / c---------$'


; -----------------------------------------
; VAR OPC3
; -----------------------------------------
str_3_title db '--------IMPRESION DE CUADRADO--------$'
str_3_sym db '#$'

; -----------------------------------------
; VAR OPC4
; -----------------------------------------
str_4_title db '--------CAPTURA DE 4 NUMEROS--------$'
str_4_res db 'Ingresaste los numeros: $'
str_4_coma db ', $'

; -----------------------------------------
; VAR OPC5
; -----------------------------------------
str_5_title db '--------SALTOS LOGICOS--------$'
str_5_mayor db 'a es mayor que b$'
str_5_menor db 'a es menor que b$'
str_5_igual db 'a es igual a b$'

; -----------------------------------------
; VAR OPC6
; -----------------------------------------
str_6_title db '--------CUESTIONARIO 10 PREGUNTAS--------$'

str_6_preg1 db 10,13,7,'1. Cual es tu nombre: $'
str_6_resp1 db 50 dup(' '), '$'
str_6_msg1 db  10,13,7,'1. Tu nombre es: $'

str_6_preg2 db 10,13,7,'2. Que carrera cursas: $'
str_6_resp2 db 50 dup(' '), '$'
str_6_msg2 db  10,13,7,'2. Cursas la carrera de : $'

str_6_preg3 db 10,13,7,'3. Que semestre cursas: $'
str_6_resp3 db 50 dup(' '), '$'
str_6_msg3 db  10,13,7,'3. Cursas el semestre numero $'

str_6_preg4 db 10,13,7,'4. Cual es tu promedio: $'
str_6_resp4 db 50 dup(' '), '$'
str_6_msg4 db  10,13,7,'4. Tu promedio es de: $'

str_6_preg5 db 10,13,7,'5. Que especialidad tomaste o te gustaria tomar: $'
str_6_resp5 db 50 dup(' '), '$'
str_6_msg5 db  10,13,7,'5. La especialidad que tomaste/tomarias es: $'

str_6_preg6 db 10,13,7,'6. Prefieres trabajar solo o en equipo: $'
str_6_resp6 db 50 dup(' '), '$'
str_6_msg6 db  10,13,7,'6. Prefieres trabajar: $'

str_6_preg7 db 10,13,7,'7. Que otra carrera te habria gustado cursar: $'
str_6_resp7 db 50 dup(' '), '$'
str_6_msg7 db  10,13,7,'7. Tu segunda opcion de carrera es: $'

str_6_preg8 db 10,13,7,'8. Sabes ingles: $'
str_6_resp8 db 50 dup(' '), '$'
str_6_msg8 db  10,13,7,'8. Sabes ingles: $'

str_6_preg9 db 10,13,7,'9. Que campo de tu carrera te parece mas interesante: $'
str_6_resp9 db 50 dup(' '), '$'
str_6_msg9 db  10,13,7,'9. El campo mas interesante de tu carrera para ti es: $'

str_6_preg10 db  10,13,7,'10. Que tecnologias de desarrollo de software conoces: $'
str_6_resp10 db 50 dup(' '), '$'
str_6_msg10 db  10,13,7,'10. Las tec. de desarrollo de software que conoces son: $'

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

print macro str
mov ah, 09
lea dx, offset str
int 21h
endm ; MACRO PARA IMPRIMIR SIN SALTO

println macro str
print str
br
endm ; MACRO PARA IMPRIMIR LÍNEA

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

movecursor macro ncol, nrow
mov dl, ncol
mov dh, nrow
mov bh, 0
mov ah, 02h
int 10h
endm ; MACRO PARA MOVER CURSOR

printat macro ncol, nrow, str
movecursor ncol, nrow
print str
endm

recovercursor macro
mov dl, 0
mov dh, 24
mov bh, 0
mov ah, 02h
int 10h
endm ; MACRO PARA RECUPERAR CURSOR

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

sum macro n1, n2, res
mov al, n1
add al, n2
mov res, al
endm ; MACRO PARA SUMAR

resta macro n1, n2, res
mov al, n1
sub al, n2
mov res, al
endm ; MACRO PARA RESTAR

mult macro n1, n2, res
mov al, n1
mov bl, n2
mul bl
mov res, al
endm ; MACRO PARA MULTIPLICAR

divi macro n1, n2, res
xor ax, ax
mov al, n1
mov bl, n2
div bl
mov res, al
endm ; MACRO PARA DIVIDIR

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
; -----------------------------------------
; FIN MENÚ
; -----------------------------------------

; -----------------------------------------
; OPCIÓN 1
; -----------------------------------------
opc_1:
clear
;PREGUNTAS
println str_1_title
print str_1_nombres
input_str var_nombres
print str_1_appat
input_str var_appat
print str_1_apmat
input_str var_apmat
print str_1_nomesc
input_str var_nomesc
print str_1_apmat
input_str var_apmat
print str_1_apmat
input_str var_apmat
print str_1_apmat
input_str var_apmat
print str_1_nomesc
input_str var_nomesc
print str_1_grupo
input_str var_grupo
print str_1_turno
input_str var_turno
print str_1_nctrl
input_str var_nctrl
print str_1_mate1
input_int var_mate1
br
print str_1_mate2
input_int var_mate2
br
print str_1_mate3
input_int var_mate3
br
print str_1_quim1
input_int var_quim1
br
print str_1_quim2
input_int var_quim2
br
print str_1_quim3
input_int var_quim3
br
print str_1_hist1
input_int var_hist1
br
print str_1_hist2
input_int var_hist2
br
print str_1_hist3
input_int var_hist3
br
print str_1_asist
input_int var_asist
br

; CÁLCULO DE PROMEDIOS
sum var_mate1, var_mate2, var_mate_p
sum var_mate_p, var_mate3, var_mate_p
divi var_mate_p, 3, var_mate_p

sum var_quim1, var_quim2, var_quim_p
sum var_quim_p, var_quim3, var_quim_p
divi var_quim_p, 3, var_quim_p

sum var_hist1, var_hist2, var_hist_p
sum var_hist_p, var_hist3, var_hist_p
divi var_hist_p, 3, var_hist_p

sum var_mate_p, var_quim_p, var_prom
sum var_prom, var_hist_p, var_prom
divi var_prom, 3, var_prom

mult var_asist, 10d, var_porc_asist

; IMPRESIÓN BOLETA (FORMATO)
clear
print str_1_row_02
print str_1_row_03
print str_1_row_04
print str_1_row_05
print str_1_row_06
print str_1_row_07
print str_1_row_08
print str_1_row_09
print str_1_row_10
print str_1_row_11
print str_1_row_12
print str_1_row_13
print str_1_row_14
print str_1_row_15
print str_1_row_16
print str_1_row_17
print str_1_row_18
print str_1_row_19
print str_1_row_20
print str_1_row_21
print str_1_row_22
print str_1_row_23

; IMPRESIÓN BOLETA (VARIABLES)
movecursor 11, 1
print var_appat
movecursor 36, 1
print var_apmat
movecursor 60, 1
print var_nombres
movecursor 6, 4
print var_nomesc
movecursor 36, 4
print var_grupo
movecursor 50, 4
print var_turno
movecursor 68, 4
print var_nctrl
movecursor 21, 12
printintvar var_mate1
movecursor 29, 12
printintvar var_mate2
movecursor 37, 12
printintvar var_mate3
movecursor 46, 12
printintvar var_mate_p
movecursor 21, 14
printintvar var_quim1
movecursor 29, 14
printintvar var_quim2
movecursor 37, 14
printintvar var_quim3
movecursor 46, 14
printintvar var_quim_p
movecursor 21, 16
printintvar var_hist1
movecursor 29, 16
printintvar var_hist2
movecursor 37, 16
printintvar var_hist3
movecursor 46, 16
printintvar var_hist_p
movecursor 64, 20
printintvar var_prom
movecursor 74, 12
printintvar var_asist
movecursor 74, 14
printintvar var_porc_asist

comp var_porc_asist, 80
jl noprom
comp var_prom, 7
jl noprom

prom:
movecursor 20, 20
print str_x
jmp minimenu

noprom:
movecursor 44, 20
print str_x
jmp minimenu

; -----------------------------------------
; OPCIÓN 2
; -----------------------------------------
opc_2:
; MENU
menu2:
clear
println str_2_title
println str_2_menu_1
println str_2_menu_2
println str_2_menu_3
println str_2_menu_4
println str_2_menu_5
println str_2_menu_6
print str_2_menu_7
input_int n_opc

comp n_opc, 1
jl menu2
je _suma
comp n_opc, 2
je _resta
comp n_opc, 3
je _mult
comp n_opc, 4
je _divi
comp n_opc, 5
je _oper
comp n_opc, 6
je menu
jg menu2

; suma
_suma:
clear
println str_2_suma_title
print str_ing_a
input_int n_aux1
br
print str_ing_b
input_int n_aux2
br
br
sum n_aux1, n_aux2, n_aux_r
print str_2_res
printintvar n_aux_r
jmp minimenu2
; resta
_resta:
clear
println str_2_resta_title
print str_ing_a
input_int n_aux1
br
print str_ing_b
input_int n_aux2
br
br
resta n_aux1, n_aux2, n_aux_r
print str_2_res
printintvar n_aux_r
jmp minimenu2
; mult
_mult:
clear
println str_2_mult_title
print str_ing_a
input_int n_aux1
br
print str_ing_b
input_int n_aux2
br
br
mult n_aux1, n_aux2, n_aux_r
print str_2_res
printintvar n_aux_r
jmp minimenu2
; divi
_divi:
clear
println str_2_divi_title
print str_ing_a
input_int n_aux1
br
print str_ing_b
input_int n_aux2
br
br
divi n_aux1, n_aux2, n_aux_r
print str_2_res
printintvar n_aux_r
jmp minimenu2
; oper
_oper:
clear
println str_2_oper_title
print str_ing_a
input_int n_aux1
br
print str_ing_b
input_int n_aux2
br
print str_ing_c
input_int n_aux3
br
br
sum n_aux1, n_aux2, n_aux_r
divi n_aux_r, n_aux3, n_aux_r
print str_2_res
printintvar n_aux_r
jmp minimenu2

; minimenu2
minimenu2:
recovercursor
print str_2_minimenu
input_int n_opc
br
comp n_opc, 1
jl salir
je menu2
comp n_opc, 2
jg salir
je menu

; -----------------------------------------
; OPCIÓN 3
; -----------------------------------------
opc_3:
clear
println str_3_title

; 80*25 (mid: 40*12)
printat 37, 9, str_3_sym
printat 38, 9, str_3_sym
printat 39, 9, str_3_sym
printat 40, 9, str_3_sym
printat 41, 9, str_3_sym
printat 42, 9, str_3_sym
printat 43, 9, str_3_sym

printat 37, 15, str_3_sym
printat 38, 15, str_3_sym
printat 39, 15, str_3_sym
printat 40, 15, str_3_sym
printat 41, 15, str_3_sym
printat 42, 15, str_3_sym
printat 43, 15, str_3_sym

printat 37, 9, str_3_sym
printat 37, 10, str_3_sym
printat 37, 11, str_3_sym
printat 37, 12, str_3_sym
printat 37, 13, str_3_sym
printat 37, 14, str_3_sym
printat 37, 15, str_3_sym

printat 43, 9, str_3_sym
printat 43, 10, str_3_sym
printat 43, 11, str_3_sym
printat 43, 12, str_3_sym
printat 43, 13, str_3_sym
printat 43, 14, str_3_sym
printat 43, 15, str_3_sym

jmp minimenu

; -----------------------------------------
; OPCIÓN 4
; -----------------------------------------
opc_4:
clear
println str_4_title
print str_aux_num
input_int n_aux1
br
print str_aux_num
input_int n_aux2
br
print str_aux_num
input_int n_aux3
br
print str_aux_num
input_int n_aux4
br
br
print str_4_res
printintvar n_aux1
print str_4_coma
printintvar n_aux2
print str_4_coma
printintvar n_aux3
print str_4_coma
printintvar n_aux4
jmp minimenu

; -----------------------------------------
; OPCIÓN 5
; -----------------------------------------
opc_5:
clear
println str_5_title
print str_ing_a
input_int n_aux1
br
print str_ing_b
input_int n_aux2
br
br

comp n_aux1, n_aux2
jg _mayor
jl _menor
je _igual

_mayor:
println str_5_mayor
jmp minimenu

_menor:
println str_5_menor
jmp minimenu

_igual:
println str_5_igual
jmp minimenu

; -----------------------------------------
; OPCIÓN 6
; -----------------------------------------
opc_6:
clear
println str_6_title
print str_6_preg1
input_str str_6_resp1
print str_6_preg2
input_str str_6_resp2
print str_6_preg3
input_str str_6_resp3
print str_6_preg4
input_str str_6_resp4
print str_6_preg5
input_str str_6_resp5
print str_6_preg6
input_str str_6_resp6
print str_6_preg7
input_str str_6_resp7
print str_6_preg8
input_str str_6_resp8
print str_6_preg9
input_str str_6_resp9
print str_6_preg10
input_str str_6_resp10
clear
print str_6_msg1
print str_6_resp1
print str_6_msg2
print str_6_resp2
print str_6_msg3
print str_6_resp3
print str_6_msg4
print str_6_resp4
print str_6_msg5
print str_6_resp5
print str_6_msg6
print str_6_resp6
print str_6_msg7
print str_6_resp7
print str_6_msg8
print str_6_resp8
print str_6_msg9
print str_6_resp9
print str_6_msg10
print str_6_resp10

jmp minimenu

; -----------------------------------------
; MINI MENÚ
; -----------------------------------------
minimenu:
recovercursor
print str_minimenu
input_int n_opc
br
comp n_opc, 1
je menu
jmp salir

; -----------------------------------------
; SALIDA
; -----------------------------------------
salir:
clear
.exit
end