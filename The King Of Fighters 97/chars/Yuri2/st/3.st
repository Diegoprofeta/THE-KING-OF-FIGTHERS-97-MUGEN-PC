; Archivo ST3 para Yuri Sakazaki por Jorge H Campos
; Este archivo contiene los estados para los siguientes movimientos:
; - Oni Harite  (Intento)           (2000)
; - Oni Harite  (Atacar)            (2001)
; - Oni Harite  (golpeado)          (2002)
; - Oni Harite  (fallar)            (2003)
; - Silent Nage (intento)           (2020)
; - Silent Nage (atacar)            (2021)
; - Silent Nage (arrojado)          (2022)
; - Silent Nage (fallar)            (2023)
; - Tsubame Otoshi (arrojar)        (2031)
; - Tsubame Otoshi (arrojado)       (2032)
; - Hiaku Retsu Binta (Intento)     (2040)
; - Hiaku Retsu Binta (Atacar)      (2041)
; - Summersault (inicio)            (2050)
; - Summersault (atacar)            (2051)
; - Summersault (golpeado)          (2052)
; - Summersault (fallar)            (2053)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Comienzan codigos para Oni Harite

[Statedef 2000]
type=S
movetype=A
physics=S
juggle=0
poweradd=0
velset=0,0
ctrl=0
anim=2000

[State 2000, 1]
type=HitDef
trigger1=Time = 0
attr=S, NT
getpower=60
givepower=40
sparkno=-1
hitflag=M
priority=1, Miss
p2facing=1
p1stateno=2001
p2stateno=2002
fall=1
numhits=0

[State 0, ]
type = HitAdd
trigger1 = time > 0
value = -9999

[State 2000, 2]
type=ChangeState
Trigger1=AnimTime = 0
value=2003
ctrl=1

[Statedef 2003];no atrapar
type=S
movetype=A
physics=S
juggle=0
poweradd=0
velset=0,0
ctrl=0

[State 2000, 2]
type=ChangeState
Trigger1= Time = 0
value=0
ctrl=1

[Statedef 2001];atrapar y golpear
type=S
movetype=A
physics=N
anim=2001
velset=0,0

[State 0, ]
type = Width
trigger1 = Time >= 26
edge = 50,15

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 6,5

[State 2001, Explod]
type = Explod
trigger1 = time = 0
anim = 3000
pos = 30,-72
sprpriority = 1

[State 2001, Explod]
type = Explod
trigger1 = animelem = 5
anim = 3001
pos = 34,-88
sprpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 0;animelem = 5
value = 2,22

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 6,6

[State 2001, TargetBind]
type = TargetBind
trigger1 = time <= 25
pos = 30,-82

[State 2001, 1]
type=PlayerPush
trigger1=Time >= 0
value=0

[State 2001, 2]
type=targetLifeAdd
trigger1=AnimElem = 6
trigger1 = var(1) = 0
value=-70

[State 2001, 2]
type=targetLifeAdd
trigger1=AnimElem = 6
trigger1 = var(1) = 1
value=-125

[State 271, 17]
type=ChangeState
Trigger1=AnimTime = 0
value=0
ctrl=1

;----------------------
;Golpeado por cachetada
;----------------------

[Statedef 2002]
type=A
movetype=H
physics=N
velset=-3.5,-6 
ctrl=0

;golpeado por oni harite
[State 2002, 1]
type = ChangeAnim2
trigger1 = time = 0 && p2stateno =2001
value = 2002

;golpeado por hyaku retsu binta
[State 2002, 1]
type = ChangeAnim2
trigger1 = time = 0 && p2stateno =2041
value = 2004

[State 2002, 2]
type = SelfState
trigger1 = anim = 2041 && time > 43
trigger2 = time < 25 &&  p2stateno !=2001 && anim = 2002
value = 5000

[State 2002, 3] 
type=VelAdd
trigger1 = time > 25 && p2stateno =2001
trigger2 = time >  0  && p2stateno =2041
trigger3 = vel y != -8
y=0.5

[State 2002, 4]
type = VelSet
trigger1 = time = 25 && p2stateno =2001
trigger2 = time =  0  && p2stateno =2041;27
x = -5
y = -7

[State 2002, 5]
 
type=SelfState
trigger1=Pos Y > 1
value=5100 

;Terminan stados para Oni Harite
;---------------------------
;
;
;---------------------------
;Comienzan codigos para Silent Nage

;Intento de agarre

[Statedef 2020]
type=S
movetype=A
physics=S
juggle=0
poweradd=0
velset=0,0
ctrl=0
anim=2020

[State 2020, 3]
type=HitDef
Trigger1=Time = 0
attr=S, NT
getpower=50
givepower=40
sparkno=-1
hitflag=M-
priority=1, Miss
p2facing=1
p1stateno=2021
p2stateno=2022
fall=1

[State 2020, ]
type=ChangeState
Trigger1=AnimTime = 0
value=2023
ctrl=1

;------
;fallar
;------

[Statedef 2023]
type=S
movetype=A
physics=S
juggle=0
poweradd=0
velset=0,0
ctrl=0
anim=2020

[State 2023, ]
type=ChangeState
Trigger1=time = 0
value=0
ctrl=1

;-------
;arrojar
;-------

[Statedef 2021]
type = S
movetype = A
physics = N
anim = 2021
velset = 0,0
sprpriority = -1

;anim

[State 0, ]
type = SprPriority
trigger1 = animelem = 2
value = 2

[State 0, ]
type = VelSet
trigger1 = time = 23
x = -.5
y = -4

[State 0, ]
type = VelSet
trigger1 = time = 27
x = -2

[State 2022, gravity]
type=VelAdd
Trigger1=Time > 23
y=0.5

[State 0, ]
type = PosAdd
trigger1 = animelem = 3
x = 16

[State 0, ]
type = Width
trigger1 = Time >= 0
edge = 25,25

[State 2021, 3]
type=PlayerPush
trigger1=Time >= 0
value=0

;-------------------------------------
;arrojando enemigos de tamaño promedio

[State 2021, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
trigger1 = P2Name != "Kai Doll Yuri" 
pos = 40,0
persistent = 1

[State 2021, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
trigger1 = P2Name != "Kai Doll Yuri"  
pos = 28,0
persistent = 1

[State 2021, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
trigger1 = P2Name != "Kai Doll Yuri" 
pos = 12,0
persistent = 1

[State 2021, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
trigger1 = P2Name != "Kai Doll Yuri" 
pos = 27,-7
persistent = 1

[State 2021, TargetBind]
type = TargetBind
trigger1 = time > 24 && time < 58;time > 15 && time < 58
trigger1 = P2Name != "Kai Doll Yuri" 
pos = -25,-75
persistent = 1

;---------------------------
;Arrojando enemigos pequeños

[State 2021, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
trigger1 = P2Name = "Kai Doll Yuri" 
pos = 39,-83

[State 2021, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
trigger1 = P2Name = "Kai Doll Yuri" 
pos = 28,-84

[State 2021, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
trigger1 = P2Name = "Kai Doll Yuri" 
pos = 22,-74

[State 2021, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
trigger1 = P2Name = "Kai Doll Yuri" 
pos = -8,-79

[State 2021, TargetBind]
type = TargetBind
trigger1 = time > 15 && time < 58
trigger1 = P2Name = "Kai Doll Yuri" 
pos = -26,-70

;explod

[State 2021, Explod]
type = Explod
trigger1 = time = 2
anim = 3000
pos = 35,-72
sprpriority = 1

[State 2021, 8]
type=Explod
trigger1=Time = 0
anim=265
pos=27,-78
postype=p1
sprpriority=2
supermove=1
bindtime=1

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 3
value = 6,5

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4,3

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3,3

;fin

[State 2021, 17]
type=ChangeState
trigger1=Vel Y > 0
trigger1=Pos Y >= 1
value=2024

;--------
;terminar

[Statedef 2024]
type=S
movetype=A
physics=S
juggle=0
poweradd=0
velset=0,0
ctrl=0
anim=2024

;anim

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 9
x = -5

[State 0, ]
type = VelSet
trigger1 = time = 20
x = 0

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 6,7

;fin

[State 2024, ]
type=ChangeState
Trigger1=AnimTime = 0
value=0
ctrl=1

;-----------------------
;arrojado por silent nage (mantenido en el aire)

[Statedef 2022]
type=A
movetype=H
physics=N
velset=0,0
ctrl=0

;----
;anim

[State 2022, 1]
type = ChangeAnim2
trigger1 = time = 0
trigger1 = Name != "Kai Doll Yuri" 
value = 2022

[State 2022, 1]
type = ChangeAnim2
trigger1 = time = 0
trigger1 = Name = "Kai Doll Yuri" 
value = 2023


[State 2021, 3]
type=PlayerPush
trigger1=Time >= 0
value=0

;fin

[State 0, ]
type = ChangeState
trigger1 = p2stateno!=2021
value = 2025

;-------------
;Arrojado por Silent Nage (Ser arrojado)

[Statedef 2025]
type=A
movetype=H
physics=N
velset=0,0
ctrl=0

;anim

[State 2025, 1]
type = ChangeAnim2
trigger1 = time = 0
trigger1 = Name != "Kai Doll Yuri" 
value = 2025

[State 0, ]
type = VelSet
trigger1 = time = 1
x = 2.3
y = -8

[State 2025, gravity]
type = VelAdd
Trigger1 = time >= 1
y=0.4

;lifeadd

[State 0, ]
type = lifeadd
trigger1 = time = 0
value = -100

;fin

[State 2025, hitground]
type=SelfState
trigger1=Vel Y > 0
trigger1=Pos Y >= 1
value=5100

;---------------------------------
;Terminan codigos para silent nage
;---------------------------------
;
;---------------------------
;Comienzan codigos para Tsubame Otoshi
;---------------------------
; Intento de agarre es parte de golpe y patada fuerte saltando/vertical
; [estados 610,640],  si  falla el  agarre  continua  el  golpe  normal

[Statedef 2031];arrojar
type = S
movetype = A
physics = N
anim = 2031
velset = 0,0

[State 2031, 3]
type=PlayerPush
trigger1=Time >= 0
value=0

[State 2021, Explod]
type = Explod
trigger1 = time = 0
anim = 3000
pos = -4,-65
sprpriority = 1

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
pos = 10,-72

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
pos = 17,-63

[State 0, ]
type = TargetBind
trigger1 = animelem = 3 && time > 0
pos = 18,-37

[State 2022, gravity]
type=VelAdd
Trigger1=Time > 10
y=0.5

[State 2022, foward]
type=Velset
Trigger1=Time > 10
x=4

;---
;snd
;---

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 6,5

[State 0, ]
type = PlaySnd
trigger1 = time = 4
value = 4,3

[State 0, ]
type = PlaySnd
trigger1 = time = 4
value = 3,3

;------
;hitdef
;------

[State 2031, 4.3]
type=targetLifeAdd
trigger1=pos y >=1
value=-135

;---
;fin
;---

[State 2031, 17]
type=ChangeState
trigger1=Vel Y > 0
trigger1=Pos Y >= 1
value=2034

;---------------------------
;arrojado por tsubame otoshi
;---------------------------

[Statedef 2032]
type=A
movetype=H
physics=N
velset=0,0
ctrl=0

[State 0, ]
type = null;Turn
trigger1 = time = 0

[State 2032, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 2032

[State 2021, 3]
type=PlayerPush
trigger1=Time >= 0
value=0

[State 2022, gravity]
type=VelAdd
Trigger1=Time > 10
y=0.5

[State 2022, foward]
type=Velset
Trigger1=Time > 10
x=4

[State 2022, foward]
type=Velset
trigger1=Vel Y > 0
trigger1=Pos Y >= 3
y=4000

[State 2032, hitground]
type=SelfState
trigger1=Vel Y > 0
trigger1=Pos Y >= 1
value=5100

[Statedef 2034];terminar
type=S
movetype=A
physics=S
juggle=0
poweradd=0
velset=0,0
ctrl=0
anim=2034

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 10
x = -4
y = -8

[State 2022, gravity]
type=VelAdd
Trigger1=Time > 10
x = -0.4
y = 0.4

[State 2031, 17]
type=turn
trigger1=Vel Y > 0
trigger1=Pos Y >= 1
trigger1 = var(1) = 1

[State 2031, 17]
type=ChangeState
trigger1=Vel Y > 0
trigger1=Pos Y >= 1
value=52

;-------------------------------------------------------
;-------------------------------------------------------
; Hyaku Retsu Binta
;-------------------------------------------------------
;-------------------------------------------------------

[Statedef 2040]
type=S
movetype=A
physics=S
anim=2040
poweradd=0
velset=0
ctrl=0

;anim

[State 4040, velset ]
type = VelSet
trigger1 = time > 0
x = 7.5

;snd

[State 100, playsnd2]
type = PlaySnd
trigger1 = Time = 1
value = 4,8

[State 100, playsnd3]
type = PlaySnd
trigger1 = Timemod = 14, 0
value = 4,9

;hitdef

[State 4030, 0]
type = NotHitBy
trigger1 = Time <= 30
value = SCA
time = 1

[State 4030, 1]
type=HitDef
trigger1=Time = 4
attr=S, HT
getpower=60
givepower=40
sparkno=-1
guard.sparkno=-1
hitflag=MAF
guardflag=I
priority=6
p2facing=1
p1stateno=2041
p2stateno=2042
fall=1
numhits=0

;fin

[State 4040, 2]
type=ChangeState
Trigger1 = p2bodydist x <= 0 || movecontact && p2movetype !=I
value = 101

[State 4040, 2]
type=ChangeState
Trigger1=AnimTime = 0
value=0
ctrl=1

;---------------------------------
; Hyaku Retsu Binta, sujetar

[Statedef 2041]
type=S
movetype=A
physics=S
anim=2041
poweradd=0
velset=0
ctrl=0

;---
;snd
;---

[State 4040, 5]
type = PlaySnd
trigger1 = time =7; 3
value = s1,9
volume = 0

[State 4040, 5]
type = PlaySnd
trigger1 = time = 3
value = s2,13
volume = 120

;----------
;targetbind
;----------

[State 4040, ]
type = TargetBind
trigger1 = time >=0 && time < 106
pos = 32,0

;------
;hitdef
;------

[State 0, ]
type = Explod
trigger1 = time >= 4 && time <94 && TimeMod = 13,7
anim = F1
pos = 30, -80
random = 20,40
ontop = 1

[State 0, ]
type = TargetLifeAdd
trigger1 =  time >= 4 && time <94 && TimeMod = 13,7
value = -15
absolute = 1
kill=0

[State 0, ]
type = TargetLifeAdd
trigger1 =  time = 105
value = -57
absolute = 1

[State 0, ]
type = Explod
trigger1 = time = 106
anim = F2
pos = 40, -87
ontop = 1

;---
;fin
;---

[State 4043, 2]
type=ChangeState
Trigger1=AnimTime = 0
value=0
ctrl=1

;---------------------------------
; Golpeado por Hyaku Retsu Binta
;---------------------------------

[Statedef 2042]
type=S
movetype=H
physics=S
poweradd=0
velset=0
ctrl=0

[State 2042, c]
type = ChangeAnim2
trigger1 = time = 0
value = 2042

[State 2042, p]
type = PosSet
trigger1 = time = 0
y = 0

[State 2042, cs]
type = changeState
trigger1 = time = 106
trigger2 = p2name = "Yuri Sakazaki"
trigger2 = p2stateno = 4050
value=2002

;---------------------------------------------------------------------------
; Comienzan codigos para Summersault

[Statedef 2050]
type=S
movetype=A
physics=S
juggle=0
poweradd=0
velset=0,0
ctrl=0
anim=2000

;anim

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, ]
type = VarSet
trigger1 = time = 0 && var(20) = 0
v = 20
value = 1

[State 2000, 1]
type=HitDef
trigger1=Time = 0
attr=S, NT
getpower=60
givepower=40
sparkno=-1
hitflag=M
priority=1, Miss
p2facing=1
p1stateno=2051
p2stateno=2052
fall=1
numhits=0

[State 2000, 2]
type=ChangeState
Trigger1=AnimTime = 0
value=2003
ctrl=1

;-----------------
;atrapar y golpear
[Statedef 2051]
type=S
movetype=A
physics=N
anim=2051
velset=0,0

;anim

[State 2001, 1]
type=PlayerPush
trigger1=Time >= 0
value=0

[State 0, ]
type = PosSet
trigger1 = animelem = 2
y = -25

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = -3
y = -4.5

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 4
statetype = A
movetype = A
physics = A

[State 0, ]
type = Width
trigger1 = Time >= 26
edge = 50,15

;explod

[State 2001, Explod]
type = Explod
trigger1 = time = 0
anim = 3000
pos = 38,-47
sprpriority = 1

[State 2001, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3001
pos = 62,-35
sprpriority = 1

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 6,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 2,23

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 4,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 1,3

;bind

[State 2001, TargetBind]
type = TargetBind
trigger1 = animelem = 1
pos = 50,0

[State 2001, TargetBind]
type = TargetBind
trigger1 = animelem = 2
pos = 50,25

;hitdef

[State 2001, 2]
type=targetLifeAdd
trigger1=AnimElem = 3
value=-77 - (38 * var(20))

;fin

[State 271, 17]
type=ChangeState
Trigger1=AnimTime = 0
value=50
ctrl=1

;----------------------
;Golpeado por summersault
;----------------------

[Statedef 2052]
type=A
movetype=H
physics=N
velset=0,0
ctrl=0

[State 2002, 1]
type = ChangeAnim2
trigger1 = time = 0 && p2stateno =2051
value = 2052

[State 0, ]
type = ChangeAnim
trigger1 = time = 30
trigger1 = selfanimexist(5062)
value = 5062

[State 2002, 2]
type = SelfState
trigger1 = anim = 2041 && time > 43
trigger2 = time < 25 &&  p2stateno !=2051
value = 5000

[State 2002, 4]
type = VelSet
trigger1 = time = 30 && p2stateno =2051
x = -1.2
y = -9

[State 2002, 3] 
type=VelAdd
trigger1 = time > 30
y=0.4

[State 2002, 5]
type=SelfState
trigger1=Pos Y > 1
value=5100 

;Terminan stados para Summersault
;---------------------------
