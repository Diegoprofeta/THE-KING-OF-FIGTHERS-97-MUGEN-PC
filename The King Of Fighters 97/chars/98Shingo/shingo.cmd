;===========================================================================
; CMD file for Shingo Yabuki
;===========================================================================
;---------------------------------------------------------------------------
;-| SUPERS |----------------------------------------------------------------
[Command]
name = "98_1"
command = ~D, B, $D, F,x
time = 25
[Command]
name = "98_1"
command = ~D, B, $D, F,y
time = 25

[Command]
name = "98_2-1"
command = ~D, F, D, F, x
time = 25
[Command]
name = "98_2-2"
command = ~D, F, D, F, y
time = 25


;---------------------------------------------------------------------------
;-| Tecnicas |--------------------------------------------------------------
; Kusanagi Fist
[Command]
name = "aragami"
command = ~D, DF, F, x
[Command]
name = "dokugami"
command = ~D, DF, F, y

; Shoryuken
[Command]
name = "oniyaki_x"
command = ~F, D, DF, x
[Command]
name = "oniyaki_y"
command = ~F, D, DF, y

; Kusanagi Counter
[Command]
name = "gettyu_x"
command = ~D, DB, B, x
[Command]
name = "gettyu_y"
command = ~D, DB, B, y

; Shingo Kick
[Command]
name = "shingokick_a"
command = ~B, $D, F,a
time = 20
[Command]
name = "shingokick_b"
command = ~B, $D, F,b
time = 20

; Kusnagi R.E.D. kick
[Command]
name = "oboro97_a"
command = ~D, DB, B, a
[Command]
name = "oboro97_b"
command = ~D, DB, B, b



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
; Axe Kick
[Command]
name = "fwd_a"
command = /F,a
time = 1

; Agarres
[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_y"
command = /F,y
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "back_b"
command = /F,b
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
;---------------------------------------------------------------------------
;===========================================================================

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;===========================================================================
; ADV / EXT
;===========================================================================
;ADVANCE MODE
[State -1]
type = ChangeState
value = 700
trigger1 = command = "a" && command = "y"
trigger1 = power >= 1000 && statetype = S && ctrl = 1 && var(7) <= 0



;===========================================================================
; Supers
;===========================================================================
; QCB, HCF, Golpe
[State -1]
type = ChangeState
value = 3000 + ((var(7) > 0) * 10)
triggerall = power >= 1000 && command = "98_1"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

;---------------------------------------------------------------------------
; QCF x2, Golpe
[State -1]
type = ChangeState
value = 3020 + ((var(7) > 0) * 10)
triggerall = power >= 1000 && command = "98_2-1"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

; QCF x2, Golpe
[State -1]
type = ChangeState
value = 3025 + ((var(7) > 0) * 5)
triggerall = power >= 1000 && command = "98_2-2"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

;---------------------------------------------------------------------------


;===========================================================================
; Tecnicas
;===========================================================================


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; RDP + WK
[State -1]
type = ChangeState
value = 1040
triggerall = command = "oboro97_a"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

; RDP + SK
[State -1, SK RED KICK]
type = ChangeState
value = 1070
triggerall = command = "oboro97_b"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

;---------------------------------------------------------------------------
; HCF + WK
[State -1]
type = ChangeState
value = 1030
triggerall = command = "shingokick_a"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

; HCF + SK
[State -1]
type = ChangeState
value = 1035
triggerall = command = "shingokick_b"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

;---------------------------------------------------------------------------
; QCB + WP
[State -1]
type = ChangeState
value = 1020
triggerall = command = "gettyu_x"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

; QCB + SP
[State -1]
type = ChangeState
value = 1025
triggerall = command = "gettyu_y"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

;---------------------------------------------------------------------------
; DP + WP
[State -1]
type = ChangeState
value = 1010
triggerall = command = "oniyaki_x"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

; DP + SP
[State -1]
type = ChangeState
value = 1015
triggerall = command = "oniyaki_y"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

;---------------------------------------------------------------------------
; QCF + WP
[State -1]
type = ChangeState
value = 1000
triggerall = command = "aragami"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

; QCF + SP
[State -1]
type = ChangeState
value = 1005
triggerall = command = "dokugami"
trigger1 = ctrl && statetype != A
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact
Trigger5 = Stateno = 235 && MoveContact
Trigger6 = Stateno = 320 && MoveContact
Trigger7 = Stateno = 330 && MoveContact
Trigger8 = Stateno = 400 && MoveContact
Trigger9 = Stateno = 420 && MoveContact

;===========================================================================
; Pasos dobles
;===========================================================================
; Hacia adelante
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

; Hacia atras
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;===========================================================================
; Agarres
;===========================================================================
; SP Grab
[State -1]
type = ChangeState
value = 900
trigger1 = command = "fwd_y" || command = "back_y"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl

; SK Grab
[State -1]
type = ChangeState
value = 910
trigger1 = command = "fwd_b" || command = "back_b"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl

;===========================================================================
; CD Attacks
;===========================================================================
;CD simple (stand)
[State -1]
type = ChangeState
value = 300
triggerall = command = "by" && statetype != A
trigger1 = ctrl

;CD simple (Jump)
[State -1]
type = ChangeState
value = 310
triggerall = command = "by" && statetype = A
trigger1 = ctrl

; CD Counter
[State -1]
type = ChangeState
value = 820
trigger1 = command = "by" && var(7) > 0 && stateno = [150,151]

;===========================================================================
; Evasiones, rollings y esas cosas
;===========================================================================
; TIME BAR Escape Roll backward
[State -1, DM Roll B]
type = ChangeState
value = 835
trigger1 = command = "recovery" && command = "holdback" && var(7) > 0 && stateno = [150,151]

; TIME BAR Escape Roll Forward
[State -1, DM Roll F]
type = ChangeState
value = 830
trigger1 = command = "recovery" && var(7) > 0 && stateno = [150,151]

[State -1, Roll B]
type = ChangeState
value = 815
triggerall = command = "recovery" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Roll F]
type = ChangeState
value = 810
triggerall = command = "recovery" && command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

; Dodge
[State -1]
type = ChangeState
value = 800
triggerall = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl

; Dodge Ret
[State -1]
type = ChangeState
value = 330
trigger1 = stateno = 800
trigger1 = AnimElem = 2,> 0
trigger1 = command = "x" || command = "y" || command = "a" || command = "b"

;===========================================================================
; Dir + Button
;===========================================================================
; Axe Kick
[State -1]
type = ChangeState
value = 320
triggerall = command = "fwd_a"
trigger1 = statetype = S && ctrl
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact
Trigger4 = Stateno = 225 && MoveContact

;===========================================================================
; Close Attacks
;===========================================================================
[State -1]
type = ChangeState
value = 205
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = P2BodyDist X < 10
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact

[State -1]
type = ChangeState
value = 215
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = P2BodyDist X < 10

[State -1]
type = ChangeState
value = 225
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = P2BodyDist X < 10
Trigger2 = Stateno = 205 && MoveContact
Trigger3 = Stateno = 215 && MoveContact

[State -1]
type = ChangeState
value = 235
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = P2BodyDist X < 10

;===========================================================================
; Standimg Attacks
;===========================================================================
[State -1]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = P2BodyDist X > 10

[State -1]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = P2BodyDist X > 10

[State -1]
type = ChangeState
value = 220
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = P2BodyDist X > 10

[State -1]
type = ChangeState
value = 230
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = P2BodyDist X > 10

;===========================================================================
; Crouching Attacks
;===========================================================================
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1]
type = ChangeState
value = 420
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1]
type = ChangeState
value = 430
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl

;===========================================================================
; Jumping
;===========================================================================
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = 625
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger1 = vel x = 0

[State -1]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger1 = vel x != 0

[State -1]
type = ChangeState
value = 635
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger1 = vel x = 0

[State -1]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger1 = vel x != 0

;===========================================================================
; Burla
;===========================================================================
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl
