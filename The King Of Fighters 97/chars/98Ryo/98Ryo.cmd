;===========================================================================
; CMD file for Ryo Sakazaki
;===========================================================================
;-| AI Motions |------------------------------------------------------------
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
[Command]
name = "AI21"
command = UB, U, F, a+b,s
time = 1
[Command]
name = "AI22"
command = UB, U, F, b+c,s
time = 1
[Command]
name = "AI23"
command = UB, U, F, a+c,s
time = 1
[Command]
name = "AI24"
command = UF, U, B, x+y,s
time = 1
[Command]
name = "AI25"
command = UF, U, B, y+z,s
time = 1
[Command]
name = "AI26"
command = UF, U, B, x+z,s
time = 1
[Command]
name = "AI27"
command = UB, U, F, x+y,s
time = 1
[Command]
name = "AI28"
command = UB, U, F, y+z,s
time = 1
[Command]
name = "AI29"
command = UB, U, F, x+z,s
time = 1
[Command]
name = "AI30"
command = UF, U, B, a+b,s
time = 1
[Command]
name = "AI31"
command = UF, U, B, b+c,s
time = 1
[Command]
name = "AI32"
command = UF, U, B, a+c,s
time = 1
[Command]
name = "AI33"
command = UF, DB, UB,DF ,x,s
time = 1
[Command]
name = "AI34"
command = UF, DB, UB,DF ,y,s
time = 1
[Command]
name = "AI35"
command = UF, DB, UB,DF , z,s
time = 1

;---------------------------------------------------------------------------
;-| SUPERS |----------------------------------------------------------------

; Tenma Haoh Shohoken
[Command]
name = "Tenma"
command = ~F, B, DB, D, DF, F, x
time = 20
[Command]
name = "Tenma"
command = ~F, B, DB, D, DF, F, y
time = 20

; Ryuuko Ranbu
[Command]
name = "ryuuko_x"
command = ~D, F, $D, B, x
time = 25
[Command]
name = "ryuuko_y"
command = ~D, F, $D, B, y
time = 25

; Tenshi Haoken
[Command]
name = "tenti"
command = ~D, DF, F, D, DF, F, x
time = 20
[Command]
name = "tenti"
command = ~D, DF, F, D, DF, F, y
time = 20

; Haoh Shohoken
[Command]
name = "hauo_x"
command = ~F, B, DB, D, DF, F, x
time = 20
[Command]
name = "hauo_y"
command = ~F, B, DB, D, DF, F, y
time = 20

;---------------------------------------------------------------------------
;-| Tecnicas |--------------------------------------------------------------

;Kyokugen-ryuu Renbu Ken
[Command]
name = "Renbu"
command = ~F, DF, D, DB, B, F, y
Time = 20

; Moh Koh Raijin Gou
[Command]
name = "Raijin_x"
command = ~D, DB, B, x
Time = 20
[Command]
name = "Raijin_y"
command = ~D, DB, B, y
Time = 20

; Zan Retsu Ken
[Command]
name = "zannretu_x"
command = ~F, B, F, x
Time = 20
[Command]
name = "zannretu_y"
command = ~F, B, F, y
Time = 20

; Moh Koh Raijin Satsu
[Command]
name = "raijin_a"
command = ~D, DF, F, a
Time = 20
[Command]
name = "raijin_b"
command = ~D, DF, F, b
Time = 20

; Hien Shippu Kyaku (98 UM)
[Command]
name = "Hien2_a"
command = ~30$DB, F, a
Time = 20
[Command]
name = "Hien2_b"
command = ~30$DB, F, b
Time = 20

; Hien Shippu Kyaku (98 nrm)
[Command]
name = "Hien1_a"
command = ~F, DF, D, DB, B, a
Time = 20
[Command]
name = "Hien1_b"
command = ~F, DF, D, DB, B, b
Time = 20

; Kohou
[Command]
name = "Kohou_x"
command = ~F, D, DF, x
Time = 20
[Command]
name = "Kohou_y"
command = ~F, D, DF, y
Time = 20

; Kohoken
[Command]
name = "Koou_x"
command = ~D, DF, F, x
Time = 20
[Command]
name = "Koou_y"
command = ~D, DF, F, y
Time = 20

;---------------------------------------------------------------------------
;-| KOF 98 |----------------------------------------------------------------

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

;---------------------------------------------------------------------------
;-| Dir + Boton |-----------------------------------------------------------

; Agarres
[Command]
name = "fwd_y"
command = /F,y
time = 1
[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1
[Command]
name = "back_b"
command = /B,b
time = 1

; Parrys varios
[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "DF_y"
command = /DF,y
time = 1

;---------------------------------------------------------------------------
;-| ESENCIAL |--------------------------------------------------------------

[Command]
name = "recovery"
command = a+x
time = 1

;---------------------------------------------------------------------------
;-| Pulsar botones |--------------------------------------------------------

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

;---------------------------------------------------------------------------
;-| Movimientos dobles |----------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;Arreglado
[Command]
name = "jump"
command = ~$D, $U     ;con este no saltaba = /$D, $U
time = 10

;---------------------------------------------------------------------------
;-| Botones |---------------------------------------------------------------

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
name = "holdb"
command = /$b
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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

;---------------------------------------------------------------------------
;-| Direccion |-------------------------------------------------------------

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

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
; ADVANCE / EXTRA
;===========================================================================
; ADVANCE MODE
[State -1]
type = ChangeState
value = 790
triggerall = Var(50) = 0
trigger1 = command = "a" && command = "y"
trigger1 = power >= 1000 && statetype = S && ctrl = 1 && var(7) <= 0

;---------------------------------------------------------------------------
; EXTRA MODE
[State -1]
type = ChangeState
value = 910
triggerall = Var(50) = 0
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "holdx"
trigger1 = command = "holdb"

;===========================================================================
; Supers
;===========================================================================
; Tenma Haoh Shohouken
[State -1]
type = ChangeState
value = 3400 + ((var(7) > 0) * 50)
triggerall = Var(50) = 0
triggerall = command = "Tenma"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl

; Ryuuko Ranbu (W)
[State -1]
type = ChangeState
value = 3200 + ((var(7) > 0) * 50)
triggerall = Var(50) = 0
triggerall = power >= 1000 && command = "ryuuko_x"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Ryuuko Ranbuu (S)
[State -1]
type = ChangeState
value = 3201 + ((var(7) > 0) * 49)
triggerall = power >= 1000 && command = "ryuuko_y"
triggerall = Var(50) = 0
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Tenshi Haouoken
[State -1]
type = ChangeState
value = 3100 + ((var(7) > 0) * 50)
triggerall = Var(50) = 0
triggerall = power >= 1000 && command = "tenti"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Haoh Shohouken (W)
[State -1]
type = ChangeState
value = 3000 + ((var(7) > 0) * 50)
triggerall = Var(50) = 0
triggerall = power >= 1000 && command = "hauo_x"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Haoh Shohouken (S)
[State -1]
type = ChangeState
value = 3001 + ((var(7) > 0) * 49)
triggerall = Var(50) = 0
triggerall = power >= 1000 && command = "hauo_y"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

;===========================================================================
; Tecnicas
;===========================================================================
; Jumping Kohoken (W)
[State -1]
type = ChangeState
value = 1800
triggerall = Var(50) = 0
triggerall = command = "Koou_x"
triggerall = numprojID(1800) = 0
trigger1 = ctrl && statetype = A

; Jumping Kohoken (S)
[State -1]
type = ChangeState
value = 1810
triggerall = Var(50) = 0
triggerall = command = "Koou_y"
triggerall = numprojID(1800) = 0
trigger1 = ctrl && statetype = A

; Kyokugen-ryuu Renbu Ken
[State -1]
type = ChangeState
value = 1700
triggerall = Var(50) = 0
triggerall = command = "Renbu"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl

; Moh Koh Raijin Gou (W)
[State -1]
type = ChangeState
value = 1600
triggerall = Var(50) = 0
triggerall = command = "Raijin_x"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Moh Koh Raijin Gou (S)
[State -1]
type = ChangeState
value = 1650
triggerall = Var(50) = 0
triggerall = command = "Raijin_y"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Zan Retsu Ken (W)
[State -1]
type = ChangeState
value = 1500
triggerall = Var(50) = 0
triggerall = command = "zannretu_x"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Zan Retsu Ken (S)
[State -1]
type = ChangeState
value = 1550
triggerall = Var(50) = 0
triggerall = command = "zannretu_y"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Moh Koh Raijin Satsu (W)
[State -1]
type = ChangeState
value = 1400
triggerall = Var(50) = 0
triggerall = command = "raijin_a"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Moh Koh Raijin Satsu (S)
[State -1]
type = ChangeState
value = 1450
triggerall = Var(50) = 0
triggerall = command = "raijin_b"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Hien Shippu Kyaku (98 UM, W)
[State -1]
type = ChangeState
value = 1300
triggerall = Var(50) = 0
triggerall = command = "Hien2_a"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Hien Shippu Kyaku (98 UM, S)
[State -1]
type = ChangeState
value = 1350
triggerall = Var(50) = 0
triggerall = command = "Hien2_b"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Hien Shippu Kyaku (98, nrm, W)
[State -1]
type = ChangeState
value = 1200
triggerall = Var(50) = 0
triggerall = command = "Hien1_a"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Hien Shippu Kyaku (98, nrm, S)
[State -1]
type = ChangeState
value = 1250
triggerall = Var(50) = 0
triggerall = command = "Hien1_b"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Kohou (W)
[State -1]
type = ChangeState
value = 1100
triggerall = Var(50) = 0
triggerall = command = "Kohou_x"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Kohou (S)
[State -1]
type = ChangeState
value = 1150
triggerall = Var(50) = 0
triggerall = command = "Kohou_y"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Kohoken (W)
[State -1]
type = ChangeState
value = 1000
triggerall = Var(50) = 0
triggerall = command = "Koou_x"
triggerall = numprojID(1000) = 0
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

; Kohoken (S)
[State -1]
type = ChangeState
value = 1010
triggerall = Var(50) = 0
triggerall = command = "Koou_y"
triggerall = numprojID(1000) = 0
trigger1 = ctrl && statetype != A
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)
trigger6 = (stateno = 215 && MoveContact)
trigger7 = (stateno = 225 && MoveContact)
trigger8 = (stateno = 235 && MoveContact)
trigger9 = (stateno = 420 && MoveContact)
trigger10 = (stateno = 305 && MoveContact)
trigger11 = (stateno = 355 && MoveContact)

;===========================================================================
; Pasos dobles
;===========================================================================
; hacia adelante
[State -1]
type = ChangeState
value = 100
triggerall = Var(50) = 0
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

; Hacia atras
[State -1]
type = ChangeState
value = 105
triggerall = Var(50) = 0
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;===========================================================================
; Agarres
;===========================================================================
; SP Grab
[State -1]
type = ChangeState
value = 800
triggerall = Var(50) = 0
trigger1 = command = "fwd_y" || command = "back_y"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl

; SK Grab
[State -1]
type = ChangeState
value = 850
triggerall = Var(50) = 0
trigger1 = command = "fwd_b" || command = "back_b"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl

;===========================================================================
; CD Attacks
;===========================================================================
; standing
[State -1]
type = ChangeState
value = 240
triggerall = Var(50) = 0
triggerall = command = "by" && statetype != A
trigger1 = ctrl

; Jumping
[State -1]
type = ChangeState
value = 640
triggerall = Var(50) = 0
triggerall = command = "by" && statetype = A
trigger1 = ctrl

; Counter
[State -1]
type = ChangeState
value = 250
triggerall = Var(50) = 0
trigger1 = command = "by" && var(7) > 0 && stateno = [150,151]

;===========================================================================
; Evasiones, rollings y esas cosas
;===========================================================================
; Escape Roll B
[State -1]
type = ChangeState
value = 375
triggerall = Var(50) = 0
trigger1 = command = "recovery" && command = "holdback" && var(7) > 0 && stateno = [150,151]
; Escape Roll F
[State -1]
type = ChangeState
value = 365
triggerall = Var(50) = 0
trigger1 = command = "recovery" && var(7) > 0 && stateno = [150,151]

; Normal Rollings
[State -1, B]
type = ChangeState
value = 370
triggerall = Var(50) = 0
triggerall = command = "recovery" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, F]
type = ChangeState
value = 360
triggerall = Var(50) = 0
triggerall = command = "recovery" && command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

; Dodge
[State -1]
type = ChangeState
value = 350
triggerall = Var(50) = 0
triggerall = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl

; Dodge Ret
[State -1]
type = ChangeState
value = 355
triggerall = Var(50) = 0
trigger1 = stateno = 350
trigger1 = AnimElem = 2,> 0
trigger1 = command = "x" || command = "y" || command = "a" || command = "b"

;===========================================================================
; Dir + Button
;===========================================================================
; DF + SP
[State -1]
type = ChangeState
value = 310
triggerall = Var(50) = 0
triggerall = command = "DF_y"
trigger1 = ctrl && statetype != A

; F + WP (Normal)
[State -1]
type = ChangeState
value = 300
triggerall = Var(50) = 0
triggerall = command = "fwd_x"
trigger1 = ctrl && statetype != A

; F + WP (Juggle)
[State -1]
type = ChangeState
value = 305
triggerall = Var(50) = 0
triggerall = command = "fwd_x"
trigger1 = (stateno = 200 && MoveContact)
trigger2 = (stateno = 205 && MoveContact)
trigger3 = (stateno = 400 && MoveContact)
trigger4 = (stateno = 410 && MoveContact)
trigger5 = (stateno = 215 && MoveContact)
trigger6 = (stateno = 225 && MoveContact)
trigger7 = (stateno = 235 && MoveContact)
trigger8 = (stateno = 420 && MoveContact)

;===========================================================================
; Close Attacks
;===========================================================================
; WPC
[State -1]
type = ChangeState
value = 205
triggerall = Var(50) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X < 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno=[100,102]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

; WKC
[State -1]
type = ChangeState
value = 215
triggerall = Var(50) = 0
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 20

; SPC
[State -1]
type = ChangeState
value = 225
triggerall = Var(50) = 0
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 20

; SKC
[State -1]
type = ChangeState
value = 235
triggerall = Var(50) = 0
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 20

;===========================================================================
; Normal Attacks
;===========================================================================
; WP
[State -1]
type = ChangeState
value = 200
triggerall = Var(50) = 0
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1

; WK
[State -1]
type = ChangeState
value = 210
triggerall = Var(50) = 0
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1

; SP
[State -1]
type = ChangeState
value = 220
triggerall = Var(50) = 0
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1

; SK
[State -1]
type = ChangeState
value = 230
triggerall = Var(50) = 0
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
; Crouch Attacks
;===========================================================================
; WP
[State -1]
type = ChangeState
value = 400
triggerall = Var(50) = 0
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)

; WK
[State -1]
type = ChangeState
value = 410
triggerall = Var(50) = 0
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 205 && MoveContact)
trigger4 = (stateno = 400 && MoveContact)
trigger5 = (stateno = 410 && MoveContact)

; SP
[State -1]
type = ChangeState
value = 420
triggerall = Var(50) = 0
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl

; SK
[State -1]
type = ChangeState
value = 430
triggerall = Var(50) = 0
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl

;===========================================================================
; Jumping Attacks
;===========================================================================
; WP
[State -1]
type = ChangeState
value = 600
triggerall = Var(50) = 0
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

; WK
[State -1]
type = ChangeState
value = 610
triggerall = Var(50) = 0
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

; SP
[State -1]
type = ChangeState
value = 620
triggerall = Var(50) = 0
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

; SKD
[State -1]
type = ChangeState
value = 630
triggerall = Var(50) = 0
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===========================================================================
; Taunt
;===========================================================================
[State -1]
type = ChangeState
value = 195
triggerall = Var(50) = 0
triggerall = command = "start"
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;===========================================================================
;###########################################################################
;			     A . I .   S E C T I O N .
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
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
trigger35 = command = "AI35"
v = 50
value = 1
ignorehitpause = 1
persistent = 1

[State -1, OFF]
type = VarSet
trigger1 = roundstate>2
trigger2 = !alive
trigger3 = stateno = 5500
v = 50
value = 0
ignorehitpause = 1
persistent = 1

;--------------------------------------------------------------------
;Combos
[State AI, Close SP]
type = ChangeState
value = 225
triggerall = var(50) != 0
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,30]
triggerall = p2movetype = H
triggerall = statetype = S
trigger1 = ctrl

[State AI. Crouch WK]
type = ChangeState
value = 410
triggerall = var(50) != 0
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = p2statetype = S
triggerall = p2statetype != C
triggerall = p2statetype != A
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,30]
triggerall = statetype = S
trigger1 = ctrl

[State AI, Crouch WP]
type = ChangeState
value = 400
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 410

[State AI, F+WP]
type = ChangeState
value = 305
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 400

[State AI, vuelta emboke]
type = ChangeState
value = 1200
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = moveguarded
triggerall = random <= 999
trigger1 = stateno = 400

[State AI, Close SP]
type = ChangeState
value = 225
triggerall = var(50) != 0
triggerall = p2statetype = C
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,30]
triggerall = p2movetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI; F+WP]
type = ChangeState
value = 305
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 225

[State AI, Ryuuko Ranbu DM / Puñetazo SDM]
type = ChangeState
value = 3200 - ((var(7) > 0) * 50)
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = power >= 1000
triggerall = movehit
triggerall = P2Life > 300
triggerall = random <= 999
trigger1 = stateno = 305

[State AI, Ryuuko Ranbu DM / SDM]
type = ChangeState
value = 3200 - ((var(7) > 0) * 50)
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = power >= 1000
triggerall = P2Life < 300
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 305

[State AI, Hien Shippu Kyaku]
type = ChangeState
value = 1250
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 305

[State AI, Hien Shippu Kyaku]
type = ChangeState
value = 1200
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = moveguarded
triggerall = random <= 999
trigger1 = stateno = 305

[State AI, Kohou]
type = ChangeState
value = 1100
triggerall = var(50) != 0
triggerall = random <= 750
triggerall = p2statetype != A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,80]
triggerall = p2movetype = A
triggerall = statetype = S
trigger1 = ctrl

[State AI, Kohou]
type = ChangeState
value = 1150
triggerall = var(50) != 0
triggerall = random <= 750
triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,50]
triggerall = statetype = S
trigger1 = ctrl

[State AI, Hadoken]
type = ChangeState
value = 1000
triggerall = var(50) != 0
triggerall = random <= 300
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2bodydist x = [50,80]
trigger1 = ctrl

[State AI, Hadoken]
type = ChangeState
value = 1010
triggerall = var(50) != 0
triggerall = random <= 300
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2bodydist x = [50,80]
trigger1 = ctrl

[State AI, S EX vuelta emboke]
type = ChangeState
value = 1350
triggerall = var(50) != 0
triggerall = random <= 75
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [70,150]
triggerall = statetype = S
trigger1 = ctrl

[State AI, ADVANCE activation]
type = ChangeState
value = 790
triggerall = var(50) != 0
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
triggerall = var(50) != 0
triggerall = p2stateno != [5050,5121]
triggerall = p2statetype != A
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [40,70]
triggerall = p2movetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI, Hadoken]
type = ChangeState
value = 1000
triggerall = var(50) != 0
triggerall = numprojID(1000) = 0
triggerall = random <= 350
triggerall = p2stateno = 5120
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [50,80]
trigger1 = ctrl

[State -1, SP Tenma Haoh]
type = ChangeState
value = 3400 + ((var(7) > 0) * 50)
triggerall = power >= 1000
triggerall = var(50) != 0
triggerall = roundstate = 2
triggerall = random <= 70
triggerall = p2bodydist x = [130,200]
triggerall = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------------------
;Guardia & Extra Moves
[State AI, Guard]
type = ChangeState
value = 131
triggerall = var(50) != 0
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
triggerall = var(50) != 0
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
value = 800
triggerall = var(50) != 0
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

;[State AI]
;type = ChangeState
;triggerall = random <= 350
;trigger1 = var(50) != 0 && (stateno = 50 || (stateno = [120,140]) && pos Y < 0)
;trigger1 = vel Y > 0 && ifelse(p2statetype=C, p2dist Y<40, p2dist Y<60) || p2dist X < 50 && p2statetype = A || p2movetype = A && p2statetype != C
;value = 330

;[State AI]
;type = ChangeState
;trigger1 = var(50) != 0 && (stateno = 50 || (stateno = [120,140]) && pos Y < 0)
;trigger1 = vel Y > 0 && ifelse(p2statetype=C, p2dist Y<40, p2dist Y<60) || p2dist X < 50 && p2statetype = A || p2movetype = A && p2statetype != C
;value = ifelse(p2statetype=A||random<100, 645, ifelse(vel X = 0, 610+((random<500)*30), 610+((random<500)*35)))

[State AI, Run]
type = ChangeState
value = 102
triggerall = var(50) != 0
triggerall = p2movetype != A
triggerall = p2bodydist x = [80,300]
triggerall = random <= 50
trigger1 = statetype != A
trigger1 = ctrl

[State AI, Rolling B]
type = ChangeState
value = 320
triggerall = var(50) != 0
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
triggerall = var(50) != 0
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

;-------------------------------------------------------------------------------
;Run de AI
[Statedef 102]
type = S
movetype = I
physics = S
anim = 100
velset = 0
ctrl = 0

[State 100, 1]
type = VelSet
trigger1 = AnimElem = 3, >= 0
x = const(velocity.run.fwd.x)

[State 100, 5.1]
type = ChangeState
triggerall = var(50) = 0
trigger1 = AnimElem = 4, >= 0
trigger1 = command != "holdfwd"
value = 0
ctrl = 1

[State 100, 5.2]
type = ChangeState
triggerall = var(50) != 0
trigger1 = AnimElem = 4, >= 0
trigger1 = P2bodydist X <= 80
value = 0
ctrl = 1

;--------------------------------------------------------------------
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(50) != 0
triggerall = RoundState = 2
triggerall = p2statetype != A
triggerall = statetype = S
triggerall = p2bodydist X = [-5,100]
triggerall = p2stateno = [5050,5121]
triggerall = BackEdgeBodyDist >= 40
trigger1 = ctrl

;===========================================================================
;                                                              END OF FILE.
;===========================================================================