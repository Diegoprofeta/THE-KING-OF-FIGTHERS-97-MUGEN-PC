;-------------------------------------------------------------------------------

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
[Command]
name = "AI_11"
command = F, U, B, D
time = 1
[Command]
name = "AI_12"
command = F, F, F, F, F, B, U, U
time = 1
[Command]
name = "AI_13"
command = U, U, D, D, F, F, U
time = 1
[Command]
name = "AI_14"
command = U, D, U, D, U, D
time = 1
[Command]
name = "AI_15"
command = F, F, B, B, U, D, U
time = 1
[Command]
name = "AI_16"
command = B, D, D, U, F, D, D
time = 1
[Command]
name = "AI_17"
command = D, D, U, U, U, U, U, U
time = 1
[Command]
name = "AI_18"
command = D, D, D, D, D, D, D, U, U
time = 1
[Command]
name = "AI_19"
command = D, U, D, D, F, D, D, U, U
time = 1
[Command]
name = "AI_20"
command = D, D, D, D, B, D, D, U, U
time = 1
[Command]
name = "AI_21"
command = F, D, D, D, B, D, D, U, U
time = 1
[Command]
name = "AI_22"
command = B, D, D, D, B, D, D, U, U
time = 1
[Command]
name = "AI_23"
command = U, D, D, D, B, D, D, U, U
time = 1
[Command]
name = "AI_24"
command = U, D, U, D, U,D, U, D, U, D
time = 1
[Command]
name = "AI_25"
command = F, F, B, B, U, D,D, U, D, U, U
time = 1
[Command]
name = "AI_26"
command = B, D, D, U, F, D,D, U, D, U, D
time = 1
[Command]
name = "AI_27"
command = D, D, U, U, U, U, U,D, U, B, U
time = 1
[Command]
name = "AI_28"
command = D, D, D, D, D, D, D, U,D, U, U
time = 1
[Command]
name = "AI_29"
command = D, D, D, D, D, D, D, U,D, U, U, D
time = 1

;-SUPERS------------------------------------------------------------------------

[Command]
name = "Super Patadas"
command = ~D, F, D, F, a
time = 25

[Command]
name = "Super Patadas"
command = ~D, F, D, F, b
time = 25

[Command]
name = "Super Patadas"
command = ~D, F, D, F, c
time = 25

[Command]
name = "Super Comun"
command = ~D, F, $D, B, x
time = 25

[Command]
name = "Super Comun"
command = ~D, F, $D, B, y
time = 25

[Command]
name = "Super Comun"
command = ~D, F, $D, B, c
time = 25

[Command]
name = "Super Sokoken"
command = ~B, $D, F, B, $D, F,x
time = 30

[Command]
name = "Super Sokoken"
command = ~B, $D, F, B, $D, F,y
time = 30

[Command]
name = "Super Sokoken"
command = ~B, $D, F, B, $D, F,c
time = 30

;-ESPECIALES--------------------------------------------------------------------

[Command]
name = "Especial Comun Corta"
command = ~D, F, B, x
time = 25

[Command]
name = "Especial Comun Larga"
command = ~D, F, B, y
time = 25

[Command]
name = "Sokoken Lento"
command = ~F, B, D, F, x
time = 20

[Command]
name = "Sokoken Rapido"
command = ~F, B, D, F, y
time = 20

[Command]
name = "Especial Patadas"
command = ~D, F, D, F, a
time = 25

[Command]
name = "Especial Patadas"
command = ~D, F, D, F, b
time = 25

;-PODERES-----------------------------------------------------------------------

[Command]
Name = "Baile de Patadas"
command = ~B, $D, F, a
time = 15

[Command]
Name = "Baile de Patadas"
command = ~B, $D, F, b
time = 15

[Command]
Name = "Hien Shippu Kyaku1 weak"
command = ~F, $D, B, a
time = 15

[Command]
Name = "Hien Shippu Kyaku1 strong"
command = ~F, $D, B, b
time = 15

[Command]
name = "Oriuken de Patada 1"
command = ~F, D, F, a
time = 15

[Command]
name = "Oriuken de Patada 2"
command = ~F, D, F, b
time = 15

[Command]
name = "Ryuuga weak"
command = ~F, D, F, x
time = 15

[Command]
name = "Ryuuga strong"
command = ~F, D, F, y
time = 15

[Command]
Name = "Wisko Lento"
command = ~D, F, x
time = 15

[Command]
Name = "Wisko Rapido"
command = ~D, F, y
time = 15

[Command]
Name = "Hien Ryuujin Kyaku weak"
command = ~D, B, a
time = 15

[Command]
Name = "Hien Ryuujin Kyaku strong"
command = ~D, B, b
time = 15

;-MOVIMIENTOS-------------------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-------------------------------------------------------------------------------

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = z
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
command = a+y
time = 1

;-------------------------------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-------------------------------------------------------------------------------

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

;-------------------------------------------------------------------------------

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
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Command]
name = "!longjump"
command = ~10$D, $U
time = 20

[Command]
name = "charge 1"
command = /x

[Command]
name = "charge 2"
command = /b

[Command]
name = "MAX-1"
command = /a

[Command]
name = "MAX-2"
command = /y

;-------------------------------------------------------------------------------

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
[Command]
name = "AI_11"
command = F, U, B, D
time = 1
[Command]
name = "AI_12"
command = F, F, F, F, F, B, U, U
time = 1
[Command]
name = "AI_13"
command = U, U, D, D, F, F, U
time = 1
[Command]
name = "AI_14"
command = U, D, U, D, U, D
time = 1
[Command]
name = "AI_15"
command = F, F, B, B, U, D, U
time = 1
[Command]
name = "AI_16"
command = B, D, D, U, F, D, D
time = 1
[Command]
name = "AI_17"
command = D, D, U, U, U, U, U, U
time = 1
[Command]
name = "AI_18"
command = D, D, D, D, D, D, D, U, U
time = 1
[Command]
name = "AI_19"
command = D, U, D, D, F, D, D, U, U
time = 1
[Command]
name = "AI_20"
command = D, D, D, D, B, D, D, U, U
time = 1
[Command]
name = "AI_21"
command = F, D, D, D, B, D, D, U, U
time = 1
[Command]
name = "AI_22"
command = B, D, D, D, B, D, D, U, U
time = 1
[Command]
name = "AI_23"
command = U, D, D, D, B, D, D, U, U
time = 1
[Command]
name = "AI_24"
command = U, D, U, D, U,D, U, D, U, D
time = 1
[Command]
name = "AI_25"
command = F, F, B, B, U, D,D, U, D, U, U
time = 1
[Command]
name = "AI_26"
command = B, D, D, U, F, D,D, U, D, U, D
time = 1
[Command]
name = "AI_27"
command = D, D, U, U, U, U, U,D, U, B, U
time = 1
[Command]
name = "AI_28"
command = D, D, D, D, D, D, D, U,D, U, U
time = 1
[Command]
name = "AI_29"
command = D, D, D, D, D, D, D, U,D, U, U, D
time = 1

;===============================================================================
[Statedef -1]
;===============================================================================

;Super Patadas
[State -1,]
type = ChangeState
value = 2600
triggerall = power >= 1000 && command = "Super Patadas"
triggerall = var(9) != 1
triggerall = var(7) > 1
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Super Comun
[State -1,]
type = ChangeState
value = 2400
triggerall = power >= 1000 && command = "Super Comun"
triggerall = var(9) != 1
triggerall = var(7) > 1
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Super Sokoken
[State -1,]
type = ChangeState
value = 2100
triggerall = command = "Super Sokoken"
triggerall = var(9) != 1
triggerall = var(7) > 1
triggerall = power >= 1000
triggerall = numprojid(2000) = 0
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;Especial Patadas
[State -1,]
type = ChangeState
value = 2500
triggerall = power >= 1000 && command = "Especial Patadas"
triggerall = var(9) != 1
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Esp.Comun Corta
[State -1,]
type = ChangeState
value = 2200
triggerall = power >= 1000 && command = "Especial Comun Corta"
triggerall = var(9) != 1
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Esp. Comun Larga
[State -1,]
type = ChangeState
value = 2205
triggerall = power >= 1000 && command = "Especial Comun Larga"
triggerall = var(9) != 1
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Sokoken Lento
[State -1,]
type = ChangeState
value = 2000
triggerall = command = "Sokoken Lento"
triggerall = var(9) != 1
triggerall = power >= 1000
triggerall = numprojid(2000) = 0
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Sokoken Rapido
[State -1,]
type = ChangeState
value = 2001
triggerall = command = "Sokoken Rapido"
triggerall = var(9) != 1
triggerall = power >= 1000
triggerall = numprojid(2000) = 0
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Baile de Patadas
[State -1,]
type  = ChangeState
value = 1150
triggerall = command = "Baile de Patadas"
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = p2bodydist x < 38
triggerall = var(9) != 1
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Oriuken de Patada 1
[State -1]
type = ChangeState
value = 1300
triggerall = command = "Oriuken de Patada 1"
triggerall = var(9) != 1
trigger1 = ctrl
trigger1 = statetype != A
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Oriuken de Patada 2
[State -1]
type = ChangeState
value = 1320
triggerall = command = "Oriuken de Patada 2"
triggerall = var(9) != 1
trigger1 = ctrl
trigger1 = statetype != A
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Oriuken Piña
[State -1,]
type  = ChangeState
value = 1050
triggerall = roundstate = 2
triggerall = command = "Ryuuga weak" || command = "Ryuuga strong"
trigger1 = var(14):= 1 + 1*(command = "Ryuuga strong")
triggerall = var(9) != 1
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Giro Patada 
[State -1,]
type  = ChangeState
value = ifelse(var(14) = 2,1101,1100)
triggerall = roundstate = 2
triggerall = var(9) != 1
triggerall = command = "Hien Shippu Kyaku1 weak" || command = "Hien Shippu Kyaku1 strong"
triggerall = var(14):= 1 + 1*(command = "Hien Shippu Kyaku1 strong")
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Wisko Lento
[State -1,]
type  = ChangeState
value = 1000
triggerall = numprojid(1000) = 0
triggerall = command = "Wisko Lento"
triggerall = var(9) != 1
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Wisko Rapido
[State -1,]
type = ChangeState
value = 1001
triggerall = numprojid(1000) = 0
triggerall = command = "Wisko Rapido"
triggerall = var(9) != 1
trigger1 = statetype != A
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 250 && movecontact
Trigger7 = stateno = 300 && movecontact
Trigger8 = stateno = 310 && movecontact
Trigger9 = stateno = 400 && movecontact
Trigger10= stateno = 410 && movecontact
Trigger11= stateno = 420 && movecontact

;-------------------------------------------------------------------------------
;Patada en Aire
[State -1,]
type = ChangeState
value = 1250
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(9) != 1
triggerall = !var(0)
triggerall = command = "Hien Ryuujin Kyaku weak" || command = "Hien Ryuujin Kyaku strong"
trigger1 = var(14):= 1 + 1*(command = "Hien Ryuujin Kyaku strong")
trigger1 = ctrl
Trigger2 = stateno = 260 && movecontact
Trigger3 = stateno = 600 && movecontact
Trigger4 = stateno = 610 && movecontact
Trigger5 = stateno = 620 && movecontact
Trigger6 = stateno = 630 && movecontact

;----------------------------------------------------------------
;Recovery
[State -1,]
type = ChangeState
value = 5201
triggerall = command = "recovery"
triggerall = var(9) != 1
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -20
trigger1 = vel y > 0

;Power charge
[State -1,]
type = ChangeState
value = 9800 
triggerall = ctrl = 1 
triggerall = power < 5000
triggerall = var(9) != 1
triggerall = var(7) = 0
trigger1 = command = "charge 1"
trigger1 = command = "charge 2"
trigger1 = (statetype = S) && ctrl

;MAX MODE-98
[State -1]
type = ChangeState
value = 4000
triggerall = ctrl = 1 
triggerall = Var(9) != 1
trigger1 = command = "MAX-1"
trigger1 = command = "MAX-2"
trigger1 = power >= 1000 && var(7) <= 0
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
;
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(9) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "holdfwd" && stateno = 102

;---------------------------------------------------------------------------
;
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(9) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Agarre 1
[State -1]
type = ChangeState
value = 800
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = p2stateno != 5120
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl

;Agarre 2
[State -1]
type = ChangeState
value = 820
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = p2stateno != 5120
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl 

;Habla
[State -1]
type = ChangeState
value = 195
triggerall = var(9) != 1
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Eskivar Atras
[State -1]
type = ChangeState
value = 701
triggerall = var(9) != 1
triggerall = command = "ab" || command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

;Eskivar Adelante
[State -1]
type = ChangeState
value = 700
triggerall = var(9) != 1
triggerall = command = "ab" || command = "z"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

;Eskivar Adelante
[State -1]
type = ChangeState
value = 700
triggerall = var(9) != 1
triggerall = command = "z" || command = "ab"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Rescatada 1
[State -1]
type = ChangeState
value = 300
triggerall = var(9) != 1
triggerall = command = "cd" || command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;Rescatada 2
[State -1]
type = ChangeState
value = 305
triggerall = var(9) != 1
triggerall = command = "cd" || command = "c"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000

;Rescatada Aire
[State -1]
type = ChangeState
value = 640
triggerall = var(9) != 1
triggerall = command = "cd" || command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------------
;Adelante y Patada
[State -1]
type = ChangeState
value = 250
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 300 && movecontact
Trigger7 = stateno = 310 && movecontact
Trigger8 = stateno = 101

;Adelante y Piña
[State -1]
type = ChangeState
value = 260
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = stateno = 200 && movecontact
Trigger3 = stateno = 210 && movecontact
Trigger4 = stateno = 230 && movecontact
Trigger5 = stateno = 240 && movecontact
Trigger6 = stateno = 300 && movecontact
Trigger7 = stateno = 310 && movecontact
Trigger8 = stateno = 101

;---------------------------------------------------------------
;Piña Debil
[State -1,]
type = ChangeState
value = 200
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1

;Piña Fuerte
[State -1]
type = ChangeState
value = 210
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Patada Debil
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = var(9) != 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1

;Piña Fuerte
[State -1]
type = ChangeState
value = 240
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Piña Debil Agach.
[State -1]
type = ChangeState
value = 400
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact

;Piña Fuerte Agach.
[State -1]
type = ChangeState
value = 410
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;Pat. Debil Agach.
[State -1]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(9) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;Pat. Fuerte Agach.
[State -1]
type = ChangeState
value = 430
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;Piña debil aire
[State -1]
type = ChangeState
value = 600
triggerall = var(9) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Patada debil aire
[State -1]
type = ChangeState
value = 610
triggerall = var(9) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Piña fuerte aire
[State -1]
type = ChangeState
value = 620
triggerall = var(9) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Patada fuerte aire
[State -1]
type = ChangeState
value = 630
triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------------------
;SUPER SOKOKEN (ALEJADO)
[State -1]
type = ChangeState
value = 2100
triggerall = var(9) = 1
triggerall = enemynear,NumProj = 0
triggerall = numprojID(2000) = 0
triggerall = p2stateno != 2620
triggerall = random <= 600
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = p2stateno != 5050
triggerall = p2stateno != 5100
triggerall = p2stateno != 5101
triggerall = p2stateno != 5110
triggerall = p2stateno != 5120
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2bodydist x = [180,300]
trigger1   = ctrl

;SOKOKEN RAPIDO (ALEJADO)
[State -1]
type = ChangeState
value = 2001
triggerall = var(9) = 1
triggerall = enemynear,NumProj = 0
triggerall = numprojID(2000) = 0
triggerall = p2stateno != 2620
triggerall = random <= 600
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = p2stateno != 5050
triggerall = p2stateno != 5100
triggerall = p2stateno != 5101
triggerall = p2stateno != 5110
triggerall = p2stateno != 5120
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2bodydist x = [180,300]
trigger1   = ctrl

;WISKO RAPIDO (ALEJADO)
[State -1]
type = ChangeState
value = 1005
triggerall = var(9) = 1
triggerall = enemynear,NumProj = 0
triggerall = numprojID(1000) = 0
triggerall = numprojID(2000) = 0
triggerall = p2stateno != 2620
triggerall = random <= 100
triggerall = roundstate = 2
triggerall = p2stateno != 5050
triggerall = p2stateno != 5100
triggerall = p2stateno != 5101
triggerall = p2stateno != 5110
triggerall = p2stateno != 5120
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2bodydist x = [180,300]
trigger1   = ctrl

;-------------------------------------------------------------------------------
;ORIUKEN RAPIDO (CUANDO SALTA)
[State -1]
type = ChangeState
value = 1300
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2stateno != 2620
triggerall = p2stateno != 5050
triggerall = random <= 700
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype = A
triggerall = p2bodydist x = [0,80]
trigger1 = ctrl

;-------------------------------------------------------------------------------
;SUPER COMUN (CONTRATAQUE)
[State -1]
type = ChangeState
value = 2400
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = random <= 800
triggerall = power >= 2000
triggerall = roundstate = 2
triggerall = ctrl
triggerall = enemy,hitdefattr = SCA, NA,SA
triggerall = p2bodydist x = [0,86]
trigger1 = ctrl

;ESPECIAL COMUN (CONTRATAQUE)
[State -1]
type = ChangeState
value = 2208
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = random <= 500
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = ctrl
triggerall = enemy,hitdefattr = SCA, NA,SA
triggerall = p2bodydist x = [0,86]
trigger1 = ctrl

;ORIUKEN RAPIDO (CONTRATAQUE)
[State -1]
type = ChangeState
value = 1300
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = random <= 500
triggerall = roundstate = 2
triggerall = ctrl
triggerall = enemy,hitdefattr = SCA, NA, SA
triggerall = p2bodydist x = [0,64]
trigger1 = ctrl

;-------------------------------------------------------------------------------
;AGARRE
[State -1]
type = ChangeState
value = 820
triggerall = var(9) = 1
triggerall = random <= 400
triggerall = p2stateno != [5050,5121]
triggerall = p2stateno != [150,151]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x <= 24
triggerall = p2statetype != A
trigger1 = ctrl

;-------------------------------------------------------------------------------
;SALTO ADELANTE
[State -1,]
type = ChangeState
value = 39
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x = [100,150]
triggerall = random <= 300
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 101
trigger3 = stateno = 102

;PATADA FUERTE AIRE
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = random <= 700
triggerall = p2bodydist x <= 70
triggerall = statetype = A
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------------------
;CUBRIDO-PARADO
[State -1]
type = ChangeState
value = 130
triggerall = enemy,hitdefattr = SA, NA,SA,HA
triggerall = P2bodydist x = [0,80]
triggerall = random <= 400
triggerall = statetype != A
triggerall = var(9) = 1
trigger1 = ctrl

;RESCATADA
[State -1]
type = ChangeState
value = 305
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000 && time = 4
trigger1 = random <= 999

;RECOVERY
[State -1]
type = ChangeState
value = 5201
triggerall = var(9) = 1 && Alive && CanRecover && Vel Y > 0 && Pos Y >= -20 && random <= 999
trigger1 = StateNo = 5050

;-------------------------------------------------------------------------------
;CORRER 1
[State -1]
type = ChangeState
value = 101
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype != A
triggerall = p2bodydist x >= 55
triggerall = random <= 150
trigger1 = statetype != A
trigger1 = ctrl

;CORRER 2
[State -1]
type = ChangeState
value = 101
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2statetype = L
trigger1 = stateno = 0
trigger1 = ctrl
trigger1 = p2bodydist x > 0

;-------------------------------------------------------------------------------
;PATADA DEBIL-BAJO
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 28
triggerall = random <= 700
triggerall = p2stateno != 5120
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2stateno != 5201
trigger1 = statetype != A
trigger1 = ctrl

;PIÑA FUERTE CERCA
[State -1]
type = ChangeState
value = 211
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x = [0,25]
triggerall = random <= 500
triggerall = p2stateno != 5120
triggerall = p2stateno != 5201
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl

;PIÑA DEBIL-ABAJO
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = statetype != A
trigger1 = random < 900
trigger1 = stateno = 420 && movecontact

;ADELANTE PATADA 1
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = statetype != A
trigger1 = random < 500
trigger1 = stateno = 400 && movecontact
trigger2 = random < 500
trigger2 = stateno = 211 && movecontact

;-------------------------------------------------------------------------------
;BAILE DE PATADAS
[State -1]
type = ChangeState
value = 1150
triggerall = var(9) = 1
trigger1 = random < 500
trigger1 = stateno = 250 && movehit

;-------------------------------------------------------------------------------
;SUPER COMUN
[State -1]
type = ChangeState
value = 2400
triggerall = var(9) = 1
triggerall = power >= 2000
trigger1 = random < 600
trigger1 = stateno = 1150 && movehit && time = 75

;ESPECIAL SOKOKEN
[State -1]
type = ChangeState
value = 2001
triggerall = var(9) = 1
triggerall = power >= 1000
trigger1 = random < 500
trigger1 = stateno = 1150 && movehit && time = 73

;ESPECIAL COMUN
[State -1]
type = ChangeState
value = 2208
triggerall = var(9) = 1
triggerall = power >= 1000
trigger1 = random < 500
trigger1 = stateno = 1150 && movehit && time = 75

;ORIUKEN PATADA LARGO
[State -1]
type = ChangeState
value = 1320
triggerall = var(9) = 1
trigger1 = random < 450
trigger1 = stateno = 1150 && movehit && time = 72


;-------------------------------------------------------------------------------
;GIRO PATADA FUERTE
[State -1]
type = ChangeState
value = 1101
triggerall = var(9) = 1
trigger1 = random < 400
trigger1 = stateno = 250 && movehit

;-------------------------------------------------------------------------------
;ESKIVAR ATRAS 1
[State -1]
type = ChangeState
value = 701
triggerall = var(9) = 1
triggerall = p2stateno = [5080,5121]
triggerall = random <= 150
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,150]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

;ESKIVAR ATRAS 2
[State -1]
type = ChangeState
value = 701
triggerall = var(9) = 1
triggerall = p2stateno = 5201
triggerall = random <= 150
triggerall = roundstate = 2
triggerall = p2bodydist x = [0,150]
triggerall = statetype = S
trigger1 = ctrl

;GIRO PATADA DEBIL (P2 CUBRIDO)
[State -1]
type = ChangeState
value = 1100
triggerall = var(9) = 1
trigger1 = random < 500
trigger1 = stateno = 250 && moveguarded

;-------------------------------------------------------------------------------
