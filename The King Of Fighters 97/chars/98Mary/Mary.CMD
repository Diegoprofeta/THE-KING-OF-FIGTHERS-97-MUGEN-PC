;-----------------------------------------------------------------------
;-|Super Motions |------------------------------------------------------
[Command]
name = "typhoon_DM"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, a
time = 45
[Command]
name = "typhoon_DM"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, b
time = 45

[Command]
name = "dynamite"
command = ~D, DF, F, D, DF, F, a
time = 25
[Command]
name = "dynamite"
command = ~D, DF, F, D, DF, F, b
time = 25

[Command]
name = "splash"
command = ~D, DF, F, DF, D, DB, B, x
time = 25
[Command]
name = "splash"
command = ~D, DF, F, DF, D, DB, B, y
time = 25

;-----------------------------------------------------------------------
;-| Special Motions |---------------------------------------------------
; Vertical Arrow
[Command]
name = "uppercut_b"
command = ~F, D, DF, a
Time = 20

[Command]
name = "uppercut_d"
command = ~F, D, DF, b
Time = 20

; suplex
[Command]
name = "goodnight1"
command = ~F, DF, D, DB, B, F, x
Time = 20
[Command]
name = "goodnight2"
command = ~F, DF, D, DB, B, F, y
Time = 20

; Straight Slicer
[Command]
name = "slicer_b"
command = ~30$B, F, a
Time = 20

[Command]
name = "slicer_d"
command = ~30$B, F, b
Time = 20

; Electroshock
[Command]
name = "Electro"
command = ~B, F, a
Time = 20

[Command]
name = "Electro"
command = ~B, F, b
Time = 20

; counters
[Command]
name = "tatsumaki_b"
command = ~D, DB, B, a
Time = 20

[Command]
name = "tatsumaki_d"
command = ~D, DB, B, b
Time = 20

; spinfall / M.Spider
[Command]
name = "fireball_a"
command = ~D, DF, F, x
Time = 20

[Command]
name = "fireball_c"
command = ~D, DF, F, y
Time = 20

; Blood Talon
;[Command]
;name = "talon_1"
;command = ~D, D, a
;Time = 20
;[Command]
;name = "talon_2"
;command = ~D, D, b
;Time = 20

;-----------------------------------------------------------------------
;-| Double Tap |--------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 12

[Command]
name = "BB"
command = B, B
time = 12

;-----------------------------------------------------------------------
;-| 2/3 Button Combination |--------------------------------------------
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "ab"
command = a+x
time = 1

[Command]
name = "cd"
command = b+y
time = 1

;-----------------------------------------------------------------------
;-| Hold Button |-------------------------------------------------------

[Command]
name = "hold_a"
command = /x
time = 1

[Command]
name = "hold_b"
command = /a
time = 1

[Command]
name = "hold_c"
command = /y
time = 1

[Command]
name = "hold_d"
command = /b
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-----------------------------------------------------------------------
;-| Dir + Button |------------------------------------------------------

[Command]
name = "throw_d"
command = /F,b
time = 1

[Command]
name = "throw_d"
command = /B,b
time = 1

[Command]
name = "throw_c"
command = /F,y
time = 1

[Command]
name = "throw_c"
command = /B,y
time = 1

[Command]
name = "f_AB"
command = /F,x+a
time = 1

[Command]
name = "b_AB"
command = /B,x+a
time = 1

[Command]
name = "fwd_a"
command = /F,x
time = 1

[Command]
name = "fwd_b"
command = /F,a
time = 1

[Command]
name = "fwd_c"
command = /F,y
time = 1

[Command]
name = "fwd_d"
command = /F,b
time = 1

[Command]
name = "back_c"
command = /B,y
time = 1

;-----------------------------------------------------------------------
;-| Single Button |-----------------------------------------------------

[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = a
time = 1

[Command]
name = "c"
command = y
time = 1

[Command]
name = "d"
command = b
time = 1

[Command]
name = "s"
command = s
time = 1

;-----------------------------------------------------------------------
;-| Hold Dir |----------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1
[Command]
name = "holdback"
command = /$B
time = 1
[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "jump"
command = D, $U
time = 11

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;===========================================================================

;===========================================================================
; ADVANCE / EXTRA
;===========================================================================
; ADVANCE
[State -1]
type = ChangeState
value = 790
triggerall = Var(50) != 1
trigger1 = command = "b" && command = "c"
trigger1 = power >= 1000 && statetype = S && ctrl = 1 && var(7) <= 0

; EXTRA
[State -1]
type = ChangeState
value = 910
triggerall = power < 3000
trigger1 = command = "hold_a"
trigger1 = command = "hold_d"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
; Supers
;===========================================================================
;M.Typhoon
[State -1]
type = ChangeState
value = 3500 + ((var(7) > 0) * 100)
triggerall = Var(50) != 1
triggerall = statetype != A && power >= 1000 && command = "typhoon_DM"
triggerall = stateno != 1001
trigger1 = ctrl = 1
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;Splash Rose
[State -1]
type = ChangeState
value = 3300 + ((var(7) > 0) * 100)
triggerall = Var(50) != 1
triggerall = statetype != A && power >= 1000 && command = "splash"
triggerall = stateno != 1001
trigger1 = ctrl = 1
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;Dynamite Swing
[State -1]
type = ChangeState
value = 3100 + ((var(7) > 0) * 100)
triggerall = Var(50) != 1
triggerall = statetype != A && power >= 1000 && command = "dynamite"
triggerall = stateno != 1001
trigger1 = ctrl = 1
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;===========================================================================
; Tencicas
;===========================================================================
; Straigt Slicer (W)
[State -1]
type = ChangeState
value = 1600
triggerall = command = "slicer_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

; Straigt Slicer (S)
[State -1]
type = ChangeState
value = 1650
triggerall = command = "slicer_d"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
; Counter 1
[State -1]
type = ChangeState
value = 1400
triggerall = command = "tatsumaki_b"
trigger1 = statetype = S
trigger1 = ctrl

; Counter 2
[State -1]
type = ChangeState
value = 1450
triggerall = command = "tatsumaki_d"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Goodnight (S)
[State -1]
type = ChangeState
value = 1350
triggerall = command = "goodnight2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;Goodnight (W)
[State -1]
type = ChangeState
value = 1300
triggerall = command = "goodnight1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
; Spider (W Spinfall impacta)
[State -1]
type = ChangeState
value = 1250
triggerall = stateno = 1200
triggerall = movehit
triggerall = statetype = A
trigger1 = command = "fireball_a"
trigger2 = command = "fireball_c"

; spider (S Spinfall impacta)
[State -1]
type = ChangeState
value = 1250
triggerall = stateno = 1210
triggerall = movehit
triggerall = statetype = A
trigger1 = command = "fireball_a"
trigger2 = command = "fireball_c"

;Spinfall (W)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "fireball_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;Spinfall (S)
[State -1]
type = ChangeState
value = 1210
triggerall = command = "fireball_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Vertical Arrow (W)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "uppercut_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;Vertical Arrow (S)
[State -1]
type = ChangeState
value = 1110
triggerall = command = "uppercut_d"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 300 && movecontact
trigger11 = stateno = 310 && movecontact
trigger12 = stateno = 320 && movecontact
trigger13 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
; Blood Talon (W)
;[State -1]
;type = ChangeState
;value = 1000
;triggerall = command = "talon_1"
;triggerall = statetype = C
;triggerall = p2bodydist X < 30
;triggerall = p2bodydist Y >= 0 && p2bodydist Y >= -10
;triggerall = p2statetype = L
;triggerall = p2stateno != 5120
;trigger1 = ctrl
; Blood Talon (S)
;[State -1]
;type = ChangeState
;value = 1050
;triggerall = command = "talon_2"
;triggerall = statetype = C
;triggerall = p2bodydist X < 30
;triggerall = p2bodydist Y >= 0 && p2bodydist Y >= -10
;triggerall = p2statetype = L
;triggerall = p2stateno != 5120
;trigger1 = ctrl
;===========================================================================
; Pasos dobles
;===========================================================================
; Dash hacia adelante
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

; Dash hacia atras
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
; Agarres
;===========================================================================
; SP agarre
[State -1]
type = ChangeState
value = 900
trigger1 = command = "throw_c"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1

; SK agarre
[State -1]
type = ChangeState
value = 920
trigger1 = command = "throw_d"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1

;===========================================================================
; CD Attacks
;===========================================================================
;Counter
[State -1]
type = ChangeState
value = 245
triggerall = Var(50) != 1
triggerall = command = "cd"
trigger1 = var(7) > 0 && stateno = [150,153]

;Normal
[State -1]
type = ChangeState
value = 240
triggerall = Var(50) != 1
triggerall = command = "cd"
trigger1 = statetype != A && ctrl = 1

;Air
[State -1]
type = ChangeState
value = 640
triggerall = command = "cd"
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
; Evasiones, Rollings, y similares
;===========================================================================
; DM Escape Roll backward
[State -1]
type = ChangeState
value = 266
triggerall = Var(50) != 1
trigger1 = command = "b_AB" && var(7) > 0 && stateno = [150,153]

; DM Escape Roll Forward
[State -1]
type = ChangeState
value = 261
triggerall = Var(50) != 1
trigger1 = command = "f_AB" && var(7) > 0 && stateno = [150,153]

; Rolling atras
[State -1]
type = ChangeState
value = 265
triggerall = command = "ab"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

; Rolling adelante
[State -1]
type = ChangeState
value = 260
triggerall = command = "ab"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

; Dodge
[State -1]
type = ChangeState
value = 250
triggerall = command = "ab"
triggerall = stateno != 250
trigger1 = statetype = S
trigger1 = ctrl

; Dodge Ret
[State -1]
type = ChangeState
value = 251
triggerall = stateno = 250
triggerall = animelem = 9, < 0
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "d"

;===========================================================================
; Direccion + Boton
;===========================================================================
; F + WP
[State -1]
type = ChangeState
value = 300
triggerall = command = "holdfwd"
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact

;F + WK
[State -1]
type = ChangeState
value = 310
triggerall = command = "holdfwd"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact

;DF + WK
[State -1]
type = ChangeState
value = 320
trigger1 = command = "holddown"
trigger1 = command = "holdfwd"
trigger1 = command = "b"
trigger1 = statetype = C
trigger1 = ctrl

;===========================================================================
; Ataques ratones
;===========================================================================
; WP
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X < 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

; WK
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X < 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

; SP
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]

; SK
[State -1]
type = ChangeState
value = 235
triggerall = command = "d"
triggerall = command != "holddown"
triggerall = P2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]

;===========================================================================
; Ataques normales
;===========================================================================
; WP
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]

; WK
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = P2bodydist X >= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

; SP
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]

; SK
[State -1]
type = ChangeState
value = 230
triggerall = command = "d"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]

;===========================================================================
; Ataques agachados
;===========================================================================
; WP
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

; WK
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

; SP
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno=[100,102]

; SK
[State -1]
type = ChangeState
value = 430
triggerall = command = "d"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno=[100,102]

;===========================================================================
; ataques aereos
;===========================================================================
; WP
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; WK
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

; WK
[State -1]
type = ChangeState
value = 615
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

; SP
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
triggerall = statetype = A
triggerall = ctrl
trigger1 = Vel X = 0

; SP dir
[State -1]
type = ChangeState
value = 625
triggerall = command = "c"
triggerall = statetype = A
triggerall = ctrl
trigger1 = Vel X != 0

; SK
[State -1]
type = ChangeState
value = 630
triggerall = command = "d"
triggerall = statetype = A
triggerall = ctrl
trigger1 = Vel X = 0

; SK dir
[State -1]
type = ChangeState
value = 635
triggerall = command = "d"
triggerall = statetype = A
triggerall = ctrl
trigger1 = Vel X != 0

;===========================================================================
; burla
;===========================================================================
[State -1, Taunt 1]
type = ChangeState
value = 195 + ((var(7) > 0) * 2)
triggerall = command = "s"
trigger1 = statetype = S && stateno != 195 && stateno != 197 && ctrl
