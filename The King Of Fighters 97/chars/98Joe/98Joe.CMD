;-| ³¬±ØÉ± |-----------------------------------------------------------
[Command]
name = "dfdb_1"
command = ~D,F,$D,B,x
time = 30

[Command]
name = "dfdb_1"
command = ~D,F,$D,B,y
time = 30

;[Command]
;name = "dfdf_3"
;command = ~D,F, D, F, a
;time = 30

;[Command]
;name = "dfdf_3"
;command = ~D,F, D, F, b
;time = 30

[Command]
name = "dfdf_1"
command = ~D,F, D, F, x
time = 30

[Command]
name = "dfdf_1"
command = ~D,F, D, F, y
time = 30

;-| ±ØÉ±¼¼ |-----------------------------------------------------------
[Command]
name = "lianda"
command = x, x, x
time = 30

[Command]
name = "lianda"
command = y, y, y
time = 30

[Command]
name = "lianda2"
command = a, a, a
time = 30

[Command]
name = "lianda2"
command = b, b, b
time = 30


[Command]
name = "df_3"
command = ~B, $D, F, a

[Command]
name = "df_4"
command = ~B, $D, F, b

[Command]
name = "fdb_3"
command = ~D, B, a

[Command]
name = "fdb_4"
command = ~D, B, b

[Command]
name = "fdf_3"
command = ~F, D, DF, a

[Command]
name = "fdf_4"
command = ~F, D, DF, b

[Command]
name = "bdf_1"
command = ~B, $D, F, x

[Command]
name = "bdf_2"
command = ~B, $D, F, y

[Command]
name = "df_1"
command = ~D, F, x

[Command]
name = "df_2"
command = ~D, F, y

[Command]
name = "df_3"
command = ~D, F, a

[Command]
name = "df_4"
command = ~D, F, b


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "dodge"
command = x+a
time = 1

[Command]
name = "c"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "fd_y"
command = /DF,y
time = 1

[Command]
name = "fd_a"
command = /DF,a
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1



;-| Single Button |---------------------------------------------------------
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
command = /$z
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
command = /$c
time = 1

[Command]
name = "hold_s"
command = /$s
time = 1

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
command = y+b
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
command = x+a
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "jump"
command = D, $U
time = 18

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; ADV / Extra
;-------------
; ADVANCE
[State -1]
type = ChangeState
value = 790
trigger1 = command = "a" && command = "y"
trigger1 = power >= 1000 && statetype = S && ctrl = 1 && var(7) <= 0

;---------------------------------------------------------------


;---------------------------------------------------------------------------
; DMs / SDMs
;------------
; patadon
;[State -1]
;type = ChangeState
;value = 3500 + ((var(7) > 0) * 50)
;triggerall = command = "dfdf_3"
;triggerall = statetype != A
,triggerall = power > 1000
;trigger1 = ctrl = 1
;trigger2 = stateno = 205 && Movecontact
;trigger3 = stateno = 225 && Movecontact
;trigger4 = stateno = 235 && Movecontact
;trigger5 = stateno = 400 && Movecontact
;trigger6 = stateno = 410 && Movecontact
;trigger7 = stateno = 351 && Movecontact
;trigger8 = stateno = 250 && Movecontact
;trigger9 = stateno = 440 && Movecontact
;trigger10 = stateno = 450 && Movecontact

; Ranbu
[State -1]
type = ChangeState
value = 3200 + ((var(7) > 0) * 100)
triggerall = command = "dfdb_1"
triggerall = statetype != A
triggerall = power > 1000
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact

; tornado
[State -1]
type = ChangeState
value = 3000 + ((var(7) > 0) * 100)
triggerall = command = "dfdf_1"
triggerall = numproj = 0
triggerall = statetype != A
triggerall = power > 1000
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact

;---------------------------------------------------------------------------
; Tecnicas
;----------
[State -1]
type = ChangeState
value = 1520
triggerall = command = "df_4"
triggerall = StateNo = 1500
trigger1 = time > 28

[State -1]
type = ChangeState
value = 1510
triggerall = command = "df_3"
triggerall = StateNo = 1500
trigger1 = time > 28

; puños tipo 2
[State -1]
type = ChangeState
value = 1500
triggerall = command = "lianda2"
triggerall = statetype = S
triggerall = PrevStateNo != 1400 && PrevStateNo != 1500
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact

[State -1]
type = ChangeState
value = 1410
triggerall = command = "df_1"
triggerall = StateNo = 1400
trigger1 = time > 40

[State -1]
type = ChangeState
value = 1420
triggerall = command = "df_2"
triggerall = StateNo = 1400
trigger1 = time > 40

;puños tipo 1
[State -1]
type = ChangeState
value = 1400
triggerall = command = "lianda"
triggerall = statetype = S
triggerall = PrevStateNo != 1400 && PrevStateNo != 1500
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact

; Tiger Kick
[State -1]
type = ChangeState
value = 1150
triggerall = command = "fdf_4"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact
[State -1]
type = ChangeState
value = 1100
triggerall = command = "fdf_3"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact

; Roundhouse kick
[State -1]
type = ChangeState
value = 1300
triggerall = command = "df_3"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact
[State -1]
type = ChangeState
value = 1350
triggerall = command = "df_4"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact

; medialuna estilo Adon
[State -1]
type = ChangeState
value = 1250
triggerall = command = "fdb_4"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact
[State -1]
type = ChangeState
value = 1200
triggerall = command = "fdb_3"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact

; Tornados
[State -1]
type = ChangeState
value = 1005
triggerall = command = "bdf_2"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact
[State -1]
type = ChangeState
value = 1000
triggerall = command = "bdf_1"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205 && Movecontact
trigger3 = stateno = 225 && Movecontact
trigger4 = stateno = 235 && Movecontact
trigger5 = stateno = 400 && Movecontact
trigger6 = stateno = 410 && Movecontact
trigger7 = stateno = 351 && Movecontact
trigger8 = stateno = 250 && Movecontact
trigger9 = stateno = 440 && Movecontact
trigger10 = stateno = 450 && Movecontact

;---------------------------------------------------------------------------
; Pasos dobles
;--------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Grapple Attacks
;-----------------
; SK Grapple
[State -1]
type = ChangeState
value = 750
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"

;SP Grapple
[State -1]
type = ChangeState
value = 700
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "fwd_y"

;---------------------------------------------------------------------------
; Rollings y similares
;----------------------
; DM Escape Roll backward
[State -1, escape]
type = ChangeState
value = 375
triggerall = command = "holdback"
trigger1 = command = "dodge"
trigger1 = var(7) > 0 && stateno = [150,153]

; DM Escape Roll Forward
[State -1]
type = ChangeState
value = 365
triggerall = command = "dodge"
trigger1 = var(7) > 0 && stateno = [150,153]

; Roll forward
[State -1]
type = ChangeState
value = 360
trigger1 = command = "dodge"
trigger1 = command = "holdfwd" && statetype = S && ctrl

; Roll backwards
[State -1]
type = ChangeState
value = 370
trigger1 = command = "dodge"
trigger1 = command = "holdback" && statetype = S && ctrl

; Dodge
[State -1]
type = ChangeState
value = 350
trigger1 = command = "dodge"
trigger1 = statetype = S && ctrl


;---------------------------------------------------------------------------
; CD Attacks
;------------
[State -1, Standing]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Counter]
type = ChangeState
value = 241
triggerall = command = "c"
trigger1 = var(7) > 0 && stateno = [150,153]

[State -1, Jumping]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dir + Button
;--------------
[State -1]
Type = ChangeState
Value = 440
Triggerall = Command = "fd_y"
Triggerall = Statetype != A
Trigger1 = Ctrl = 1

[State -1]
Type = ChangeState
Value = 450
Triggerall = Command = "fd_a"
Triggerall = Statetype != A
Trigger1 = Ctrl = 1

[State -1]
Type = ChangeState
Value = 250
Triggerall = Command = "fwd_a"
triggerall = Command != "holddown"
Triggerall = Statetype = S
Trigger1 = Ctrl = 1
trigger2 = stateno = 205 && MoveContact
trigger3 = stateno = 225 && MoveContact
trigger4 = stateno = 235 && MoveContact

;---------------------------------------------------------------------------
; Close Attacks
;---------------
[State -1, WP]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 18
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 205 && MoveContact

[State -1, SP]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 205 && MoveContact

[State -1, SK]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = p2bodydist x <= 20
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && MoveContact

;---------------------------------------------------------------------------
; Standing Attacks
;------------------
[State -1, WP]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, WK]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SP]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SK]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Attacks
;-------------------
[State -1, WP]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact

[State -1, WK]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 410 && MoveContact

[State -1, SP]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 410 && MoveContact

[State -1, SK]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 410 && MoveContact

;---------------------------------------------------------------------------
; Jumping Attacks
;-----------------
[State -1, WP]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

[State -1, WK]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, SPN]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = vel x = 0

[State -1, SPD]
type = ChangeState
value = 625
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, SKN]
type = ChangeState
value = 635
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = vel X = 0

[State -1, SKD]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Burla
;-------
[State -1]
type = ChangeState
value = 195
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "s"