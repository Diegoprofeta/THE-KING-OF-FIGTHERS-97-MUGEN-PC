; Command file for David Demianoff 's Card captor Iron King
; Please don't edit, thanks
;
;-| Super Motions |--------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,F,B,B
time = 1

[Command]
name = "AI_2"
command = U,D,F,F,B,F
time = 1

[Command]
name = "AI_3"
command = U,D,F,F,B,D
time = 1

[Command]
name = "AI_4"
command = U,D,F,F,B,U
time = 1

[Command]
name = "AI_5"
command = U,D,F,F,U,B
time = 1

[Command]
name = "AI_6"
command = U,D,F,F,D,B
time = 1

[Command]
name = "AI_7"
command = U,D,F,F,F,B
time = 1

[Command]
name = "AI_8"
command = D,D,F,F,D,B
time = 1

[Command]
name = "AI_9"
command = D,D,F,F,F,B
time = 1

[Command]
name = "AI_10"
command = F, D, B, U
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "illusiondance1"
command = ~D, F, D, F, a
time = 35

[Command]
name = "illusiondance2"
command = ~D, F, D, F, b
time = 35

[Command]
name = "illusiondance3"
command = ~D, F, D, F, a+b
time = 35

[Command]
name = "silentflash"
command = ~D, DB, B, D, DB, B, a
time = 35

[Command]
name = "silentflash"
command = ~D, DB, B, D, DB, B, b
time = 35

[Command]
name = "surpriserose"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "hsdm"
command = ~D, DB, B, F, a+y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "venom1"
command = ~D, DF, F, a
time = 20

[Command]
name = "venom2"
command = ~D, DF, F, b
time = 20

[Command]
name = "miragedance"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "miragedance"
command = ~B, DB, D, DF, F, y
time = 20

[Command]
name = "tornado1"
command = ~D, DB, B, a
time = 20

[Command]
name = "tornado2"
command = ~D, DB, B, b
time = 20

[Command]
name = "miragekick1"
command = ~D, DB, B, x
time = 20

[Command]
name = "miragekick2"
command = ~D, DB, B, y
time = 20

[Command]
name = "trapshot"
command = ~F, D, DF, a
time = 15

[Command]
name = "trapshot"
command = ~F, D, DF, b
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 15

[Command]
name = "BB"
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "rock"
command = a+y
time = 1

[Command]
name = "cd"
command = b+y
time = 1

[Command]
name = "ab"
command = a+x
time = 1

[Command]
name = "abc"
command = a+y+x
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Statedef -1]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;--------------------------------------------------------------------------- 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;HSDM
[State -1,]
type = ChangeState
value = 3400
triggerall = command = "hsdm"
triggerall = power >= 3000
triggerall = var(9) = 0
triggerall = stateno = 236
trigger1 = time = [5,7]
trigger2 = time = [12,18]

;SUrPRISE ROSE HSDM
[State -1,]
type = ChangeState
value = 3300
triggerall = command = "surpriserose"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;ILLUSION DANCE SDM
[State -1,]
type = ChangeState
value = 3100
triggerall = command = "illusiondance3"
triggerall = power >= 2000
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;SILENT FLASH
[State -1,]
type = ChangeState
value = 3200
triggerall = command = "silentflash"
triggerall = power >= 1000
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;SILENT FLASH super cancel
[State -1,]
type = ChangeState
value = 3210
triggerall = command = "silentflash"
triggerall = power >= 2000
triggerall = var(9) = 0
trigger1 = stateno = 1401 && movecontact
trigger2 = stateno = 1406 && movecontact

;ILLUSION DANCE B
[State -1,]
type = ChangeState
value = 3010
triggerall = command = "illusiondance2"
triggerall = power >= 1000
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;ILLUSION DANCE A
[State -1,]
type = ChangeState
value = 3000
triggerall = command = "illusiondance1"
triggerall = power >= 1000
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;Trap Shot
[State -1,]
type = ChangeState
value = 1500
triggerall = command = "trapshot"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;Mirage Kick A
[State -1,]
type = ChangeState
value = 1400
triggerall = command = "miragekick1"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;Mirage Kick B
[State -1,]
type = ChangeState
value = 1405
triggerall = command = "miragekick2"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;Tornado Kick A
[State -1,]
type = ChangeState
value = 1300
triggerall = command = "tornado1"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;Tornado Kick B
[State -1,]
type = ChangeState
value = 1600
triggerall = command = "tornado2"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;Mirage Dance
[State -1,]
type = ChangeState
value = 1200
triggerall = command = "miragedance"
triggerall = var(9) = 0
triggerall = p2statetype != A
;triggerall = p2movetype != H
triggerall = p2stateno != 5120
trigger1 = p2bodydist x <= 35
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger2 = p2bodydist x <= 35
trigger3 = p2bodydist x <= 35
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger4 = p2bodydist x <= 45
trigger5 = stateno = 215 && time = [4,9]
trigger5 = p2bodydist x <= 45
trigger6 = stateno = 225 && time = [8,18]
trigger6 = p2bodydist x <= 45
trigger7 = stateno = 235 && time = [5,18]
trigger7 = p2bodydist x <= 45
trigger8 = stateno = 400 && time = [4,8]
trigger8 = p2bodydist x <= 45
trigger9 = stateno = 420 && time = [6,17]
trigger9 = p2bodydist x <= 45
trigger10 = stateno = 300 && time = [13,17]

;Venom Strike A
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "venom1"
triggerall = numprojid(1000) = 0
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;Venom Strike B
[State -1,]
type = ChangeState
value = 1001
triggerall = command = "venom2"
triggerall = numprojid(1000) = 0
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,11]
trigger5 = stateno = 215 && time = [4,9]
trigger6 = stateno = 225 && time = [8,18]
trigger7 = stateno = 235 && time = [5,18]
trigger8 = stateno = 400 && time = [4,8]
trigger9 = stateno = 420 && time = [6,17]
trigger10 = stateno = 300 && time = [13,17]

;---------------------------------------------------------------------------
;Run Fwd 1
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(22) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Throw 1
[State -1]
type = ChangeState
value = 800
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

;Throw 2
[State -1]
type = ChangeState
value = 801
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

;Counter
[State -1]
type = ChangeState
value = 305
triggerall = var(22) = 0
triggerall = command = "cd" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000

; Power charge
[State -1]
type = ChangeState
value = 310
triggerall = statetype = S
triggerall = Power < 3000
triggerall = var(9) = 0
triggerall = ctrl = 1
trigger1 = command = "hold_a"
trigger1 = command = "hold_y"
trigger1 = command = "hold_x"

; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;-----------------------------------------DODGE
;---------------------------------------------------------------------
; Dodge backward (Kof98)
[State -1]
type = ChangeState
value = 360
triggerall = command = "ab" ^^ command = "c"
triggerall = command = "holdback"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

; Dodge forward 98(after dodge forward 99)
[State -1]
type = ChangeState
value = 361
triggerall = command = "ab" ^^ command = "c"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Standing CD
[State -1]
type = ChangeState
value = 300
triggerall = command = "cd" ^^ command = "z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;Aerial CD
[State -1]
type = ChangeState
value = 650
triggerall = command = "cd" ^^ command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Standing Weak punch
[State -1,]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = [7,11]
trigger5 = stateno = 205 && time = [7,9]
trigger6 = stateno = 215 && time = [5,9]
trigger7 = stateno = 400 && time = [5,8]
trigger8 = stateno = 410 && time = [5,9]

;Standing Close weak punch
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(9) = 0
triggerall = p2bodydist x < 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [7,9]
trigger5 = stateno = 215 && time = [5,9]
trigger6 = stateno = 400 && time = [5,8]
trigger7 = stateno = 410 && time = [5,9]

;---------------------------------------------------------------------------
;Standing Weak Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = [7,11]
trigger5 = stateno = 205 && time = [7,9]
trigger6 = stateno = 215 && time = [5,9]
trigger7 = stateno = 400 && time = [5,8]
trigger8 = stateno = 410 && time = [5,9]

;Standing Close Weak Kick
[State -1]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [7,9]
trigger5 = stateno = 215 && time = [5,9]
trigger6 = stateno = 400 && time = [5,8]
trigger7 = stateno = 410 && time = [5,9]

;Standing Forward + Weak Kick
[State -1,]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Forward + Weak Kick
[State -1,]
type = ChangeState
value = 245
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(9) = 0
trigger1 = stateno = 205 && time = [6,11]
trigger2 = stateno = 215 && time = [4,9]
trigger3 = stateno = 225 && time = [8,18]
trigger4 = stateno = 235 && time = [5,18]
trigger5 = stateno = 400 && time = [4,8]
trigger6 = stateno = 420 && time = [6,17]

;---------------------------------------------------------------------------
;Standing Hard punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Close Hard punch
[State -1]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;forward Strong Kick after Crouch Strong punch
[State -1,]
type = ChangeState
value = 236
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(9) = 0
trigger1 = stateno = 420 && time = [6,17]

;Standing Hard Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = var(9) = 0
triggerall = command != "holddown"
triggerall = p2bodydist x > 24
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Close Hard Kick
[State -1]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Crouching Weak punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && time = [7,11]
trigger4 = stateno = 205 && time = [7,9]
trigger5 = stateno = 215 && time = [5,9]
trigger6 = stateno = 400 && time = [5,8]
trigger7 = stateno = 410 && time = [5,9]

;---------------------------------------------------------------------------
;Crouching weak Kick
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && time = [7,11]
trigger4 = stateno = 205 && time = [7,9]
trigger5 = stateno = 215 && time = [5,9]
trigger6 = stateno = 400 && time = [5,8]
trigger7 = stateno = 410 && time = [5,9]

;---------------------------------------------------------------------------
;Crouching hard punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching hard kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;Crouching Forward hard kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 205 && time = [6,11]
trigger4 = stateno = 215 && time = [4,9]
trigger5 = stateno = 225 && time = [8,18]
trigger6 = stateno = 235 && time = [5,18]
trigger7 = stateno = 400 && time = [4,8]
trigger8 = stateno = 420 && time = [6,17]
;---------------------------------------------------------------------------
;Jumping Weak punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping Kick
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping strong punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping strong Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl