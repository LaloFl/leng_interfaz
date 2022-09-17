.model small
.stack

.data
;row_01 db '0123456(10)123456(20)123456(30)123456(40)123456(50)123456(60)123456(70)123456789$'
row_02 db 'DATOS DEL ALUMNO                                                                $'
row_03 db '           FLORES                   SANDOVAL                DIEGO EDUARDO       $'
row_ex db '     ==================        ==================         =================     $'
row_04 db '      APELLIDO PATERNO          APELLIDO MATERNO              NOMBRE(S)         $'
row_05 db 'DATOS DE LA ESCUELA                                                             $'
row_06 db '      TECNM CAMPUS TIJUANA          A             VESPERTINO            N/A     $'
row_07 db '    ========================     =======         ============          =====    $'
row_08 db '      NOMBRE DE LA ESCUELA        GRUPO             TURNO               CCT     $'
row_09 db '|--------------------------------------------------| |-----------------------|  $'
row_10 db '|                 |PERIODOS DE EVALUACION |        | |       ASISTENCIA      |  $'
row_11 db '|ASIGNATURAS/AREAS|-----------------------|PROMEDIO| |-----------------------|  $'
row_12 db '|                 |  1RO  |  2DO  |  3RO  |        | |CALENDARIO ESCOLAR| 190|  $'
row_13 db '|-----------------|--------------------------------| |-----------------------|  $'
row_14 db '|   MATEMATICAS   |  9.9  |  9.9  |  9.9  |  9.9   | |    ASISTENCIAS   | 190|  $'
row_15 db '|-----------------|--------------------------------| |-----------------------|  $'
row_16 db '|     QUIMICA     |  9.9  |  9.9  |  9.9  |  9.9   | | % DE ASISTENCIA  | 100|  $'
row_17 db '|-----------------|--------------------------------| |-----------------------|  $'
row_18 db '|     HISTORIA    |  9.9  |  9.9  |  9.9  |  9.9   |  *ASISTENCIA MINIMA PARA   $'
row_19 db '|--------------------------------------------------|   SER PROMOVIDO: 80%       $'
row_20 db '                                                     |-----------------------|  $'
row_21 db '                                                     |PROMEDIO FINAL DE GRADO|  $'
row_22 db '  |--------------------|   |--------------------|    |-----------------------|  $'
row_23 db '  |  PROMOVIDO   |  X  |   | NO PROMOVIDO |     |    |          9.9          |  $'
row_24 db '  |--------------------|   |--------------------|    |-----------------------| $'


.code
mov	ax, @data
mov	ds, ax ; leer .data

mov ah, 0
mov al, 3h
int 10h ; limpiar consola

; mov	ah, 09h
; lea	dx, row_01
; int	21h

mov	ah, 09h
lea	dx, row_02
int	21h

mov	ah, 09h
lea	dx, row_03
int	21h

mov	ah, 09h
lea	dx, row_ex
int	21h

mov	ah, 09h
lea	dx, row_04
int	21h

mov	ah, 09h
lea	dx, row_05
int	21h

mov	ah, 09h
lea	dx, row_06
int	21h

mov	ah, 09h
lea	dx, row_07
int	21h

mov	ah, 09h
lea	dx, row_08
int	21h

mov	ah, 09h
lea	dx, row_09
int	21h

mov	ah, 09h
lea	dx, row_10
int	21h

mov	ah, 09h
lea	dx, row_11
int	21h

mov	ah, 09h
lea	dx, row_12
int	21h

mov	ah, 09h
lea	dx, row_13
int	21h

mov	ah, 09h
lea	dx, row_14
int	21h

mov	ah, 09h
lea	dx, row_15
int	21h

mov	ah, 09h
lea	dx, row_16
int	21h

mov	ah, 09h
lea	dx, row_17
int	21h

mov	ah, 09h
lea	dx, row_18
int	21h

mov	ah, 09h
lea	dx, row_19
int	21h

mov	ah, 09h
lea	dx, row_20
int	21h

mov	ah, 09h
lea	dx, row_21
int	21h

mov	ah, 09h
lea	dx, row_22
int	21h

mov	ah, 09h
lea	dx, row_23
int	21h

mov	ah, 09h
lea	dx, row_24
int	21h

.exit
end