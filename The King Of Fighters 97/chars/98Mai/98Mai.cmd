;==========================================================================
;-| AI Motions |-----------------------------------------------------------
;--------------------------------------------------------------------------

;==========================================================================
;-| Super Motions |--------------------------------------------------------
;--------------------------------------------------------------------------
[Command]
name = "DM4_W"
Command = ~D, B, $D, F, a
time = 30
[Command]
name = "DM4_S"
Command = ~D, B, $D, F, b
time = 30

[Command]
name = "DM3_W"
Command = ~D, DB, B, DB, D, DF, F, x
time = 30
[Command]
name = "DM3_S"
Command = ~D, DB, B, DB, D, DF, F, y
time = 30

[Command]
name = "DM2_W"
Command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "DM2_S"
Command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "DM1"
Command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "DM1"
Command = ~D, DF, F, D, DF, F, y
time = 30

;==========================================================================
;-| Special Motions |------------------------------------------------------
;--------------------------------------------------------------------------
[Command]
name = "DP_WK"
Command = ~F, D, DF, a
time = 15
[Command]
name = "DP_SK"
Command = ~F, D, DF, b
time = 15

[Command]
name = "Part1"
Command = ~B, DB, D, DF, F, x
time = 15
[Command]
name = "Part1"
Command = ~B, DB, D, DF, F, y
time = 15

[Command]
name = "Part2"
Command = ~D, DF, F, x
time = 15
[Command]
name = "Part2"
Command = ~D, DF, F, y
time = 15

[Command]
name = "Part3"
Command = ~B, F, x
time = 15
[Command]
name = "Part3"
Command = ~B, F, y
time = 15

; RB1
[Command]
name = "HoldD_K"
command = ~30$D, a+b
time = 20

; RBS
[Command]
name = "HoldD_P"
command = ~30$D, x+y
time = 20

;
[Command]
name = "DP_WP"
Command = ~F, D, DF, x
time = 15
[Command]
name = "DP_SP"
Command = ~F, D, DF, y
time = 15

;
[Command]
name = "HCF_WK"
Command = ~B, DB, D, DF, F, a
time = 15
[Command]
name = "HCF_SK"
Command = ~B, DB, D, DF, F, b
time = 15

;
[Command]
name = "QCB_WK"
Command = ~D, DB, B, a
time = 15
[Command]
name = "QCB_SK"
Command = ~D, DB, B, b
time = 15

;
[Command]
name = "QCB_WP"
Command = ~D, DB, B, x
time = 15
[Command]
name = "QCB_SP"
Command = ~D, DB, B, y
time = 15

;
[Command]
name = "QCF_WP"
Command = ~D, DF, F, x
time = 15
[Command]
name = "QCF_SP"
Command = ~D, DF, F, y
time = 15

;==========================================================================
;-| Double Tap |-----------------------------------------------------------
;--------------------------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "jump"
command = ~D, $U
time = 12

;==========================================================================
;-| 2/3 Button Combination |-----------------------------------------------
;--------------------------------------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "knockdown"
command = y+b
time = 1

;==========================================================================
;-| Dir + Button |---------------------------------------------------------
;--------------------------------------------------------------------------
[Command]
name = "D_x"
command = /$D,x
time = 1

[Command]
name = "fwd_roll"
command = /F, a+x
time = 1
[Command]
name = "back_roll"
command = /B, a+x
time = 1

;==========================================================================
;-| Single Button |--------------------------------------------------------
;--------------------------------------------------------------------------

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
name = "hold_a"
command = /$a
time = 1
[Command]
name = "hold_b"
command = /$b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_x"
command = /$x
time = 1
[Command]
name = "hold_y"
command = /$y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "s"
command = s
time = 1

;===========================================================================
;-| Hold Dir |--------------------------------------------------------------
:---------------------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; No remover ni bloquear la linea de arriba. El hecho de bloquear o quitar
; esto, provocar?serios fallos en el char (aparte de los que ya tiene).
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;==========================================================================
; ADVANCE/EXTRA MODE ACTIVATIONS
;==========================================================================
; ADVANCE
[State -1]
type = ChangeState
value = 790
triggerall = Var(50) = 0
trigger1 = command = "a" && command = "y"
trigger1 = power >= 1000 && statetype = S && ctrl = 1 && var(7) <= 0

; EXTRA
[State -1]
type = ChangeState
value = 910
triggerall = Var(50) = 0
triggerall = power < 3000
trigger1 = command = "hold_x"
trigger1 = command = "hold_b"
trigger1 = statetype = S
trigger1 = ctrl
;==========================================================================
; DMs/SDMs Attacks
;==========================================================================
; firefox
[State -1]
type = ChangeState
value = 3300 + ((var(7) > 0) * 50)
triggerall = var(50) = 0
triggerall = command = "DM4_W"
triggerall = statetype!= A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact
[State -1]
type = ChangeState
value = 3305 + ((var(7) > 0) * 46)
triggerall = var(50) = 0
triggerall = command = "DM4_S"
triggerall = statetype!= A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; coscachos varios con abanicos
[State -1]
type = ChangeState
value = 3200 + ((var(7) > 0) * 50)
triggerall = var(50) = 0
triggerall = command = "DM3_W"
triggerall = statetype!= A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact
[State -1]
type = ChangeState
value = 3210 + ((var(7) > 0) * 40)
triggerall = var(50) = 0
triggerall = command = "DM3_S"
triggerall = statetype!= A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Giros varios en fuego
[State -1]
type = ChangeState
value = 3100 + ((var(7) > 0) * 50)
triggerall = var(50) = 0
triggerall = command = "DM2_W"
triggerall = statetype!= A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact
[State -1]
type = ChangeState
value = 3110 + ((var(7) > 0) * 40)
triggerall = var(50) = 0
triggerall = command = "DM2_S"
triggerall = statetype!= A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Lanzar abanicos
[State -1]
type = ChangeState
value = 3000 + ((var(7) > 0) * 50)
triggerall = var(50) = 0
triggerall = command = "DM1"
triggerall = statetype!= A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

;==========================================================================
; TECNICAS DE COMBATE
;==========================================================================
; Lanzarse en picada (W)
[State -1]
type = ChangeState
value = 1900
triggerall = var(50) = 0
triggerall = command = "QCB_WK"
triggerall = statetype = A
trigger1= ctrl
trigger2 = Stateno=[100,102]

; Lanzarse en picada (S)
[State -1]
type = ChangeState
value = 1910
triggerall = var(50) = 0
triggerall = command = "QCB_SK"
triggerall = statetype = A
trigger1= ctrl
trigger2 = Stateno=[100,102]

; Codazo volador (W)
[State -1]
type = ChangeState
value = 1800
triggerall = var(50) = 0
triggerall = command = "HCF_WK"
triggerall = statetype = A
trigger1= ctrl

; Codazo volador (S)
[State -1]
type = ChangeState
value = 1800
triggerall = var(50) = 0
triggerall = command = "HCF_SK"
triggerall = statetype = A
trigger1= ctrl

; Patada de fuego (W)
[State -1]
type = ChangeState
value = 1700
triggerall = var(50) = 0
triggerall = command = "DP_WK"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Patada de fuego (S)
[State -1]
type = ChangeState
value = 1710
triggerall = var(50) = 0
triggerall = command = "DP_SK"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Chain Attack
[State -1]
type = ChangeState
value = 1600
triggerall = var(50) = 0
triggerall = command = "Part1"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; --- (Real Bout Special)
[State -1]
type = ChangeState
value = 1500
triggerall = var(50) = 0
triggerall = command = "HoldD_P"
triggerall = statetype != A
trigger1= ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; --- (Real Bout 1)
[State -1]
type = ChangeState
value = 1550
triggerall = var(50) = 0
triggerall = command = "HoldD_K"
triggerall = statetype != A
trigger1= ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Danza de golpes (W)
[State -1]
type = ChangeState
value = 1400
triggerall = var(50) = 0
triggerall = command = "DP_WP"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Danza de golpes (S)
[State -1]
type = ChangeState
value = 1410
triggerall = var(50) = 0
triggerall = command = "DP_SP"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Codazo volador (W)
[State -1]
type = ChangeState
value = 1300
triggerall = var(50) = 0
triggerall = command = "HCF_WK"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Codazo volador (S)
[State -1]
type = ChangeState
value = 1310
triggerall = var(50) = 0
triggerall = command = "HCF_SK"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Golpe con abanico (W)
[State -1]
type = ChangeState
value = 1200
triggerall = var(50) = 0
triggerall = command = "QCB_WK"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Golpe con abanico (S)
[State -1]
type = ChangeState
value = 1210
triggerall = var(50) = 0
triggerall = command = "QCB_SK"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Giro con fuego (W)
[State -1]
type = ChangeState
value = 1100
triggerall = var(50) = 0
triggerall = command = "QCB_WP"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Giro con fuego (S)
[State -1]
type = ChangeState
value = 1110
triggerall = var(50) = 0
triggerall = command = "QCB_SP"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Lanzar Abanico (W)
[State -1]
type = ChangeState
value = 1000
triggerall = var(50) = 0
triggerall = command = "QCF_WP"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

; Lanzar Abanico (S)
[State -1]
type = ChangeState
value = 1010
triggerall = var(50) = 0
triggerall = command = "QCF_SP"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 215 && MoveContact
trigger5 = stateno = 225 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 312 && MoveContact
trigger8 = stateno = 355 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 410 && MoveContact

;==========================================================================
; PASOS DOBLES
;==========================================================================
; Hacia adelante
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = command != "holddown"
trigger1 = ctrl = 1

; Hacia atras
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;==========================================================================
; AGARRES
;==========================================================================
; Normal 1
[State -1]
type = ChangeState
value = 800
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2stateno != 5120
trigger1 = ctrl

; Normal 2
[State -1]
type = ChangeState
value = 850
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2stateno != 5120
trigger1 = ctrl

; Aereo
[State -1]
type = ChangeState
value = 880
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = command = "holdfwd"
trigger1 = statetype = A
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = p2stateno != 5120
trigger1 = ctrl

;==========================================================================
; EVASIONES, ROLLINGS Y ESAS COSAS.
;==========================================================================
; TIME BAR Escape Roll backward
[State -1]
type = ChangeState
value = 375
triggerall = var(50) = 0
trigger1 = command = "back_roll" && var(7) > 0 && stateno = [150,151]

; TIME BAR Escape Roll Forward
[State -1]
type = ChangeState
value = 365
triggerall = var(50) = 0
trigger1 = command = "recovery" && var(7) > 0 && stateno = [150,151]

;Rodar atras (98 v. Advance)
[State -1]
type = ChangeState
value = 370
triggerall = var(50) = 0
trigger1 = command = "back_roll" && statetype != A && ctrl = 1

;Rodar adelante (98 v. Advance)
[State -1]
type = ChangeState
value = 360
triggerall = var(50) = 0
trigger1 = command = "fwd_roll" && statetype != A && ctrl = 1

; Dodge
[State -1]
type = ChangeState
value = 350
triggerall = var(50) = 0
triggerall = command = "recovery"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1

; Dodge Ret
[State -1]
type = ChangeState
value = 355
triggerall = var(50) = 0
triggerall = stateno = 350
triggerall = AnimElem = 2, >= 0
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "a"
trigger4 = command = "b"

;==========================================================================
; CD ATTACKS
;==========================================================================
; Counter
[State -1]
type = ChangeState
value = 250
triggerall = command = "knockdown"
triggerall = var(50) = 0
trigger1 = var(7) > 0 && stateno = [150,153]

; Standing
[State -1]
type = ChangeState
value = 240
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = var(50) = 0
trigger1 = command = "knockdown"

; Jumping
[State -1]
type = ChangeState
value = 640
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = var(50) = 0
trigger1 = command = "knockdown"

;==========================================================================
; DIRECCION + BOTON
;==========================================================================
[State -1, Walljump]
type = ChangeState
value = 330
triggerall = command = "holdfwd" && command = "holdup"
triggerall = statetype = A
triggerall = stateno != 650 && vel x < 0
triggerall = BackEdgeDist <= 10
trigger1 = ctrl

; F + WP
[State -1]
type = ChangeState
value = 320
triggerall = var(50) = 0
trigger1 = command = "D_x"
trigger1 = statetype = A
trigger1 = ctrl = 1

; F + WK (Normal)
[State -1]
type = ChangeState
value = 310
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

; F + WK (Normal)
[State -1]
type = ChangeState
value = 310
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S && ctrl = 1

; F + WK (Chain)
[State -1]
type = ChangeState
value = 315
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = stateno = 215 && MoveContact
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 410 && MoveContact

; DF + WK (Normal)
[State -1]
type = ChangeState
value = 300
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S && ctrl = 1

; DF + WK (Chain)
[State -1]
type = ChangeState
value = 305
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = stateno = 215 && MoveContact
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 410 && MoveContact


;==========================================================================
; ATAQUES EN PIE (Ratoneando)
;==========================================================================
; WP
[State -1]
type = ChangeState
value = 205
triggerall = var(50) = 0
triggerall = command = "x"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 215 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact

; WK
[State -1]
type = ChangeState
value = 215
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [100,102]
trigger3 = stateno = 215 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact

; SP
[State -1]
type = ChangeState
value = 225
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]

; SK
[State -1]
type = ChangeState
value = 235
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]

;==========================================================================
; ATAQUES EN PIE (Normales)
;==========================================================================
; WP
[State -1]
type = ChangeState
value = 200
triggerall = var(50) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = Stateno=[100,102]

; WK
[State -1]
type = ChangeState
value = 210
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = Stateno=[100,102]

; SP
[State -1]
type = ChangeState
value = 220
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = Stateno=[100,102]

; SK
[State -1]
type = ChangeState
value = 230
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = Stateno=[100,102]

;==========================================================================
; Crouching Attacks
;==========================================================================
; WP
[State -1]
type = ChangeState
value = 400
triggerall = var(50) = 0
triggerall = statetype = C
triggerall = command = "x"
trigger1 = statetype = C && ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 215 && MoveContact
trigger4 = stateno = 400 && MoveContact

; WK
[State -1]
type = ChangeState
value = 410
triggerall = var(50) = 0
triggerall = statetype = C
triggerall = command = "a"
trigger1 = statetype = C && ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 215 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact

; SP
[State -1]
type = ChangeState
value = 420
triggerall = var(50) = 0
triggerall = statetype = C
triggerall = command = "y"
trigger1 = statetype = C && ctrl
trigger2 = Stateno=[100,102]

; SK
[State -1]
type = ChangeState
value = 430
triggerall = var(50) = 0
triggerall = statetype = C
triggerall = command = "b"
trigger1 = statetype = C && ctrl
trigger2 = Stateno=[100,102]

;==========================================================================
; Jumping Attacks
;==========================================================================
; WP (N)
[State -1]
type = ChangeState
value = 600
triggerall = var(50) = 0
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = Vel X = 0
trigger1 = ctrl = 1

; WP (D)
[State -1]
type = ChangeState
value = 605
triggerall = var(50) = 0
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; WK (N)
[State -1]
type = ChangeState
value = 610
triggerall = var(50) = 0
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = Vel X = 0
trigger1 = ctrl = 1

; WK (D)
[State -1]
type = ChangeState
value = 615
triggerall = var(50) = 0
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; SP (N)
[State -1]
type = ChangeState
value = 620
triggerall = var(50) = 0
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = Vel X = 0
trigger1 = ctrl = 1

; SP (D)
[State -1]
type = ChangeState
value = 625
triggerall = var(50) = 0
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; SK (N)
[State -1]
type = ChangeState
value = 630
triggerall = var(50) = 0
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = Vel X = 0
trigger1 = ctrl = 1

; SK (D)
[State -1]
type = ChangeState
value = 635
triggerall = var(50) = 0
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

;==========================================================================
; BURLA
;==========================================================================
[State -1]
type = ChangeState
value = 195
triggerall = var(50) = 0
triggerall = command = "s"
triggerall = stateno != 195
triggerall = statetype != A 
trigger1= ctrl

;---------------------------------------------------------------------------
;===========================================================================
;                                                   E N D   O F   F I L E .
;===========================================================================
;---------------------------------------------------------------------------