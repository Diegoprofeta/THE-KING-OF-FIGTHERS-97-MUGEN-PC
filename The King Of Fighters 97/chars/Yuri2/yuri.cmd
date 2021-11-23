; Command file for Yuri Sakazaki by JorgeHCampos

;-| Super Motions |--------------------------------------------------------

[Command]
name = "chou tsubame mai"
command = x, x, F, a, y
time = 35

[Command]
name = "haoh shi ko oh ken"
command = ~F, B, DB, D, DF, F, c
time = 30

[Command]
name = "haoh shi ko oh ken xy"
command = ~F, B, DB, D, DF, F, x+y
time = 30

; Hien Houh Kyaku
[Command]
name = "houou_d"
command = ~D, DF, F, DF, DB, B, a+b
time = 30

[Command]
name = "houou"
command = ~D, DF, F, DF, DB, B, a
time = 30

[Command]
name = "houou"
command = ~D, DF, F, DF, DB, B, b
time = 30

;-----------------

[Command]
name = "dqcf_a"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "dqcf_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "dqcf_y"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "dqcf_b"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "dqcf_ab"
command = ~D, DF, F, D, DF, F, a+b
time = 30

;-| Special Motions |------------------------------------------------------

; Haoh sho ko oh ken

[Command]
name = "haoh sho ko oh ken x"
command = ~F, B, DB, D, DF, F, x
time = 30

[Command]
name = "haoh sho ko oh ken y"
command = ~F, B, DB, D, DF, F, y
time = 30

;---------
;Hyaku Retsu Binta

;SNK
[Command]
name = "binta_a"
command = ~F, DF, D, DB, B, F, a
time = 30

[Command]
name = "binta_b"
command = ~F, DF, D, DB, B, F, b
time = 30

;Capcom
[Command]
name = "binta_c_a"
command = F, B, F, a
time = 30

[Command]
name = "binta_c_b"
command = F, B, F, b
time = 30

;---------
;OniHarite (White Lily version)

[Command]
name = "oniharite"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "oniharite"
command = ~F, DF, D, DB, y
time = 30

[Command]
name = "oniharite"
command = F, DF, D, DB, B, y
time = 30

[Command]
name = "oniharite"
command = F, DF, D, DB, y
time = 30

[Command]
name = "oniharite"
command = DF, D, DB, y
time = 30

[Command]
name = "oniharite"
command = ~DF, D, DB, y
time = 30

;------------------------

; kuuga

[Command]
name = "kuuga_x"
command = ~F, D, DF, F, x

[Command]
name = "kuuga_y"
command = ~F, D, DF, F, y

; shippu ken 

[Command]
name = "shippu_x"
command = ~D, DB, B, x
time = 10

[Command]
name = "shippu_y"
command = ~D, DB, B, y
time = 10

;saiha

[Command]
name = "saiha_xy"
command = ~D, DB, B, x+y
time = 10

[Command]
name = "saiha_c"
command = ~D, DB, B, c
time = 10

[Command]
name = "saiha"
command = ~D, DB, B, x
time = 10

[Command]
name = "saiha"
command = ~D, DB, B, y
time = 10


;------------------------
;sempuu kyaku

[Command]
name = "sempu_a_wl"
command = ~B, D, B, a
time = 15

[Command]
name = "sempu_b_wl"
command = ~B, D, B, b
time = 15   

[Command]
name = "sempu_a"
command = ~D, DB, B, a
time = 10

[Command]
name = "sempu_b"
command = ~D, DB, B, b
time = 10
;------------------------
;kohoken

[Command]
name = "kohoken_x"
command = ~D, DF, F, x
time = 10

[Command]
name = "kohoken_y"
command = ~D, DF, F, y
time = 10

[Command]
name = "kohoken_c"
command = ~D, DF, F, c
time = 10

;-----------------------
; Raiohken

;upper
[Command]
name = "raiohken_u_a"
command = ~F, D, DF, F, a
time = 14

[Command]
name = "raiohken_u_b"
command = ~F, D, DF, F, b
time = 14

;jumping
[Command]
name = "raiohken_a"
command = ~D, DF, F, a
time = 10

[Command]
name = "raiohken_b"
command = ~D, DF, F, b
time = 10

;airborne
[Command]
name = "raiohken_a_x"
command = ~D, DF, F, x
time = 10

[Command]
name = "raiohken_a_y"
command = ~D, DF, F, y
time = 10

[Command]
name = "raiohken_a_a"
command = ~D, DF, F, a
time = 10

[Command]
name = "raiohken_a_b"
command = ~D, DF, F, b
time = 10

;-----------------------
; Senkai Kyaku

[Command]
name = "Senkai Kyaku a"
command = ~D, DB, B, a
time = 10

[Command]
name = "Senkai Kyaku b"
command = ~D, DB, B, b
time = 10

[Command]
name = "Ura Hi En Sempuu Kyaku"
command = UF,b
time = 10

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

name = "z";Required (do not remove)
command = x+a
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


[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

;---------------------------------------------------------------------------

[Command]
name = "hold_x2"
command = /$x
time = 11

[Command]
name = "hold_y2"
command = /$y
time = 11

[Command]
name = "hold_x"
command =  /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command =  /$z
time = 1

[Command]
name = "hold_a"
command =  /$a
time = 1

[Command]
name = "hold_b"
command =  /$b
time = 1

[Command]
name = "hold_c"
command =  /$c
time = 1

[Command]
name = "hold_s"
command =  /$s
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
name = "recovery"
command = z
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-----------
;superasalto
;-----------

[command]
name = "super jump"
command = D,UF

[command]
name = "super jump"
command = D,UB

[command]
name = "super jump"
command = ~D,UF

[command]
name = "super jump"
command = ~D,UB

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

;---------------------------------------------------------------------------
; Estados de inicio de Conductas, Player y AI
;---------------------------------------------------------------------------

[Statedef -1]

;---------------------------------------------------------------------------
;Guardia - AI Solamente
;---------------------------------------------------------------------------

;Guardia de Pie 
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = random <= 950
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = ctrl
triggerall = stateno != 120
trigger1 = p2statetype = S
trigger2 = (enemy, NumProj >= 1)

;Guardia en el aire
[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = statetype = A
triggerall = random <= 950
triggerall = var(9) = 1
triggerall = ctrl 
triggerall = stateno != 132
triggerall = var(1) !=0
triggerall = var(1) !=3
triggerall = P2life != 0
trigger1 = p2statetype = A
trigger2 = (enemy, NumProj >= 1)

; Guardia agachada
[State -1]
type = ChangeState
value = 131
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype != A
triggerall = random <= 950
triggerall = var(9) = 1
triggerall = ctrl
triggerall = stateno != 131
trigger1 = p2statetype = C

;===========================================================================
;Iniciadores de Ataques, con o sin AI
;===========================================================================

;chou tsubame mai
[State -1, chou tsubame mai]
type = ChangeState
value = 4040
triggerall = command = "chou tsubame mai" && power >= 3000 && var(1) = 1
triggerall = statetype != A && movetype != H && pos y = 0
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 255
trigger9 = stateno = 400
trigger10= stateno = 410
trigger11 = stateno = 440
trigger12 = stateno = 430
trigger13 = stateno = 1100
trigger14 = stateno = 1101
trigger15 = stateno = 1102
trigger16 = stateno = 1300
trigger17 = stateno = 1330
trigger18 = stateno = 1100 &&  time >= 17
trigger19 = stateno = 4000
trigger20 = stateno = 4001

;chou tsubame mai
[State -1, chou tsubame mai]
type = ChangeState
value = 4040
triggerall = command = "chou tsubame mai" && power >= 3000 && var(1) = 0
triggerall = statetype != A && movetype != H && pos y = 0
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 255
trigger9 = stateno = 400
trigger10= stateno = 410
trigger11 = stateno = 440
trigger12 = stateno = 430
trigger13 = stateno = 1100
trigger14 = stateno = 1101
trigger15 = stateno = 1102
trigger16 = stateno = 1300
trigger17 = stateno = 1330
trigger18 = stateno = 1100 &&  time >= 17
trigger19 = stateno = 4000
trigger20 = stateno = 4001

;Yuri no Tai Kyoku ken
[State -1, Yuri no Tai Kyoku ken]
type = ChangeState
value = 4300
triggerall = command = "dqcf_x" || command = "dqcf_y"
triggerall = statetype != A && var(1) = 1
trigger1 = ctrl && power >= 1000
trigger2 = stateno = 4020 && power >=2000

;hien houoh kyaku
[State -1, hien houoh kyaku]
type = ChangeState
value = 4100
triggerall = command = "houou" && power >= 1000 && statetype != A && var(1) != 5
trigger1   = ctrl
trigger2   = stateno = 4000
trigger3 = stateno = 1300
trigger4 = stateno =  440 && movecontact
trigger5 = stateno = 4300 && movecontact
trigger6 = stateno = 1700 && uniqhitcount > 1

;metsuki zan kuh ga
[State -1, metsuki zan kuh ga]
type = ChangeState
value = 4000
triggerall = command = "dqcf_a" && power >= 1000 && statetype != A && var(1) != 5
trigger1 = ctrl
trigger2 = stateno = 410
trigger3 = stateno = 1300

;metsuki zan kuh ga
[State -1, metsuki zan kuh ga]
type = ChangeState
value = 4000
triggerall = command = "dqcf_b" && power >= 1000 && statetype != A && var(1) != 5
trigger1 = ctrl
trigger2 = stateno = 410

;haoh shi ko oh ken
[State -1, haoh shi ko oh ken]
type = ChangeState
value = 4200
trigger1 = statetype != A && (power >= 3000 && var(1) = 1) && command = "haoh shi ko oh ken" && ctrl
trigger2 = statetype != A && (power >= 2000 && var(1) = 2) && command = "haoh shi ko oh ken xy" && ctrl

;haoh shou ko oh ken
[State -1, haoh shou ko oh ken]
type = ChangeState
value = 1015
triggerall = statetype != A && power > 500 && (var(1) = 1 || var(1) = 2)
trigger1 = command = "haoh sho ko oh ken x" && ctrl
trigger2 = command = "haoh sho ko oh ken y" && ctrl

;===========================================================================

;hyaku retsu binta
[State -1, binta]
type = ChangeState
value = 2040
triggerall = statetype != A && movetype != H && pos y = 0 && ctrl
trigger1 = (var(1) = 1 || var(1) = 0 || var(1) = 3 || var(1) = 4) && (command = "binta_a" || command = "binta_b")
trigger2 =  var(1) = 2 && (command = "Senkai Kyaku a" || command = "Senkai Kyaku b")
trigger3 =  var(1) = 5 && (command = "binta_c_a" || command = "binta_c_b")

;---------------------------------------------------------------------------
;super jump
[State -1, superjump]
type = ChangeState
value = 900
triggerall = command = "super jump" && var(1) !=2
trigger1 = statetype != A
trigger1 = ctrl

;----------------------------------------------------------
;Esquivar
[state -1,esquivar]
type=changestate
value=1040
triggerall = ctrl && statetype != A && command != "holddown" && (var(1) = 1 || var(1) = 2)
trigger1 = command = "z" && var(1) = 2 && var(9)!=1
trigger2 = command = "z" && var(1) = 1 && command!="holdfwd" && var(9)!=1
;AI
trigger3 = var(9)=1 && p2bodydist x < 30 && random < 300 && p2movetype=A

;Rodar adelante
[state -1,rodar adelante]
type=changestate
value=1038
triggerall=statetype != A && command="z"  && var(1)!=2 && ctrl
trigger1 = var(9) != 1 && command!="holdback" && var(1) != 5
trigger2 = var(9) != 1 && var(1) = 5
; AI limiter
trigger3 = var(9) = 1 && random < 200
trigger4 = var(9) = 1 && p2bodydist x < 120 && random < 500

;Rodar ATRAS
[state -1,rodar ATRAS]
type=changestate
value=1039
triggerall = statetype != A && var(1) != 1 && var(1) != 5 && ctrl
triggerall=command="z" && command="holdback" && var(1)!=2 && var(1) !=5
trigger1 = var(9) != 1
; AI limiter
trigger2 = var(9) = 1 && random < 200
trigger3 = var(9) = 1 && p2bodydist x < 120 && p2movetype = A

;---------------------------------------------------------------------------
;Ura kuuga
[State -1, ura kuuga]
type = ChangeState
value = 1370
triggerall = command = "kuuga_y"
trigger1 = stateno = 1105

;kuuga_x
[State -1, kuuga_x]
type = ChangeState
value = 1300
triggerall = command = "kuuga_x" && statetype != A && var(1) !=2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 &&  var(1) = 1
trigger3 = anim = 245 && time > 11 && var(1) = 1

;kuuga_y
[State -1, kuuga_y]
type = ChangeState
value = 1330
triggerall = command = "kuuga_y" && statetype != A && var(1) !=2
trigger1 = ctrl
trigger2 = stateno = 200 &&  var(1) = 1
trigger3 = anim = 245 && time > 11 && var(1) = 1
trigger4 = ((anim = 410||anim = 240|| anim = 215) && (time > 5))
ignorehitpause = 1

;Sai Ha
[State -1, Saiha]
type = ChangeState
value = 1700
triggerall = statetype != A
trigger1 = command = "saiha" && (var(1) = 0 || var(1) = 2) && ctrl
trigger2 = (command = "saiha_c" || command = "saiha_xy") && var(1) = 1 && ctrl
trigger3 = command = "saiha" && (var(1) = 0 || var(1) = 2) && stateno = 410 && movecontact
trigger4 = (command = "saiha_c" || command = "saiha_xy") && var(1) = 1 && stateno = 410 && movecontact
;AI
;trigger3 = var(9) = 1 && ctrl && p2statetype = A && p2movetype = A && p2bodydist X < 40

;Hi en Shippu Ken
[State -1, Hi En Shippu Ken]
type = ChangeState
value = 1400
triggerall = (command = "shippu_x" || command = "shippu_y") && var(1) != 0 && var(1) != 2 && var(1) != 5 && statetype != A
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact

;Hi En Sempu Kyaku
[State -1, sempuu]
type = ChangeState
value = 1502
triggerall = statetype != A && var(1) != 1 && var(1) !=2 && var(1) !=5
trigger1 = var(1) = 1 && command = "sempu_a_wl" && ctrl
trigger2 = var(1) = 1 && command = "sempu_b_wl" && ctrl
trigger3 = var(1) = 0 && command = "sempu_a"    && ctrl
trigger4 = var(1) = 0 && command = "sempu_b"    && ctrl
trigger5 = var(1) = 1 && command = "sempu_b_wl" && stateno = 1050
;_----------------------------------------------------
;_----------------------------------------------------

;Rai Oh Ken (97)
[State -1, rai oh ken 97]
type = ChangeState
value = 1650
triggerall = statetype = S ||statetype = C
trigger1 = command = "raiohken_a"   && var(1) = 5 && ctrl
trigger2 = command = "raiohken_b"   && var(1) = 5 && ctrl
trigger3 = command = "raiohken_u_a" && var(1) = 1 && ctrl
trigger4 = command = "raiohken_u_b" && var(1) = 1 && ctrl

;Rai Oh Ken (2002)
[State -1, rai oh ken 2002 ]
type = ChangeState
value = 1630
triggerall = statetype = A && ctrl
trigger1 = (command = "raiohken_a_x" || command = "raiohken_a_y") && var(1) = 1
trigger2 = (command = "raiohken_a_a" || command = "raiohken_a_b") && var(1) = 0

;Rai Oh Ken (95)
[State -1, rai oh ken]
type = ChangeState
value = 1600
triggerall = statetype != A && ctrl && (var(1) = 3 || var(1) = 4) 
trigger1 = command = "raiohken_a"
trigger2 = command = "raiohken_b"
; AI
trigger3 = var(9) = 1 && p2statetype = C && p2bodydist x > 32 && p2bodydist x < 150 && random <= 750

;Ko Ho Ken X (97)
[State -1, KoHoKen_X]
type = ChangeState
value = 1000
triggerall = statetype != A && var(1) !=2
trigger1   = command = "kohoken_x" && ctrl
trigger2   = command = "kohoken_x" && var(1) = 1 && (stateno = 200 || (anim = 245 && time > 16))
; AI - Intentar derribar al oponente que apenas se levanta
trigger3 = var(9) = 1 && p2stateno=5120 && random <= 800 && ctrl
; AI - Arrojar Haoh sho ko ken (part1)
trigger4 = var(9) = 1 && p2bodydist x > 200 && random <= 40 && p2life > 0 && p2statetype != L && ctrl

;Ko Ho Ken Y (97)
[State -1, KoHoKen_Y]
type = ChangeState
value = 1010
triggerall = command = "kohoken_y" && statetype != A && var(1) !=2
trigger1   = ctrl
trigger2   = var(1) = 1 && (stateno = 200 || (anim = 245 && time > 16))

;Ko Ho Ken Y (97)
[State -1, KoHoKen_Y]
type = ChangeState
value = 1010
trigger1 = command = "holdfwd" && command = "y" && stateno = 410 && movecontact && time > 6 && var(1) !=5

;Ko Ho Ken C recto (WL)
[State -1, KoHoKen_C]
type = ChangeState
value = 1002
triggerall = var(1) = 1 && power > 50 && statetype != A
trigger1   = command = "kohoken_c" && ctrl && NumProj = 0
trigger2   = command = "kohoken_c" && stateno = 200
; AI - Inicio de combo
trigger3   = var(9) = 1 && p2bodydist x > 130 && random > 980 && p2life > 0 && ctrl
trigger4   = var(9) = 1 && enemy, numproj = 1 && enemy, statetype != A && p2statetype != L && p2life > 0 && ctrl

;Ko Ho Ken C arriba (WL)
[State -1, KoHoKen_C]
type = null;:ChangeState
value = 1003
triggerall = power > 50 && stateno = 1002 && time > 19
trigger1   = command = "kohoken_c"
; AI
trigger2   = var(9) = 1 && p2life > 0 && p2statetype != L && random >700

;Ko Ho Ken C abajo (WL)
[State -1, KoHoKen_C]
type = null;ChangeState
value = 1004
triggerall = power > 50 && stateno = 1003 && time > 19
trigger1 = command = "kohoken_c" 
; AI
trigger2   = var(9) = 1 && p2life > 0 && p2statetype != L && random >700

;Senkai Kyaku (WL)
[State -1, Senkai Kyaku]
type = ChangeState
value = 1101
triggerall = var(1) = 1 && (command = "Senkai Kyaku a" || command = "Senkai Kyaku b")
trigger1 = statetype = S && ctrl

;Senkai Kyaku (follow up - WL)
[State -1, Senkai Kyaku]
type = ChangeState
value = 1100
triggerall = var(1) = 1 && (command = "Senkai Kyaku a" || command = "Senkai Kyaku b")
trigger1 = stateno = 230 && anim = 235
trigger2 = stateno = 430
trigger4 = anim = 245

;Tsuika Koh Geki (WL)
[State -1, Tsuika Koh Geki]
type = ChangeState
value = 1102
triggerall = command = "holdfwd" && command = "a" && command != "holddown" && var(1) = 1 && statetype = S
trigger1 = ctrl

;Ura Hi En Sempuu Kyaku
[State -1, Ura Hi En Sempuu Kyaku]
type = ChangeState
value = 1500
triggerall = command = "Ura Hi En Sempuu Kyaku" && var(1) = 1
trigger1 = (anim = 240) && time > 14 && movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
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

;---------------------------------------------------------------------------
;throw
;---------------------------------------------------------------------------

;oniharite
[State -1, Throw]
type = ChangeState
value = 2000
triggerall = statetype = S && stateno != 100 && (p2statetype = S) || (p2statetype = C) && pos y = 0
trigger1 = P2MoveType != H && ctrl && var(1) != 1 && P2BodyDist X < 16 && command = "y" && command = "holdfwd"
trigger2 = command = "oniharite" && P2BodyDist X < 40 && var(1) = 1 && P2MoveType != H
trigger3 = command = "oniharite" && var(1) = 1 && anim = 245 && time >= 6

;silent nage
[State -1, Throw]
type = ChangeState
value = 2020
triggerall = statetype = S && command = "holdfwd" && ctrl && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger1 = P2bodyDist X < 24 && command = "b" && var(1) != 1
trigger2 = P2bodyDist X < 16 && command = "y" && var(1) = 1

;somersault kick
[State -1, Throw]
type = ChangeState
value = 2050
triggerall = statetype = S && command = "holdfwd" && ctrl && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger1 = P2bodyDist X < 24 && command = "b" && var(1) = 1

;---------------------------------------------------------------------------
;Extras
;---------------------------------------------------------------------------

;bloqueo
[State -1, bloqueo]
type = ChangeState
value = 1060
triggerall = command = "holdfwd" && command = "x" && command != "holddown" && statetype = S && var(1) = 1
trigger1 = prevstateno !=100
trigger1 = ctrl
trigger2 = stateno = 150 || stateno = 151 || stateno = 130 || stateno = 140

;En Tsume
[State -1, En Tsume]
type = ChangeState
value = 1050
triggerall = command = "holdfwd" && command = "c" && command != "holddown" && statetype = S && var(1) = 1
trigger1 = prevstateno !=100 && ctrl
trigger2 = anim = 235 && time > 9
trigger3 = stateno = 1060 && time > 33

;Tsubame Yoku (2k2)
[State -1, Tsubame Yoku]
type = ChangeState
value = 220
triggerall = command = "holdfwd" && command = "x" && command != "holddown"
triggerall = statetype = S && (var(1) != 1 || var(1) !=2)
trigger1 = prevstateno !=100 && ctrl
trigger2 = anim = 245 && time >= 6
trigger3 = anim = 215 && time >= 6
trigger4 = anim = 410 && time >= 2

;Tsubame Yoku (95)
[State -1, Tsubame Yoku]
type = ChangeState
value = 220
triggerall = command = "holdfwd" && command = "b" && command != "holddown" && statetype = S 
triggerall = var(1) = 1 || var(1) =2
trigger1 = prevstateno !=100 && ctrl
trigger2 = anim = 245 && time >= 6
trigger3 = anim = 215 && time >= 6
trigger4 = anim = 410 && time >= 2

;Senkai Kyaku (2k2)
[State -1, Senkai Kyaku]
type = ChangeState
value = 250
triggerall = command = "holdfwd" && command = "a" && command != "holddown"
triggerall = var(1) = 0 || var(1) = 3 || var(1) = 4
trigger1 = statetype = S && ctrl
trigger2 = stateno = 1300 && time = 4
trigger3 = anim = 245 && time >= 6
trigger4 = anim = 215 && time >= 6
trigger5 = anim = 410 && time >= 2

;---------------------------------------------------------------------------
;normales
;---------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = anim = 200 && time > 15
trigger3 = anim = 205 && time > 10
trigger4 = stateno = 430 && movehit

;---------------------------------------------------------------------------
;Body blow
[State -1, Body blow]
type = ChangeState
value = 660
triggerall = statetype = S && command != "holddown"
trigger1 = var(9) != 1 && command = "c" && ctrl
;AI - Limite de distancia
trigger2 = var(9)  = 1 && p2bodydist x < 30 && random <= 150 && ctrl && p2statetype != L && p2life > 0

;---------------------------------------------------------------------------
;Golpe fuerte de pie
[State -1, golpe fuerte de pie]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && time > 8 && var(1) = 1
trigger3 = stateno = 1060 && time > 23
trigger4 = anim = 205 && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 230 && anim = 235 && movecontact
trigger3 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Patada fuerte de Pie
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S   && ctrl
trigger2 = stateno = 200   && time > 5
trigger3 = stateno = 230   && time > 6 && anim = 235

[State -1, Standing Strong Kick]
type = ChangeState
value = 240
trigger1 = stateno = 1040 && time > 8 && command = "z"

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = ((stateno = 400) || (stateno = 430)) && ((time > 9) || (movecontact && time > 5))
trigger3 = anim = 215 && (movecontact && time > 17)
ignorehitpause

;Crouching Light Kick
[State -1, Crouching Light Kick]
type  = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1   = statetype = C && ctrl
trigger2   = stateno = 400 && (time > 9 || movecontact && time > 5)
trigger3   = stateno = 430 && uniqhitcount < 4

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = ((stateno = 400) || (stateno = 430)) && ((time > 9) || (movecontact && time > 5))

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;patada extrafuerte saltando
[State -1, body blow jumping]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl

;Salto Corto
[State -1, ]
type = changestate
triggerall = prevstateno != 630 && prevstateno != 633 && prevstateno != 634 && prevstateno != 1630
trigger1 = stateno=50 && command!="holdup" && time<3 && vel y < 0
trigger2 = ((anim=400 || anim = 430) && time > 5 && command = "holdup" && var(1)=1)
value = 910
