;================Terry Bogard KOF98 Creado por Zelgadis & Jin==================;
;=======================Zelgadiss-Graywords@hotmail.com========================;
;============================Play KOF MENORIAL=================================;

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Defauls |-------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1
;-------------------------------------------------------------------------------
;-| Movimientos Dobles |--------------------------------------------------------
[command]
name = "Doble Dunk Largo"
command = ~D,DF,F,D,DF,F,c
time = 20

[command]
name = "Super Power Geyser"
command = ~D,DB,B,D,F,c
time = 20

;-------------------------------------------------------------------------------
;-| Movimientos Especiales |--------------------------------------------------------

[command]
name = "Special Dunk Largo"
command = ~D,DF,F,D,DF,F,b
time = 20

[command]
name = "Special Dunk Corto"
command = ~D,DF,F,D,DF,F,a
time = 20

[command]
name = "Power Geyser"
command = ~D,DB,B,D,F,y
time = 20

[command]
name = "Power Geyser"
command = ~D,DB,B,D,F,x
time = 20

;-------------------------------------------------------------------------------
;-| Movimientos Basicos |----------------------------------------------------
[command]
name = "Swept Combo Largo"
command = ~B,D,DF,F,b
time = 15

[command]
name = "Swept Combo Corto"
command = ~B,D,DF,F,a
time = 15

[command]
name = "Dunk Largo"
command = ~F,D,DF,b
time = 15

[command]
name = "Dunk Corto"
command = ~F,D,DF,a
time = 15

[command]
name = "Gancho Largo"
command = ~F,D,DF,y
time = 15

[command]
name = "Gancho Corto"
command = ~F,D,DF,x
time = 15

[command]
name = "Gancho Largo EX"
command = ~20$D, $U, y
time = 20

[command]
name = "Gancho Corto EX"
command = ~20$D, $U, x
time = 20

[command]
name = "Crack Shot Largo"
command = ~D, DB, B, b
time = 15

[command]
name = "Crack Shot Corto"
command = ~D, DB, B, a
time = 15

[command]
name = "Power Change Largo"
command = ~D, DF, F, b
time = 15

[command]
name = "Power Change Corto"
command = ~D, DF, F, a

[command]
name = "Burn Knuckle Largo"
command = ~D, DB, B, y
time = 15

[command]
name = "Burn Knuckle Corto"
command = ~D, DB, B, x
time = 15

[command]
name = "Power Wave Largo"
command = ~D,DF,F,y
time = 15

[command]
name = "Power Wave Corto"
command = ~D,DF,F,x
time = 15
;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------


[Command]
name = "jump"    
command = D, $U
time = 12

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------
[Command]
name = "FF"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = F, F
time = 10

[Command]
name = "BB"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------
[Command]
name = "recovery"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = x+a
time = 1

[Command]
name = "recovery"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = z
time = 1

[Command]
name = "�ӂ��Ƃ΂�"
command = y+b
time = 1

[Command]
name = "�ӂ��Ƃ΂�"
command = c
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;------------------------------------------------------------------------------
;-| �����L�[�������ςȂ� |-----------------------------------------------------
[Command]
name = "holdfwd"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$F
time = 1

[Command]
name = "holdback"  ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$B
time = 1

[Command]
name = "holdup"    ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$U
time = 1

[Command]
name = "holddown"  ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$D
time = 1

[Command]
name = "holdxy"
command = /$x+y
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

;------------------------------------------------------------------------------
;==============================================================================

[Statedef -1]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Swept Combo Largo
[State -1, Swept Combo Largo]
type = ChangeState
value = 1071
triggerall = command = "Swept Combo Largo"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 1
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Swept Combo Corto
[State -1, Swept Combo Corto]
type = ChangeState
value = 1070
triggerall = command = "Swept Combo Corto"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 1
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Doble Dunk Largo
[State -1, Doble Dunk Largo]
type = ChangeState
value = 2200
triggerall = command = "Doble Dunk Largo"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 0
triggerall = var(50) = 0
;---------------------------------------------------------------------------
;Special Dunk Largo
[State -1, Special Dunk Largo]
type = ChangeState
value = 2101
triggerall = command = "Special Dunk Largo"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Special Dunk Corto
[State -1, Special Dunk Corto]
type = ChangeState
value = 2100
triggerall = command = "Special Dunk Corto"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Super Power Geyser
[State -1, Super Power Geyser]
type = ChangeState
value = 2050
triggerall = command = "Super Power Geyser"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Power Geyser
[State -1, Power Geyser]
type = ChangeState
value = 2000
triggerall = command = "Power Geyser"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Dunk Largo
[State -1, Dunk Largo]
type = ChangeState
value = 1061
triggerall = command = "Dunk Largo"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Dunk Corto
[State -1, Dunk Corto]
type = ChangeState
value = 1060
triggerall = command = "Dunk Corto"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Gancho Largo EX
[State -1, Gancho Largo]
type = ChangeState
value = 1055
triggerall = command = "Gancho Largo EX"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
trigger13 = stateno = 1030 && movecontact
trigger14 = stateno = 1035 && movecontact
trigger15 = stateno = 1075 && movecontact
triggerall = var(5) = 1
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Gancho Corto EX
[State -1, Gancho Corto]
type = ChangeState
value = 1050
triggerall = command = "Gancho Corto EX"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
trigger13 = stateno = 1030 && movecontact
trigger14 = stateno = 1035 && movecontact
trigger15 = stateno = 1075 && movecontact
triggerall = var(5) = 1
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Gancho Largo
[State -1, Gancho Largo]
type = ChangeState
value = 1055
triggerall = command = "Gancho Largo"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
trigger13 = stateno = 1030 && movecontact
trigger14 = stateno = 1035 && movecontact
trigger15 = stateno = 1075 && movecontact
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Gancho Corto
[State -1, Gancho Corto]
type = ChangeState
value = 1050
triggerall = command = "Gancho Corto"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
trigger13 = stateno = 1030 && movecontact
trigger14 = stateno = 1035 && movecontact
trigger15 = stateno = 1075 && movecontact
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Crack Shot Largo
[State -1, Crack Shot Largo]
type = ChangeState
value = 1041
triggerall = command = "Crack Shot Largo"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Crack Shot Corto
[State -1, Crack Shot Corto]
type = ChangeState
value = 1040
triggerall = command = "Crack Shot Corto"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Power Change Corto
[State -1, Power Change Corto]
type = ChangeState
value = 1035
triggerall = command = "Power Change Largo"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Power Change Corto
[State -1, Power Change Corto]
type = ChangeState
value = 1030
triggerall = command = "Power Change Corto"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Burn Knuckle Largo
[State -1, Burn Knuckle Largo]
type = ChangeState
value = 1021
triggerall = command = "Burn Knuckle Largo"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Burn Knuckle Corto
[State -1, Burn Knuckle Corto]
type = ChangeState
value = 1020
triggerall = command = "Burn Knuckle Corto"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Power Wave Corto
[State -1, Power Wave Corto]
type = ChangeState
value = 1010
triggerall = command = "Power Wave Largo"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Power Wave Corto EX
[State -1, Power Wave Corto EX]
type = ChangeState
value = 1002
triggerall = command = "Power Wave Largo"
triggerall = numprojID(1000) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 1
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Power Wave Corto
[State -1, Power Wave Corto]
type = ChangeState
value = 1000
triggerall = command = "Power Wave Corto"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 0
triggerall = var(50) = 0

;---------------------------------------------------------------------------
;Power Wave Corto EX
[State -1, Power Wave Corto EX]
type = ChangeState
value = 1001
triggerall = command = "Power Wave Corto"
triggerall = numprojID(1000) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 320 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440
triggerall = var(5) = 1
triggerall = var(50) = 0

;---------------------------------------------------------------------------
[State -1, T S]
type = ChangeState
value = 710
triggerall = command = "recovery" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]
triggerall = var(50) = 0
;---------------------------------------------------------------------------
[State -1, T S]
type = ChangeState
value = 700
triggerall = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]
trigger3 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;�ӂ��Ƃ΂�
[State -1, Throw]
type = ChangeState
value = 300
triggerall = command = "�ӂ��Ƃ΂�"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;�󒆂ӂ��Ƃ΂�
[State -1, CD]
type = ChangeState
value = 650
triggerall = command = "�ӂ��Ƃ΂�"
triggerall = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;P����
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;K����
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;���E����
[State -1, 88]
type = ChangeState
value = 320
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 300
trigger7 = stateno = 310 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;�O���E�����@�z
[State -1, GOUHU]
type = ChangeState
value = 310
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
triggerall = var(50) = 0
;------------------------------------------------------------------------------
; Power charge
[State -1]
type = ChangeState
value = 910
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "holda"
trigger1 = command = "holdy"
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;�_�b�V��
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = var(50) = 0

;�o�b�N�X�e�b�v
[State -1, Back Step]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = var(50) = 0

;==============================================================================
;�ߋ���������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 18
trigger1 = ctrl
triggerall = var(50) = 0

;������������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
triggerall = var(50) = 0

;�ߋ����������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 30
trigger1 = ctrl
triggerall = var(50) = 0

;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
triggerall = var(50) = 0

;------------------------------------------------------------------------------
;�ߋ���������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 14
trigger1 = ctrl
triggerall = var(50) = 0

;������������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
triggerall = var(50) = 0

;�ߋ����������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 40
trigger1 = ctrl
triggerall = var(50) = 0

;�������������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
triggerall = var(50) = 0

;------------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl
triggerall = var(50) = 0

;------------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 4 && movecontact
triggerall = var(50) = 0

;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var(50) = 0

;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;�W�����v��p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0

;�W�����v���p���`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;�����W�����v��L�b�N
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0

;�����W�����v���L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
