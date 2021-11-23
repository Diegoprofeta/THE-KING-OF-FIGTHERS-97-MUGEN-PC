;==========================================================================
;-| AI Motions |-----------------------------------------------------------
;--------------------------------------------------------------------------
[command]
name = "AI1"
command = B,D,a+c,z,c+b,s
time = 1
[command]
name = "AI2"
command = B,F,c+b,z,c+z,x,s
time = 1
[command]
name = "AI3"
command = B,U,a+b,y,c+y,s,z,D
time = 1
[command]
name = "AI4"
command = B,B,a+y,c,z+x,s
time = 1
[command]
name = "AI5"
command = B,B,a+b,z,c+b,s
time = 1
[command]
name = "AI6"
command = D,B,z+b,z,c+x,s
time = 1
[command]
name = "AI7"
command = B,U,a+b,z,c+x,s
time = 1
[command]
name = "AI8"
command = B,F,a+b,c,c+x,s
time = 1
[Command]
name = "AI9"
command = U,D,F,F,B,B,s
time = 1
[Command]
name = "AI10"
command = U,D,F,F,B,F,s
time = 1
[Command]
name = "AI11"
command = U,D,F,F,B,D,s
time = 1
[Command]
name = "AI12"
command = U,D,F,F,B,U,s
time = 1
[Command]
name = "AI13"
command = U,D,F,F,U,B,s
time = 1
[Command]
name = "AI14"
command = U,D,F,F,D,B,s
time = 1
[Command]
name = "AI15"
command = U,D,F,F,F,B,s
time = 1
[Command]
name = "AI16"
command = U,D,U,F,B,B,s
time = 1
[Command]
name = "AI17"
command = U,D,D,F,B,B,s
time = 1
[Command]
name = "AI18"
command = D,D,F,F,B,B,s
time = 1
[Command]
name = "AI19"
command = U,U,F,F,B,B,s
time = 1
[Command]
name = "AI20"
command = U,B,F,F,B,B,s
time = 1

;==========================================================================
;-| Super Motions |--------------------------------------------------------
;--------------------------------------------------------------------------
; Kuren Satsu Kon
[Command]
name = "Sakkon"
command = ~D, F, $D, B, a
time = 35
[Command]
name = "Sakkon"
command = ~D, F, $D, B, b
time = 35

; Salamander Slam
[Command]
name = "Salamander"
command = F, B, $D, F, x
time = 35
[Command]
name = "Salamander"
command = F, B, $D, F, y
time = 35

; Chou Kaen Senpuu Kon
[Command]
name = "SenpuuKon1"
command = D, F, $D, B, x
time = 35
[Command]
name = "SenpuuKon2"
command = D, F, $D, B, y
time = 35

; Tai Senpuu ("Go to Hell")
[Command]
name = "GoToHell"
command = D, DF, F, D, DF, F, x
time = 35
[Command]
name = "GoToHell"
command = D, DF, F, D, DF, F, y
time = 35

;==========================================================================
;-| Special Motions |------------------------------------------------------
;--------------------------------------------------------------------------
; Ka Ryuu Tsugeki Kon
[Command]
name = "tsugeki2_a"
command = ~B, DB, D, DF, F, a
time = 15
; Sui Ryuu Tsugeki Kon
[Command]
name = "tsugeki2_b"
command = ~B, DB, D, DF, F, b
time = 15

; Ka Ryuu Tsugeki Kon
[Command]
name = "tsugeki1_a"
command = ~D, DB, B, a
time = 15
; Sui Ryuu Tsugeki Kon
[Command]
name = "tsugeki1_b"
command = ~D, DB, B, b
time = 15

; Kyoushuu Hishou Kon
[Command]
name = "Shoryu_a"
command = ~F, D, DF, a
time = 15
[Command]
name = "Shoryu_b"
command = ~F, D, DF, b
time = 15

; Sen'en Sa Kon
[Command]
name = "Shoryu_x"
command = ~F, D, DF, x
time = 15
[Command]
name = "Shoryu_y"
command = ~F, D, DF, y
time = 15

; Kaen Sansetsu: Choudan Zuki
[Command]
name = "Choudan2_x"
command = ~D, DF, F, x
time = 15
[Command]
name = "Choudan2_y"
command = ~D, DF, F, y
time = 15

; Sansetsukon: Choudan Uchi
[Command]
name = "Choudan1_x"
command = ~B,DB,D,DF,F,x
time = 20
[Command]
name = "Choudan1_y"
command = ~B,DB,D,DF,F,y
time = 20

; Suzume Otoshi
[Command]
name = "Otoshi_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "Otoshi_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "Otoshi_UM"
command = ~F, DF, D, DB, y
time = 20

; Senpuukon
[Command]
name = "Qickly_x"
command = ~x, x, x
time = 15

;Shuuten Renpa Kon
[Command]
name = "Qicky_y"
command = ~y, y, y
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

;==========================================================================
;-| 2/3 Button Combination |-----------------------------------------------
;==========================================================================
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
name = "fwd_a"
command = /F, a
time = 1
[Command]
name = "fwd_b"
command = /F, b
time = 1
[Command]
name = "fwd_x"
command = /F, x
time = 1
[Command]
name = "fwd_y"
command = /F, y
time = 1

[Command]
name = "back_x"
command = /B, x
[Command]
name = "back_y"
command = /B, y
time = 1

[Command]
name = "fwd_roll"
command = /F, a+x
time = 1
[Command]
name = "back_roll"
command = /B, a+x
time = 1

;-| Single Button |---------------------------------------------------------

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
name = "holdfwd_x"
command = /$F, x
time = 1

[Command]
name = "holdfwd_y"
command = /$F, y
time = 1

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
time = 12

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
; Satsukon
[State -1]
type = ChangeState
value = 3300 + ((var(7) > 0) * 50)
triggerall = var(50) = 0
triggerall = command = "Sakkon"
triggerall = power >= 1000
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact
trigger12 = stateno = 1404 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger13 = stateno = 1454 && animelemtime(2) > 0 && animelemtime(4) < 0

; Salamander Slam
[State -1]
type = ChangeState
value = 3200 + ((var(7) > 0) * 50)
triggerall = var(50) = 0
triggerall = command = "Salamander"
triggerall = power >= 1000
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Chou Kaen Senpuu Kon
[State -1]
type = ChangeState
value = 3100 + ((var(7) > 0) * 50)
triggerall = var(50) = 0
triggerall = command = "SenpuuKon1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Chou Kaen Senpuu Kon
[State -1]
type = ChangeState
value = 3110 + ((var(7) > 0) * 40)
triggerall = var(50) = 0
triggerall = command = "SenpuuKon2"
triggerall = statetype != A
triggerall = power >= 1000
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Tai Senpuu ("Go To Hell")
[State -1]
type = ChangeState
value = 3000 + ((var(7) > 0) * 50)
triggerall = var(50) = 0
triggerall = command = "GoToHell"
triggerall = power >= 1000
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

;==========================================================================
; TECNICAS DE COMBATE
;==========================================================================
; Ka Ryuu Tsugeki Kon (W, Attack)
[State -1]
type = ChangeState
value = 1600
triggerall = var(50) = 0
triggerall = command = "tsugeki2_a"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Ka Ryuu Tsugeki Kon (S, Attack)
[State -1]
type = ChangeState
value = 1650
triggerall = var(50) = 0
triggerall = command = "tsugeki2_b"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Ka Ryuu Tsugeki Kon (W, Counter)
[State -1]
type = ChangeState
value = 1500
triggerall = var(50) = 0
triggerall = command = "tsugeki1_a"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Ka Ryuu Tsugeki Kon (S, Counter)
[State -1]
type = ChangeState
value = 1550
triggerall = var(50) = 0
triggerall = command = "tsugeki1_b"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Olympic Jump (W)
[State -1]
type = ChangeState
value = 1400
triggerall = var(50) = 0
triggerall = command = "Shoryu_a"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Olympic Jump (S)
[State -1]
type = ChangeState
value = 1450
triggerall = var(50) = 0
triggerall = command = "Shoryu_b"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Shoryuken (W)
[State -1]
type = ChangeState
value = 1300
triggerall = var(50) = 0
triggerall = command = "Shoryu_x"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Shoryuken (S)
[State -1]
type = ChangeState
value = 1350
triggerall = var(50) = 0
triggerall = command = "Shoryu_y"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Ataque extension (W)
[State -1]
type = ChangeState
value = 1200
triggerall = var(50) = 0
triggerall = command = "Choudan1_x"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Ataque extension (S)
[State -1]
type = ChangeState
value = 1250
triggerall = var(50) = 0
triggerall = command = "Choudan1_y"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Antiaereo (W)
[State -1]
type = ChangeState
value = 1100
triggerall = var(50) = 0
triggerall = command = "Otoshi_x"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact
trigger12 = stateno = 1404 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger13 = stateno = 1454 && animelemtime(2) > 0 && animelemtime(4) < 0

; Antiaereo (S)
[State -1]
type = ChangeState
value = 1150
triggerall = var(50) = 0
triggerall = command = "Otoshi_y"
triggerall = statetype != A
trigger1= ctrl
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact
trigger12 = stateno = 1404 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger13 = stateno = 1454 && animelemtime(2) > 0 && animelemtime(4) < 0

; Antiaereo (02UM)
[State -1]
type = ChangeState
value = 1151
triggerall = var(50) = 0
triggerall = command = "Otoshi_UM"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact
trigger12 = stateno = 1404 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger13 = stateno = 1454 && animelemtime(2) > 0 && animelemtime(4) < 0

; Ataque rapido con arma (W)
[State -1]
type = ChangeState
value = 1000
triggerall = var(50) = 0
triggerall = command = "Qickly_x"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

; Ataque rapido con arma (S)
[State -1]
type = ChangeState
value = 1050
triggerall = var(50) = 0
triggerall = command = "Qicky_y"
triggerall = statetype != A
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 312 && animelemtime(1) > 0 && animelemtime(3) < 0
trigger9 = stateno = 351 && MoveContact
trigger10 = stateno = 410 && MoveContact
trigger11 = stateno = 420 && MoveContact

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
; Agarre 1
[State -1]
type = ChangeState
value = 800
triggerall = var(50) = 0
trigger1 = command = "fwd_y"
trigger1 = statetype != A
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1

; Agarre 2
[State -1]
type = ChangeState
value = 850
triggerall = var(50) = 0
trigger1 = command = "fwd_b"
trigger1 = statetype != A
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1

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
value = 351
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
; F + WP
[State -1]
type = ChangeState
value = 310
triggerall = var(50) = 0
triggerall = command = "fwd_x"
triggerall = command != "holddown"
triggerall = statetype != A 
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 410 && MoveContact
trigger9 = stateno = 420 && MoveContact

; F + WK
[State -1]
type = ChangeState
value = 300
triggerall = var(50) = 0
triggerall = command = "fwd_a"
triggerall = command != "holddown"
triggerall = statetype != A 
trigger1= ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 205 && MoveContact
trigger5 = stateno = 215 && MoveContact
trigger6 = stateno = 225 && MoveContact
trigger7 = stateno = 235 && MoveContact
trigger8 = stateno = 410 && MoveContact
trigger9 = stateno = 420 && MoveContact

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
trigger3 = stateno = 410 && MoveContact

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
trigger3 = stateno = 210 && animelemtime(3) > 0 && animelemtime(5) < 0

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
trigger3 = stateno = 210 && animelemtime(3) > 0 && animelemtime(5) < 0
trigger4 = stateno = 410 && animelemtime(3) > 0 && animelemtime(5) < 0

; WK
[State -1]
type = ChangeState
value = 410
triggerall = var(50) = 0
triggerall = statetype = C
triggerall = command = "a"
trigger1 = statetype = C && ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 210 && animelemtime(3) > 0 && animelemtime(5) < 0
trigger4 = stateno = 410 && animelemtime(3) > 0 && animelemtime(5) < 0

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
trigger2 = Stateno=[100,102]

;---------------------------------------------------------------------------
;===========================================================================
;###########################################################################
;
;			     A . I .   S E C T I O N .
;
;###########################################################################
;===========================================================================
;---------------------------------------------------------------------------
[State -1, AI CMD]
type = VarSet
triggerall = alive
triggerall = stateno < 5500
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
v = 50
value = 1
ignorehitpause = 1
persistent = 9

[State -1, OFF]
type = VarSet
trigger1 = roundstate>2
trigger2 = !alive
trigger3 = stateno = 5500
v = 50
value = 0
ignorehitpause = 1
persistent = 1

;----------------------------------------
; AI Combo 1
[State AI, Close SP]
type = ChangeState
value = 225
triggerall = var(50) = 1
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = p2statetype = c
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,30]
triggerall = statetype = S
trigger1 = ctrl

[State AI. Crouch WK]
type = ChangeState
value = 410
triggerall = var(50) = 1
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = p2statetype = S
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,30]
triggerall = statetype = C
trigger1 = ctrl

[State AI, Stand WK]
type = ChangeState
value = 215
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
triggerall = p2bodydist x = [0,30]
trigger1 = stateno = 410

[State AI, F + WP]
type = ChangeState
value = 310
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 215
trigger2 = stateno = 225

[State AI, DM / SDM "Go To Hell"]
type = ChangeState
value = 3000 + ((var(7) > 0) * 50)
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = power >= 1000
trigger1 = stateno = 312 && animelemtime(1) > 0 && animelemtime(2) < 0

[State AI, Ataque extension]
type = ChangeState
value = 1200
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = power <= 1000
trigger1 = stateno = 312 && animelemtime(1) > 0 && animelemtime(2) < 0

[State AI, Continuacion]
type = ChangeState
value = 1201
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = moveContact
triggerall = random <= 999
trigger1 = stateno = 1200 && MoveHit

;----------------------------------------
; AI Combo 2
[State AI, Close SK]
type = ChangeState
value = 1450
triggerall = var(50) = 1
triggerall = random <= 750
;triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [40,59]
triggerall = p2movetype = A
triggerall = statetype = S
trigger1 = ctrl

[State AI, DM / SDM Guren Satsu Kon]
type = ChangeState
value = 3300 - ((var(7) > 0) * 50)
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = power >= 1000
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 1454 && animelemtime(2) > 0 && animelemtime(4) < 0

[State AI; 02UM Aintiaereo]
type = ChangeState
value = 1151
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 1454 && animelemtime(2) > 0 && animelemtime(4) < 0

;----------------------------------------
; Others
[State AI, Satsu Kon]
type = ChangeState
value = 3300 + ((var(7)>0) * 50)
triggerall = var(50) = 1
triggerall = random <= 750
triggerall = power >= 1000
triggerall = p2statetype != A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,80]
triggerall = p2movetype = A
triggerall = statetype = S
trigger1 = ctrl

[State AI, Satsu Kon]
type = ChangeState
value = 3300 + ((var(7)>0) * 50)
triggerall = var(50) = 1
triggerall = random <= 750
triggerall = power >= 1000
triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,50]
triggerall = statetype = S
trigger1 = ctrl

[State AI, DP + SP]
type = ChangeState
value = 1350
triggerall = var(50) = 1
triggerall = random <= 750
triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,19]
triggerall = statetype = S
trigger1 = ctrl

[State AI, DP + SK]
type = ChangeState
value = 1450
triggerall = var(50) = 1
triggerall = random <= 750
triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [20,59]
triggerall = statetype = S
trigger1 = ctrl

[State AI, Anti Air]
type = ChangeState
value = 1100
triggerall = var(50) = 1
triggerall = random <= 750
triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [60,90]
triggerall = statetype = S
trigger1 = ctrl

[State AI, joudan Atemi Nage]
type = ChangeState
value = 1550
triggerall = var(50) = 1
triggerall = random <= 200
triggerall = p2statetype != A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2stateno != [400,499]
triggerall = p2bodydist x = [0,80]
triggerall = p2movetype = A
triggerall = statetype = S
trigger1 = ctrl

[State AI, Chuudan Atemi Nage]
type = ChangeState
value = 1500
triggerall = var(50) = 1
triggerall = random <= 200
triggerall = p2statetype != A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,80]
triggerall = p2stateno = [400,499]
triggerall = p2movetype = A
triggerall = statetype = S
trigger1 = ctrl

[State AI, Weapon]
type = ChangeState
value = 1050
triggerall = var(50) = 1
triggerall = random <= 300
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2bodydist x = [50,80]
trigger1 = ctrl

[State AI, S extension]
type = ChangeState
value = 1250
triggerall = var(50) = 1
triggerall = random <= 75
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [70,150]
triggerall = statetype = S
trigger1 = ctrl

[State AI, Continuacion]
type = ChangeState
value = 1251
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = moveContact
triggerall = random <= 999
trigger1 = stateno = 1250

[State AI, ADVANCE activation]
type = ChangeState
value = 790
triggerall = var(50) = 1
triggerall = var(7) = 0
triggerall = power >= 1000
triggerall = p2stateno = [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [100,300]
triggerall = p2movetype = H
triggerall = statetype = S
trigger1 = ctrl

[State AI, Crouch SK]
type = ChangeState
value = 430
triggerall = var(50) = 1
triggerall = p2stateno != [5050,5121]
triggerall = p2statetype != A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [40,70]
triggerall = p2movetype != A
triggerall = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
;Guardia & Extra Moves
[State AI, Guard]
type = ChangeState
value = 131
triggerall = var(50) = 1
triggerall = Roundstate = 2 && statetype != A && ctrl
trigger1 = random < 850
trigger1 = enemynear,statetype != A
trigger1 = enemynear, HitDefAttr = C,AA,AP && P2BodyDist X = [-30,80]
trigger1 = (EnemyNear,MoveType = A || p2movetype = A)
trigger2 = random < 900
trigger2 = enemynear,statetype != A && inguarddist

[State AI, Guard]
type = Changestate
value = 130
triggerall = var(50) = 1
triggerall = Roundstate = 2 && statetype != A && ctrl
trigger1 = random < 850
trigger1 = enemynear,statetype = A
trigger1 = enemynear, HitDefAttr = SA, AA, SA ,HA ,AP, SP, HP && P2BodyDist X = [-30,80]
trigger1 = (EnemyNear,MoveType = A || p2movetype = A)
trigger2 = random < 990
trigger2 = inGuardDist && Enemy, NumProj >= 1
trigger3 = random < 950
trigger3 = enemynear,statetype = A && inguarddist

[State AI, SP Grab]
type = ChangeState
value = 850
triggerall = var(50) = 1
triggerall = p2stateno != [5050,5121]
trigger1 = (p2movetype = A || p2stateno = [700,799])&& random <= 500 && p2bodydist x <= 25 && p2statetype != A
trigger1 = p2statetype != L && statetype != A && ctrl

[State AI, Random]
type = Varset
trigger1 = var(50) != 0 && stateno = 40 && time=1
sysvar(1) = ifelse(p2statetype=L, -1+((backedgedist <70)*2), 1-((random<50&!(p2dist X<50))*2)-((p2dist X<50)*1))

[State AI, Random]
type = VarSet
trigger1 = var(50) != 0 && stateno = 40 && time = 1
v = 4
value = ifelse(p2statetype=L||(enemy,numproj!=0), 0, ifelse(p2dist X<150, 1, 0))
ignorehitpause = 1
persistent = 1

[State AI, Random]
type = VarSet
trigger1 = var(50) != 0 && (stateno = 40) && time = 1 && random<300
v = 3
value = 3+((p2statetype=L)*1)
ignorehitpause = 1
persistent = 1

[State AI, Rolling B]
type = ChangeState
value = 320
triggerall = var(50) = 1
triggerall = p2stateno = [5100,5121]
triggerall = random <= 100
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [100,200]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI, Rolling F]
type = ChangeState
value = 310
triggerall = var(50) = 1
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = InGuardDist = 1
triggerall = ctrl
triggerall = RoundState = 2
triggerall = random <= 790
triggerall = p2bodydist x = [70,300]
trigger1 = ctrl && enemynear,NumProj && statetype != A && random = [20,300]
trigger2 = inguarddist = [0,120]
trigger2 = ctrl && enemynear,NumProj && statetype != A

;--------------------------------------------------------------------
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(50) = 1
triggerall = RoundState = 2
triggerall = p2statetype != A
triggerall = statetype = S
triggerall = p2bodydist X = [-5,50]
triggerall = p2stateno = [5050,5121]
triggerall = BackEdgeBodyDist >= 40
trigger1 = ctrl
