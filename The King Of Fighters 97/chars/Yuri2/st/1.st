; Archivo ST1 para Yuri Sakazaki por Jorge H Campos
; Este archivo contiene los estados para los siguientes movimientos:
; - Lose by timeover                 (170)    
; - Win State Decider                (180)
; - Winpose  1 (karate KO)        US (181)
; - Winpose  2 (99 -1)             x (182)
; - Winpose  3 (00 -1)             b (183)
; - Winpose  4 (97 -1)             y (184)
; - Winpose  5 (97 -2)             z (185)
; - Winpose  6 (98 -1)             a (186)
; - Winpose  7 (01 -1)             c (187)
; - Winpose  8 (98 -2)            US (188)
; - Winpose  9 (karate TO)        US (189)
; - Winpose 10 (Kitty)            US (1890)
; - Intro 1 (99)                     (190)
; - Intro 2 (01)                     (191)   
; - Intro 3 (00)                     (192) 
; - Taunt 1 (hey! here!)             (195) 
; - Salto largo (1)                  (900)        
; - Salto largo (2)                  (901)
; - Salto corto (1)                  (910)        
; - Salto corto (2)                  (911)
; - Rodar adelante                  (1038)
; - Rodar atras                     (1039)
; - Esquivar                        (1040)
; - AI init                         (9999)

; - Estados siempre activos         ( -2 )
; - Estados condicionales           ( -3 )


;---------------------------------------------------------------------------
; Win state decider

[Statedef 180]

[State 180, varset]
type = varset
trigger1 = time = 0
var(6) = 1

[State 0, ]; Kitty (cercana a la perfeccion)
type = ChangeState
trigger1 = life > 800 && winKO
value = 1890

[State 180, 3]; Osu! (time over)
type = ChangeState
trigger1 = wintime
value = 188

[State 180, 3]; (kyokugen)
type = ChangeState
trigger1 = var(3) = 1 && wintime
value = 189

[State 180, 3]; (kyokugen)
type = ChangeState
trigger1 = var(3) = 1
value = 181

[State 180, 3]; (escoger 2kosu!)
type = ChangeState
trigger1 = command = "hold_x"
value = 182

[State 180, 3]; (escoger 2knoproblemo)
type = ChangeState
trigger1 = command = "hold_b"
value = 183

[State 180, 3]; (escoger service,service)
type = ChangeState
trigger1 = command = "hold_y"
value = 184

[State 180, 3]; (escoger bui-bui)
type = ChangeState
trigger1 = command = "hold_z"
value = 185

[State 180, 3]; (escoger 98-1)
type = ChangeState
trigger1 = command = "hold_a"
value = 186

[State 180, 3]; (escoger 01-1)
type = ChangeState
trigger1 = command = "hold_c"
value = 187

[State 180, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 2
range = 2,7

[State 180, 2]
type = ChangeState
trigger1 = time = 0
value = 180+var(2)

;---------------------------------------------------------------------------
; Win pose 1 (contra KyokugenKarate)

[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, notover]
type = AssertSpecial
;trigger1 = MatchOver
trigger1 = time = [0,300]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Win pose 2 (Osu!-1)

[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State -10, RH]
type = PlaySnd
trigger1 = time = 15
value = 6,2

[State -10, HK]
type = PlaySnd
trigger1 = time = 45
value = 6,1

[State -10, HP]
type = PlaySnd
trigger1 = time = 60
value = 6,1

[State 182, osu!]
type = PlaySnd
trigger1 = animelem=29
value = 7,2

[State 182, notover]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Win pose 3 (newat2000)

[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State -10, ]
type = PlaySnd
trigger1 = time = 21
value = 3,1

[State -10, ]
type = PlaySnd
trigger1 = time = 22
value = 6,2

[State -10, ]
type = PlaySnd
trigger1 = time = 80
value = 7,3

[State 181, notover]
type = AssertSpecial
;trigger1 = MatchOver
trigger1 = Time = [0,300]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Win pose 4 (97-1)

[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State -10, ]
type = PlaySnd
trigger1 = time = 12
value = 7,4

[State 181, notover]
type = AssertSpecial
;trigger1 = MatchOver
trigger1 = Time = [0,250]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Win pose 5 (97-2)

[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State -10, ]
type = PlaySnd
trigger1 = time = 15
value = 7,5

[State 181, notover]
type = AssertSpecial
;trigger1 = MatchOver
trigger1 = Time = [0,157]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Win pose 6 (KOF98)

[Statedef 186]
type = S
ctrl = 0
anim = 186
velset = 0,0

[State 0, ]
type = PlaySnd
trigger1 = time = 68
value = 7,10

[State 0, ]
type = PlaySnd
trigger1 = time = 87
value = 7,11;7

[State 181, notover]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Win pose 7 (2001)

[Statedef 187]
type = S
ctrl = 0
anim = 187
velset = 0,0

[State -10, ]
type = PlaySnd
trigger1 = time = 21
value = 6,2

[State -10, ]
type = PlaySnd
trigger1 = time = 24
value = 7,9

[State 181, notover]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Win pose 8 (98 -2)

[Statedef 188]
type = S
ctrl = 0
anim = 188
velset = 0,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 10
value = 7,2

[State 181, notover]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Win pose 9 (win timeover karate)

[Statedef 189]
type = S
ctrl = 0
anim = 189
velset = 0,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 7,12

[State 181, notover]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Win pose 10 (kittie pose)

[Statedef 1890]
type = S
ctrl = 0
anim = 1890
velset = 0,0

[State 0, ]
type = Velset
trigger1 = time < 8 && backedgebodydist <= 0
x = .6

[State 0, ]
type = Velset
trigger1 = time > 7
x = 0

[State 0, ]
type = Width
trigger1 = time > 7
edge = 15,18

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 18
value = 7,18

[State 181, notover]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intro 99

[Statedef 190]
type = S
ctrl = 0
velset = 0,0
anim=190

[State 190, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 3]
type = PlaySnd
trigger1 = animelem=8
value = 7,2

[State 190, 4] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro 01

[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

;intro

[State 190, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

;anim

[State 0, ]
type = VelSet
trigger1 = animelem = 7
y = -7.4

[State 0, ]
type = VelAdd
trigger1 = ((time > 60) && (time < 98))
y = .4

[State 0, ]
type = VelSet
trigger1 = time = 98
y = 0

[State 0, ]
type = PosSet
trigger1 = time = 98
y = 0

;snd

[State 190, 3]
type = PlaySnd
trigger1 = animelem=2
value = 7,8
channel = 4

[State 190, 3]
type = PlaySnd
trigger1 = animelem=4
value = 4,3

[State 190, 3]
type = PlaySnd
trigger1 = animelem=22
value = 4,8

[State 190, 3]
type = PlaySnd
trigger1 = animelem=23
value = 4,9

;fin

[State 191, 4] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------
; Intro 00

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[state 191, playsnd]
type = playsnd
trigger1 = animelem = 28
value = 7,6

[State 191, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 191, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 4] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt

[Statedef 195]
type = S
ctrl = 0
velset = 0,0
movetype = I
physics = S
sprpriority = 2

;anim

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = var (1) = 0 || var (1) = 2 
value = 195

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = var (1) = 1
value = 1950

;snd

[State 195, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = 7,1

;fin

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------

; LOSE (Time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = P2Name = "JHCX-PY"
value = 181

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, notover]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver


;---------------------------------------------------------------------------
;Super Jump
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Super Jump Start
[Statedef 900]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 900, 1]
type = VarSet
trigger1 = Time = 0
v = 11
value = 0

[State 900, 2]
type = VarSet
trigger1 = command = "holdfwd"
v = 11
value = 1

[State 900, 3]
type = VarSet
trigger1 = command = "holdback"
v = 11
value = -1

[State 900, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 901
ctrl = 1

;---------------------------------------------------------------------------
;Super Jump
[Statedef 901]
type    = A
physics = A
ctrl = 1
anim = 41
velset = 0, -7.5

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 4,4

[State 901, ChangeAnim 1]  ;Neutral
type = ChangeAnim
trigger1 = Var(11) = 0
trigger1 = Time = 0
value = 41

[State 901, ChangeAnim 2]  ;Adelante
type = ChangeAnim
trigger1 = Var(11) = 1
trigger1 = Time = 0
value = 42

[State 901, ChangeAnim 3]  ;Atras
type = ChangeAnim
trigger1 = Var(11) = -1
trigger1 = Time = 0
value = 43

[State 901, Jumping Fwd Velocity]
type = VelSet
trigger1 = Anim = 42
trigger1 = Time = [0,5]
x = 6

[State 901, Jumping Back Velocity]
type = VelSet
trigger1 = Anim = 43
trigger1 = Time = [0,5]
x = -6

;afterimage
[State 201, 3] 
type = Afterimage
triggerall = Time = 0
trigger1 = var(11) = -1
trigger2 = var(11) = 1
time = 18
PalColor = 200
PalBright = 0, 0, 0
PalContrast =  120,120,120
PalAdd = 0, 0, 0 
PalMul = .7,.7,.7
Length = 10
FrameGap = 4
Trans = add1

;Borrar el afterimage
[State 201, 4]
type = Afterimage
trigger1 = Time = 20
trigger1 = var(1) = 0
time = 0

;---------------------------------------------------------------------------
;Salto Corto

;Inicio
[Statedef 910]
type    = S
physics = S
anim = 41
ctrl = 0
sprpriority = 1

[State 900, 1]
type = VarSet
trigger1 = Time = 0
v = 11
value = 0

[State 900, 2]
type = VarSet
trigger1 = command = "holdfwd"
v = 11
value = 1

[State 900, 3]
type = VarSet
trigger1 = command = "holdback"
v = 11
value = -1

[State 900, 4]
type = ChangeState
trigger1 = time = 0;AnimTime = 0
value = 911
ctrl = 1

;---------------------------------------------------------------------------
;Super Jump
[Statedef 911]
type    = A
physics = A
ctrl = 1
anim = 41
velset = 0, -5

[State 901, Jumping Back Velocity]
type = VelSet
trigger1 = Anim = 41 && var(1) = 2
trigger1 = Time = [0,5]
y = -8

;afterimage
[State 201, 3] 
type = Afterimage
triggerall = Time = 0
trigger1 = var(1) = 2
time = 18
PalBright = 0, 0, 0
PalContrast =  230,230,230
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 10
FrameGap = 4

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 4,4

[State 901, ChangeAnim 1]  ;Change to neutral jumping anim
type = ChangeAnim
trigger1 = Var(11) = 0
trigger1 = Time = 0
value = 41

[State 901, ChangeAnim 2]  ;Change to jumping forward anim
type = ChangeAnim
trigger1 = Var(11) = 1
trigger1 = Time = 0
value = 42

[State 901, ChangeAnim 3]  ;Change to jumping back anim
type = ChangeAnim
trigger1 = Var(11) = -1
trigger1 = Time = 0
value = 43

[State 901, Jumping Fwd Velocity]
type = VelSet
trigger1 = Anim = 42
trigger1 = Time = [0,5]
x = 2

[State 901, Jumping Back Velocity]
type = VelSet
trigger1 = Anim = 43
trigger1 = Time = [0,5]
x = -2

;-------------------------
; Rodar adelante
;-------------------------

[Statedef 1038]
type    = C
movetype = I
physics = C
anim = 1038
sprpriority = 1
ctrl = 0

;anim

[State 0, ]
type = Turn
triggerall = time = 0
trigger1 = facing =  1 && prevstateno = 100 && var(12) != 0
trigger2 = facing = -1 && prevstateno = 100 && var(12) != 1

[State 1038, ]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1038, VelAdd]
type = Veladd
trigger1 = time >= 0 && prevstateno = 100
trigger2 = time > 5
x = 1.3

;sfx

;afterimage
[State 201, 3] 
type = Afterimage
trigger1 = Time = 3
time = 20
PalColor = 200
PalBright = 0, 0, 0
PalContrast =  120,120,120
PalAdd = 0, 0, 0 
PalMul = .7,.7,.7
Length = 10
FrameGap = 4
Trans = add1

;snd

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 4, 1

;fin

[State 110, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------
; Rodar atras

[Statedef 1039]
type    = S
movetype = I
physics = S
anim = 1039
sprpriority = 1
ctrl = 0

;anim

[State 1039,noautoturn ]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1039, VelAdd]
type = VelAdd
trigger1 = time > 3 && time < 21
x = -1.3

;sfx

;afterimage
[State 201, 3] 
type = Afterimage
trigger1 = Time = 3
time = 16
PalColor = 200
PalBright = 0, 0, 0
PalContrast =  120,120,120
PalAdd = 0, 0, 0 
PalMul = .7,.7,.7
Length = 10
FrameGap = 4
Trans = add1

;snd

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 4, 1

;fin

[State 110, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------
; Esquivar
;-------------------------

[Statedef 1040]
type    = S
movetype = I
physics = S
anim = 1040
sprpriority = 1
ctrl = 0

;---
;snd
;---

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 4, 1

;---
;fin
;---

[State 110, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;AI init
;---------------------------------------------------------------------------
[Statedef 9999]
anim = 9999
ctrl = 0

[State 9999, 0]
type = Turn
trigger1 = facing != parent, facing

[State 9999, 1]
type = Varset
trigger1 = 1
var(9) = parent, var(9)

[State 9999, 2]
type = ParentVarSet
triggerall = parent, RoundState = 2
trigger1 = parent, command = "x"
trigger2 = parent, command = "y"
trigger3 = parent, command = "z"
trigger4 = parent, command = "a"
trigger5 = parent, command = "holdfwd"
trigger6 = parent, command = "holdback"
trigger7 = parent, command = "holdup"
trigger8 = parent, command = "holddown"
var(9) = 1 

[State 9999, 3]
type = ParentVarSet
triggerall = parent, RoundState = 2
trigger1 = (command = "x" && parent, command = "x")
trigger2 = (command = "y" && parent, command = "y")
trigger3 = (command = "z" && parent, command = "z")
trigger4 = (command = "a" && parent, command = "a")
trigger5 = (command = "holdfwd" && parent, command = "holdfwd")
trigger6 = (command = "holdback" && parent, command = "holdback")
trigger7 = (command = "holdup" && parent, command = "holdup")
trigger8 = (command = "holddown" && parent, command = "holddown")
var(9) = -1

[State 9999, 4]
type = varset
trigger1 = var(9) != parent, var(9)
V = 47
value = 0

[State 9999, 5]
type = VarAdd
trigger1 = var(9) = parent, var(9)
V = 47
value = 1

[State 9999, 6]
type = Destroyself
trigger1 = parent, var(9) = -1 
trigger1 = var(47) >= 23 
trigger2 = parent, var(9) = 2 
trigger2 = var(47) >= 23 
trigger3 = RoundState = 3
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

; Mode Selector, Yuri has custom attack power, defence and life when on, plus, 
; certain attacks change between modes. You can uncomment trigger 4,5 & 6 if
; you wish to disable KOF2000-2001 mode, or change this VarSet to zero if you
; wish to disable the custom mode.


[Statedef -2]

;Dream Match 2 
[State -2, 2k2]
type = VarSet
trigger1 = PalNo = 2
var(1) = 0

; Mugen Tournament [White Lily ^_^]
[State -2, WL]
type = VarSet
trigger1 = PalNo = 1
var(1) = 1

;Dream Match 1
[State -2, 98]
type = VarSet
trigger1 = PalNo = 5
var(1) = 2

;Gals Fighters
[State -2, Nest Saga 1]
type = VarSet
trigger1 = PalNo = 3
var(1) = 3

;Kyokugen Karate Do
[State -2, Nest Saga 2]
type = VarSet
trigger1 = PalNo = 6
var(1) = 4

;Capcom
[State -2, 97]
type = VarSet
trigger1 = PalNo = 4
var(1) = 5

;-----------------------------------
; si se activa el metsuki san kuh ga
; es corto al fallar (chou kuh ga)
[State -2, ]
type = VarSet
trigger1 = command = "dqcf_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 410
var(13) = 1

[State -2, ]
type = VarSet
trigger1 = command = "dqcf_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 410
var(13) = 0

;-----------------------------------
; controla la distancia y velocidad del shippu ken
 
[State -2, ]
type = VarSet
triggerall = statetype != A
triggerall = ctrl
triggerall = var(1) != 3
trigger1 = command = "shippu_x"
var(8) = 0

[State -2, ]
type = VarSet
triggerall = statetype != A
triggerall = ctrl
triggerall = var(1) != 3
trigger1 = command = "shippu_y"
var(8) = 1
;
; controla la distancia y velocidad del  raiohken

[State -2, ]
type = VarSet
triggerall = ctrl
triggerall = var(1) != 3
trigger1 = command = "raiohken_a"
trigger2 = command = "raiohken_u_a"
trigger3 = command = "raiohken_a_x"
;AI
trigger4 = var(9) = 1 && p2bodydist x < 100

var(17) = 0

[State -2, ]
type = VarSet
triggerall = ctrl
triggerall = var(1) != 3
trigger1 = command = "raiohken_b"
trigger2 = command = "raiohken_u_b"
trigger3 = command = "raiohken_a_y"
;AI
trigger4 = var(9) = 1 && p2bodydist x < 160
var(17) = 1

;-----------------------------------
; controla la velocidad del semppu kyaku
;
[State -2, ]
type = VarSet
triggerall = statetype != A && ctrl
trigger1 = command = "sempu_a_wl" && var(1) = 1
trigger2 = command = "sempu_a" && var(1) = 0
var(14) = 1

[State -2, ]
type = VarSet
triggerall = statetype != A && ctrl
trigger1 = command = "sempu_b_wl" && var(1) = 1
trigger2 = command = "sempu_b" && var(1) = 0
var(14) = 0

;-----------------------------------

;shippu ken (multiplicador)

[State -2, ]
type = VarSet
trigger1=stateno= 1400
trigger1=Time = 16
var(10)=0

[State -2, ]
type = VarSet
trigger1=stateno=1400
trigger1=Time = 42
var(10)=13

[State -2, ]
type = VarSet
trigger1=stateno=1400
trigger1=Time = 66
var(10)=23

[State -2, ]
type = VarSet
trigger1=stateno=1400
trigger1=Time = 86
var(10)=43

[State -2, ]
type = VarSet
trigger1=stateno=1400
trigger1=Time = 102
var(10)=63

[State -2, ]
type = VarSet
trigger1=stateno=1400
trigger1=Time = 112
var(10)=83

;---------------------------------
; esto desabilita la defensa aerea para los modos 2k1 y 95
[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = var(1)=0 || var(1)=2
flag = NoAirGuard 

;esto desabilita cualquier defensa para la guardia relajada (WL)
[State -2, AssertSpecial]
type = AssertSpecial
triggerall = 1
trigger1 = var(1)=1 && var(5)=2
flag  =  NostandGuard 
flag2 = NocrouchGuard 
flag3 =    NoAirGuard 

;---------------------------------

; Ventaja contra personajes fastidios, para que se dejen de pendejadas.
; Yuri no perdera contra sus AI!!

[State 0, ]
type = VarSet
trigger1 = p2name = "Evil Ken"
trigger2 = p2name = "Evil Ryu"
trigger3 = p2name = "Perfect Weapon Mb-02"
trigger4 = p2name = "Elque"
trigger5 = p2name = "Wx2"
trigger6 = p2name = "CVSEvilRyu"     
var(19) = 1

[State -2, ]
type = NotHitBy
trigger1 = random < 500 && var(19) = 1
trigger2 = p2name = "Wx2" && p2stateno = [1200,1222]
value = SCA

[State -2, ]
type = DefenceMulSet
trigger1 = random < 900 && var(19) = 1
value = .70

[State -2, ]
type = AttackMulSet
trigger1 = random < 900 && var(19) = 1
value = 1.5

[State -2, ]
type = PowerSet
trigger1 = var(19) = 1 && power < 2000
value = 2000

[State 0, ]
type = LifeAdd
trigger1 = p2name = "Wx2" && p2stateno = 3333
value = 4000

;---------------------------------
;Control de Fuerza para DM/SDM

; Hien Houoh Kyaku

[State -2, ]
type = VarSet
trigger1 = command = "houou" 
var(7) = 0

[State -2, ]
type = VarSet
trigger1 = command = "houou_d" && power >= 2000
var(7) = 1

; Metsuki Zan KuhGa

[State -2, ]
type = VarSet
trigger1 = command = "dqcf_a" || command = "dqcf_b"
var(7) = 0

[State -2, ]
type = VarSet
trigger1 = command = "dqcf_ab" && power >= 2000
var(7) = 1

;---------------------------------
; Avisos Importantes de Nuestros Patrocinadores
;---------------------------------

[State -2, 2k1 display]
type = DisplayToClipboard
trigger1 = var(1)=0
text = "Yuri Sakazaki by JorgeHCampos, KOFDM2. AI %d bdist %d fdist %d luck %d"
params = Var(9),backedgedist,frontedgedist,var(15)

[State -2, WL display]
type = DisplayToClipboard
trigger1 = var(1)=1
text = "Yuri Sakazaki by JorgeHCampos, WTLILY. AI %d bdist %d fdist %d luck %d"
params = Var(9),backedgedist,frontedgedist,var(15)

[State -2, ]
type = DisplayToClipboard
trigger1 = var(1)=2
text = "Yuri Sakazaki by JorgeHCampos, KOFDM1. AI %d bdist %d fdist %d luck %d"
params = Var(9),backedgedist,frontedgedist,var(4)

[State -2, ]
type = DisplayToClipboard
trigger1 = var(1)=3
text = "Yuri Sakazaki by JorgeHCampos, KOF'GF. AI %d bdist %d fdist %d luck %d"
params = Var(9),backedgedist,frontedgedist,var(15)

[State -2, ]
type = DisplayToClipboard
trigger1 = var(1)=4
text = "Yuri Sakazaki by JorgeHCampos, KOF'KK. AI %d bdist %d fdist %d luck %d"
params = Var(9),backedgedist,frontedgedist,var(15)

[State -2, ]
type = DisplayToClipboard
trigger1 = var(1)=5
text = "Yuri Sakazaki by JorgeHCampos, CAPCOM!. AI %d bdist %d fdist %d luck %d"
params = Var(9),backedgedist,frontedgedist,var(15)

;----------------------------------
;Activar AI por medio de un helper

[State -2, AI_Check] 
type = Helper 
trigger1 = NumHelper(9999) = 0
trigger1 = var(9) = 0
trigger1 = RoundState = 2 
name = "AI activada, ten un buen dia ^_^"
id = 9999 
pos = 1000, 1000 
stateno = 9999
helpertype = normal
keyctrl = 1 

;----------------------------------

;remover raiohken
[State 0, ]
type = RemoveExplod
trigger1 = stateno != 1660 && stateno != 1670 && stateno != 4150
ID = 1651

;remover saiha
[state 0, ]
type = removeexplod
trigger1 = stateno != 1700
ID = 1721

;remover saiha
[state 0, ]
type = removeexplod
trigger1 = stateno != 1700
ID = 1722

;camara enfoca a Yuri en winposes
[State 0, ]
type = screenbound
trigger1 = stateno = 1890
value = 1
movecamera = 1,1

;remover var(4) si no es HSDM
[State 0, ]
type = VarSet
trigger1 = prevstateno != 4020 && stateno = 4300 
var(4) = 0

; Control de distancia a bordes

[State 0, ]
type = Width
trigger1 = anim = 0 || anim = 1 || anim = 10 || anim = 11 || anim = 20 || anim = 23
edge = 15,8

; Extra daño para los haoh sho ko oh ken

[State -2, detect the projectile and the player´s movetype]
type = Varset
trigger1 = p2movetype = A
trigger1 = p2statetype = S
trigger1 = enemy,numproj = 1
var(21) = 2

[State -2, remove the variable]
type = VarAdd
trigger1 = var(10) != 0
trigger1 = (gametime%2) = 0
var(21) = -1

;Make a projectile near the ennemy if:
;- the original proj hits
;- if it detects the projectile and p2move type
;(so the enemy proj may be near his parent)
[State -2, projcounter]
type = Projectile
triggerall = var(10) != 0
trigger1 = projhit(1021) = 1
trigger2 = projhit(4200) = 1
projanim = 3003
projhitanim = -1
projedgebound = 70
projID = 3003
projpriority = 15
postype = p2
offset = 0,-70
velocity = 1
projhits = 1
projmisstime = 1
attr = S, HP
damage = 120,20
animtype = diagup
hitflag = MAFP
guardflag = MA
sparkno = S6002
guard.sparkno = S6011
sparkxy = 25,0
hitsound = S214,0
guardsound = S202,0
pausetime = 2,6
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -6,-8
air.velocity = -6,-7
fall = 1
fall.recover.time = 60

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;---------------------------------
;Sonido al aterrizar del salto
[State -3, Landing Sound]
type = PlaySnd
trigger1 = Time = 1
trigger1 = stateno = 52
value = 4, 5

;Sonido al aterrizar del dash
[State -3, Landing Sound]
type = PlaySnd
trigger1 = Time = 1
trigger1 = stateno = 106
value = 4, 7

;---------------------------------
; Voz al recibir golpes

[state -3, golpeada 1]
type = PlaySnd
triggerall = stateno = 5000
triggerall = time = 1
triggerall = random < 500
trigger1 = anim = 5000
trigger2 = anim = 5010
value = 5,1

[state -3, golpeada 2]
type = PlaySnd
triggerall = time = 1
triggerall = random < 500
trigger1 = stateno = 5090
trigger2 = stateno = 5000
trigger2 = anim = 5011
value = 5,2

[state -3, golpeada 3]
type = PlaySnd
triggerall = stateno = 5000
triggerall = time = 1
triggerall = random < 500
trigger1 = anim = 5002
trigger2 = anim = 5012
trigger3 = anim = 5001
trigger3 = stateno =! 5000
value = 5,2

[state -3, golpeada 3b]
type = PlaySnd
triggerall = time = 1
trigger1 = stateno = 5080
trigger2 = stateno = 5000
trigger2 = anim = 5001
value = 5,3

[State -3, golpeada 4]
type = PlaySnd
triggerall = stateno = 5070
trigger1=random < 700
trigger1 = time = 1
value = 5,4

[State -3, mareada]
type = PlaySnd
trigger1 = anim = 5300
trigger1 = time = 9
value = 4,2
;---------------------------------

[State -3, Pasar corriendo]
type = PlayerPush
trigger1 = stateno = 100
trigger1 = var(1) = 1
value = 0

[State -3, ]
type = PowerAdd
trigger1 = stateno=1002
trigger2 = stateno=1003
trigger3 = stateno=1004
value = -3

[State -3, ]
type = PowerAdd
trigger1 = stateno=1005
trigger1 = var(1) = 1
value = -6

;detener el kyaa! del Hi En Sou

;varset

[State 0, ]
type = VarSet
trigger1 = prevstateno = 630 ;&& time = 0
var(16) = gametime+0

[State -3, ]
type = StopSnd
trigger1 = gametime = (var(16)+25)
channel = 4

[State -3, ]
type = StopSnd
trigger1 = prevstateno=191 && roundstate = 0
channel = 4


;--------------------------------
