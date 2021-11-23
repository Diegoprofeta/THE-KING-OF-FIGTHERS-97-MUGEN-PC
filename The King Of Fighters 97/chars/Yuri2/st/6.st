; Archivo ST6 para Yuri Sakazaki por Jorge H Campos
; Este archivo contiene los estados para los siguientes movimientos:
; - Metsuki Zan Kuh Ga  inicio                (4000)
; - Metsuki Zan Kuh Ga  fallar                (4010)
; - Metsuki Zan Kuh Ga  entrar                (4020)
; - Golpeado por metsuki zan kuh ga           (4025)
; - Chou Tsubame Mai (intento)                (4040)
; - Chou Tsubame Mai (atacar)                 (4041)
; - Chou Tsubame Mai (atacado)                (4042)
; - Chou Tsubame Mai (festejo)                (4051)
; - Hi En Hou Ou Kyaku (intento)              (4100)
; - Hi En Hou Ou Kyaku (atacar)               (4110)
; - Hi En Hou Ou Kyaku (terminar)             (4120)
; - Hi En Hou Ou Kyaku (golpeado por -1)      (4112)
; - Hi En Hou Ou Kyaku (golpeado por -2)      (4113)
; - Hi En Hou Ou Kyaku (fallar -1)            (4130)
; - Hi En Hou Ou Kyaku (fallar -2)            (4140)
; - Hi En Hou Ou Kyaku (remate SDM)           (4150)
; - Hi En Hou Ou Kyaku (festejo)              (4160)
; - Haoh Shi' Ko Oh Ken                       (4200)
; - Yuri no Tai Kyoku Gen (ataque)            (4300)
; - Yuri no Tai Kyoku Gen (festejo)           (4310)                  

;-----------------------------------------------------------------------------
;Metsuki Zan Kuh Ga

[Statedef 4000]
type=S
movetype=A
physics=S
anim=4000
poweradd=0
velset=0
ctrl=0

; anim

[State 0, ]
type = NotHitBy
trigger1 = time < 37
value = SCA

; Ambiente para DM

[State 4000,SuperPause]
type = SuperPause
trigger1 = Time = 3
trigger1 = var(7) = 0
time = 26
movetime = 26
anim = -1
sound = S6, 0
darken = 0
poweradd = -1000
unhittable = 1

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,26]
trigger1 = var(7) = 0
flag = NoFG

[State 4000,EnvColor]
type = EnvColor
trigger1 = Time = 0
trigger1 = var(7) = 0
value = 240,240,240
time = 4
under = 1

[State 4000,EnvColor]
type = EnvColor
trigger1 = Time = 4
trigger1 = var(7) = 0
value = 0, 0, 0
time = 27
under = 1

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = var(7) = 0
trigger1 = Time = [2,20]
flag = NoFG

;Ambiente para SDM

[State 4000,SuperPause]
type = SuperPause
trigger1 = Time = 3
trigger1 = var(7) = 1
time = 26
movetime = 26
anim = -1
sound = S6, 0
darken = 0
poweradd = -2000
unhittable = 1

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = var(7) = 1
trigger1 = Time = [2,26]
flag = NoFG

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,20]
trigger1 = var(7) = 1
flag = NoFG

[State 4040, Brillo]
type = PalFX
trigger1 = time = 2
trigger1 = var(7) = 1
time = 1
add = 200,152,32
ignorehitpause = 1

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
trigger1 = var(7) = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 2
trigger1 = var(7) = 1
value = 6,10

;ambiente, ambos

[State 4000,EnvColor]
type = EnvColor
trigger1 = Time = 0
trigger1 = var(7) = 1
value = 240,240,240
time = 4
under = 1

[State 4000,EnvColor]
type = EnvColor
trigger1 = Time = 4
trigger1 = var(7) = 1
value = 0, 0, 0
time = 27
under = 1

[State 0, ];adelante
type = Explod
trigger1 = time = 11
anim = 3005
pos = -6,-42
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = 5

[State 0, ];atras
type = Explod
trigger1 = time = 7
anim = 3006
pos = -9,-53
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = -3

;sfx

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 50
trans = add1
timegap = 1
framegap = 2
length = 8

;snd

[State -0, ]
type=PlaySnd
trigger1=Time = 0
value=2,6

;hitdef

;DM
[State 1300, 3]
type=HitDef
trigger1 = time = 0
trigger1 = var(7) = 0
hitflag=M
attr=S, HA
animtype=Hard
damage=80,5
guardflag=M
pausetime=18,18
guard.pausetime=24,80
sparkno=0
sparkxy=0,-72
hitsound=S1,6
guardsound=S1,0
priority=6
ground.type=low
ground.slidetime=0
ground.hittime=60
ground.velocity=0,0
air.velocity=-5,-3
p1stateno=4020
p2stateno=4025
poweradd = 0
givepower = 0 
getpower = 0
mindist = 32
maxdist = 40
envshake.time = 20
envshake.freq = 30
envshake.ampl = 6
envshake.phase = 80

;SDM
[State 1300, 3]
type=HitDef
trigger1 = time = 0
trigger1 = var(7) = 1
hitflag=M
attr=S, HA
animtype=Hard
damage=120,12
guardflag=M
pausetime=22,22
guard.pausetime=24,80
priority=7
sparkno=0
sparkxy=0,-72
hitsound=S1,6
guardsound=S1,0
ground.type=low
ground.slidetime=0
ground.hittime=60
ground.velocity=0,0
air.velocity=-5,-3
p1stateno=4020
p2stateno=4025
poweradd = 0
givepower = 0 
getpower = 0
mindist = 32
maxdist = 40
envshake.time = 20
envshake.freq = 30
envshake.ampl = 6
envshake.phase = 80

[State 0, ]
type = ChangeState
trigger1 = movecontact
value = 4020
ctrl = 1

[State 1300, 4]
type=ChangeState
trigger1=AnimTime = 0
value=4010
ctrl=1

;---------------------------------
; Enemigo golpeado por metsuki zan kuh ga (1)
;---------------------------------

[Statedef 4025]
type=S
movetype=H
physics=S
poweradd=0
velset=0.01,0
ctrl=0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4025

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1302, 4]
type = SelfState
trigger1 = animtime = 0
value=5000

;----------------------------------
;fallar metsuki kuh ga, cambiar a choh kuh ga
;----------------------------------

[Statedef 4010]
type=A
movetype=A
physics=A
anim=4010
poweradd=0
velset=0.01,0
ctrl=0
hitcountpersist = 1

;Ambiente para SDM

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = var(7) = 1
trigger1 = 1
flag = NoFG

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
trigger1 = var(7) = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;anim

;alto(b)
[State 1310, 2]
type=Veladd
trigger1=AnimElem= 1
trigger1=var(13)=0
x=3.5

[State 1310, 3]
type=Veladd
trigger1=AnimElem= 1
trigger1=var(13)=0
y=-8

;bajo(a)
[State 1310, 2]
type=Veladd
trigger1=AnimElem= 1
trigger1=var(13)=1
x=2

[State 1310, 3]
type=Veladd
trigger1=AnimElem= 1
trigger1=var(13)=1
y=-6

;avanzar levemente adelante
[State 0, ]
type = Velset
trigger1 = time = 22
x = 0.4

[State 0, ]
type = Veladd
trigger1 = time > 23
x = 0.1

;sfx

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 35;50
trans = add1
timegap = 1
framegap = 2
length = 8

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 6,9

[State 1310, 1]
type=PlaySnd
trigger1=Time = 7
value=2,7

;hitdef

; DM
[State 1310, 5]
type=HitDef
trigger1 = time = 1 || time = 4 || time = 8
trigger1 = var(7) = 0
hitflag=AF
attr=A, HA
animtype=Hard
damage=50,9
guardflag=M
pausetime=6,6
sparkno=0
priority=6
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-6.5
air.velocity=-1,-7
fall = 1
poweradd = 0
givepower = 60 
getpower = 0

; SDM
[State 1310, 5]
type=HitDef
trigger1 = time = 1 || time = 4 || time = 8
trigger1 = var(7) = 1
hitflag=AF
attr=A, HA
animtype=Hard
damage=64,12
guardflag=M
pausetime=7,7
priority=7
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-6.5
air.velocity=-1,-7
fall = 1
poweradd = 0
givepower = 60 
getpower = 0

;fin

[State 1310, 7]
type=ChangeState
trigger1=time > 35	
trigger1=pos y < 0
value=1320

;-----------------------------------
;golpear (inicio)
;-----------------------------------

[Statedef 4020]
type=S
movetype=A
physics=S
anim=4020
poweradd=0
velset=0
ctrl=0
hitcountpersist = 1

;Ambiente para SDM

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = var(7) = 1
trigger1 = 1
flag = NoFG

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
trigger1 = var(7) = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;sfx

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 50
trans = add1
timegap = 1
framegap = 2
length = 8

;hitdef

; DM
[State 4020, hitdef]
type=HitDef
trigger1 = time = 0
trigger1 = var(7) = 0
hitflag=MAF
attr=S, HA
animtype=Hard
damage=90,5
guardflag=MAF
priority=6
pausetime=18,18
sparkno=0
sparkxy=0,-72
hitsound=S1,7
guardsound=S1,0
ground.type=high
ground.slidetime=13
ground.hittime=18
ground.velocity=0,0
air.velocity=-.03,-3
poweradd = 0
givepower = 60 
getpower = 0
mindist = 32
maxdist = 60
envshake.time = 20
envshake.freq = 30
envshake.ampl = 6
envshake.phase = 80

; SDM
[State 4020, hitdef]
type=HitDef
trigger1 = time = 0
trigger1 = var(7) = 1
hitflag=MAF
attr=S, HA
animtype=Hard
damage=170,10
guardflag=MAF
pausetime=21,21
sparkno=0
sparkxy=0,-72
priority=7
hitsound=S1,7
guardsound=S1,0
ground.type=high
ground.slidetime=13
ground.hittime=18
ground.velocity=0,0
air.velocity=-.03,-3
poweradd = 0
givepower = 60 
getpower = 0
mindist = 32
maxdist = 60
envshake.time = 20
envshake.freq = 30
envshake.ampl = 6
envshake.phase = 80

;fin

[State 1300, 4]
type=ChangeState
trigger1=AnimTime = 0
value=4030
ctrl=1

;----------------------------------
;metsuki san kuh ga, remate
;----------------------------------

[Statedef 4030]
type=A
movetype=A
physics=A
anim=4030
poweradd=0
velset=0.01,0
ctrl=0
hitcountpersist = 1

;anim

[State 4030, 2]
type=Veladd
trigger1=AnimElem= 1
x=3.5

[State 4030, 3]
type=Veladd
trigger1=AnimElem= 1
y=-8

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = 0.2

;Ambiente para SDM

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = var(7) = 1
trigger1 = 1
flag = NoFG

[State 4040, Brillo]
type = PalFX
trigger1 = time = 2
trigger1 = var(7) = 1
time = 1
add = 200,152,32
ignorehitpause = 1

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
trigger1 = var(7) = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;---
;sfx
;---

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 50
trans = add1
timegap = 1
framegap = 2
length = 8

;snd

[State 4030, snd1]
type = PlaySnd
trigger1 = time = 0
value = 6,9

[State 4030, snd2]
type=PlaySnd
trigger1=Time = 7
value=2,7

;hitdef

; DM
[State 4030, hitdef]
type=HitDef
trigger1 = time = 0 || time=4 && uniqhitcount < 3 
trigger1 = var(7) = 0
hitflag=MAF 
attr=A, HA
animtype=Hard
damage=140,15
guardflag=MA
pausetime=18,18
guard.pausetime=11,11
sparkno=0
sparkxy=0,-72
priority=6
hitsound=S1,8
guardsound=S1,0
ground.type=trip
ground.slidetime=13
ground.hittime=18
ground.velocity=-3,-9
air.velocity=-3,-6
fall = 1
poweradd = 0
givepower = 60 
getpower = 0
envshake.time = 20
envshake.freq = 30
envshake.ampl = 6
envshake.phase = 80

; SDM
[State 4030, hitdef]
type=HitDef
trigger1 = time = 0 || time=4
trigger1 = var(7) = 1
hitflag=MA
attr=A, HA
animtype=Hard
damage=185,20
guardflag=MA
pausetime=21,21
guard.pausetime=14,14
priority=7
sparkno=0
sparkxy=0,-72
hitsound=S1,8
guardsound=S1,0
ground.type=trip
ground.slidetime=13
ground.hittime=18
ground.velocity=-3,-9
air.velocity=-3,-6
fall = 1
poweradd = 0
givepower = 60 
getpower = 0
envshake.time = 20
envshake.freq = 30
envshake.ampl = 6
envshake.phase = 80

[State 1310, 7]
type=ChangeState
trigger1=time > 35	
trigger1=pos y < 0
value=1320

;-------------------------------------------------------
;-------------------------------------------------------
; Yuri Chou Tsubame Mai
;-------------------------------------------------------
;-------------------------------------------------------

[Statedef 4040]
type=S
movetype=A
physics=S
anim=4040
poweradd=0
velset=0
ctrl=0

;anim

[State 4040, velset ]
type = VelSet
trigger1 = time > 27
x = 7.5

[State 4040, velset ]
type = VelSet
trigger1 = time > 54
x = 2

;Ambiente

[State 4000,SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 26
movetime = 26
anim = -1
sound = S6, 0
darken = 0
poweradd = -2000 - (var(1) * 1000)
unhittable = 1

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,26]
flag = NoFG

[State 4000,EnvColor]
type = EnvColor
trigger1 = Time = 0
value = 240,240,240
time = 4
under = 1

[State 4000,EnvColor]
type = EnvColor
trigger1 = Time = 4
value = 0, 0, 0
time = 10
under = 1

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,20]
flag = NoFG

[State 0, ];adelante
type = Explod
trigger1 = time = 4
anim = 3005
pos = 9,-80
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = 5

[State 0, ];atras
type = Explod
trigger1 = time = 0
anim = 3006
pos = 9,-80
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = -3

[State 4040, Brillo]
type = PalFX
trigger1 = time = 2
time = 1
add = 200,152,32
ignorehitpause = 1

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;afterimage

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 50
trans = add1
timegap = 1
framegap = 2
length = 8

;snd

[State 100, playsnd3]
type = PlaySnd
trigger1 = time = 2
value = 6,10

[State 100, playsnd2]
type = PlaySnd
trigger1 = Time = 27
value = 4,8

[State 100, playsnd3]
type = PlaySnd
trigger1 = ((time > 27)&&(Timemod = 14, 0))
value = 4,9

[State 0, ]
type = PlaySnd
trigger1 = time = 20
value = 2,15

;hitdef

[State 4030, 0]
type = NotHitBy
trigger1 = Time <= 30
value = SCA
time = 1

[State 4030, 1]
type=HitDef
trigger1=Time = 4
priority=7
attr=S, HT
getpower=60
givepower=40
sparkno=-1
hitflag=M
priority=1, Miss
p2facing=1
p1stateno=4041
p2stateno=4042
fall=1
fall.recover = 0
numhits=0

;fin

[State 4040, 2]
type=ChangeState
Trigger1=AnimTime = 0
value=0
ctrl=1

;---------------------------------
; Chou Tsubame Mai, sujetar
;---------------------------------

[Statedef 4041]
type=S
movetype=A
physics=S
anim=4041
poweradd=0
velset=0
ctrl=0

[State 4041, varrandom]
type = VarRandom
trigger1 = time = 0
v = 15
range = 1,10

;sfx

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

[State 4040, 5]
type = EnvColor
trigger1 = time >10
value=0,0,0
time = 1

;snd

[State 4040, 5]
type = PlaySnd
trigger1 = time >= 3
trigger1 = TimeMod = 3, 2
trigger1 = time <= 50
value = s1,2
volume = 255

;targetbind

[State 4040, ]
type = TargetBind
trigger1 = time >=0
pos = 20,0

;hitdef

[State 0, ]
type = Explod
trigger1 = ((time >= 4) && (TimeMod = 3,0))
anim = F2
pos = 30, -50
random = 20,50
ontop = 1

[State 0, ]
type = HitAdd
trigger1 = ((time >= 3) && (TimeMod = 3,2) && (hitcount !=12))
value = 1

[State 0, ]
type = EnvShake
trigger1 = time = 10
time = 20
freq = 60
ampl = -4
ignorehitpause = 0
persistent = 1

;daño tipico
[State 4040, ]
type = null;targetLifeAdd
trigger1 = time = 40
trigger1 = var(15) = 10
value = -680
absolute = 1

;daño mayor
[State 4040, ]
type = null;targetLifeAdd
trigger1 = time = 40
trigger1 = var(15) = [7,9]
value = -550
absolute = 1

;daño critico
[State 4040, ]
type = targetLifeAdd
trigger1 = time = 40
;trigger1 = var(15) < 7
value = -300 - (var(15) * 50);-440
absolute = 0;1

;---
;fin
;---

[State 4043, 2]
type=ChangeState
Trigger1=AnimTime = 0
value=4051
ctrl=1

;---------------------------------
; Golpeado por Chou Tsubame Mai (1)
;---------------------------------

[Statedef 4042]
type=S
movetype=H
physics=S
poweradd=0
velset=0
ctrl=0

[State 4042, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4042

[State 4041, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 4042, 4]
type = changeState
trigger1 = animtime = 0
trigger2 = p2name = "Yuri Sakazaki"
trigger2 = p2stateno = 4050
value=4043

;---------------------------------
; Golpeado por Chou Tsubame Mai (2)
;---------------------------------

[Statedef 4043]
type=L
movetype=I
physics=S
poweradd=0
velset=0
ctrl=0

[State 4043, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4043

[State 4043, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 4043, ]
type = Posadd
trigger1 = time = 0
x = -70

[State 4043, 4]
type = SelfState
trigger1 = alive = 0
value=5150

[State 4043, 4]
type = SelfState
trigger1 = alive = 1
trigger1 = p2stateno != 4051 && enemy, anim != 4052
trigger1 = animtime = 0
value=5120

;---------
; winpose

[Statedef 4051]
type = S
ctrl = 0
velset = 0,0

;anim

;daño critico
[State 0, ]
type = ChangeAnim
trigger1 = time = 0 && var(15) <7
value = 4053

;daño mayor
[State 0, ]
type = ChangeAnim
trigger1 = time = 0 && var(15) >=7
value = 4052

;daño tipico
[State 0, ]
type = null;ChangeAnim
trigger1 = ((time = 0) && (var(15) <7))
value = 4051

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;FX

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 0 && anim = 4053
value = 7,13

[State 0, ]
type = PlaySnd
trigger1 = time = 0 && anim = 4052
value = 7,19

;fin

[State 4043, 2]
type=ChangeState
Trigger1=animtime = 0
value=0
ctrl=1

;-------------------------------------------------------
; Hi En Hou Ou Kyaku

;---------
;intento

[Statedef 4100]
type=S
movetype=A
physics=S
anim=4100
poweradd=0
velset=0
ctrl=0

;anim

[State 4100, velset ]
type = VelSet
trigger1 = time > 6
x = 6

[State 0, ]
type = velset
trigger1 = time > 36 
x = 2

;Ambiente para DM

[State 4100,SuperPause]
type = SuperPause
trigger1 = Time = 0 && var(7) = 0
time = 12
movetime = 4
anim = -1
sound = S6, 0
darken = 1
poweradd = -1000
unhittable = 1

[State 4100,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,26]
flag = NoFG

[State 4100,EnvColor]
type = EnvColor
trigger1 = Time = 0
value = 240,240,240
time = 4
under = 1

[State 4100,EnvColor]
type = EnvColor
trigger1 = Time = 4
value = 0, 0, 0
time = 9
under = 1

[State 4100,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,20]
flag = NoFG

[State 4100, adelante]
type = Explod
trigger1 = time = 2
anim = 3005
pos = 23,-63
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = 5

[State 4100, atras]
type = Explod
trigger1 = time = 0
anim = 3006
pos = 23,-63
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = -3

;Ambiente para SDM

[State 4000,SuperPause]
type = SuperPause
trigger1 = Time = 3
trigger1 = var(7) = 1
time = 26
movetime = 26
anim = -1
sound = S6, 0
darken = 0
poweradd = -2000
unhittable = 1

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = var(7) = 1
trigger1 = Time = [2,26]
flag = NoFG

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,20]
trigger1 = var(7) = 1
flag = NoFG

[State 4040, Brillo]
type = PalFX
trigger1 = time = 2
trigger1 = var(7) = 1
time = 1
add = 200,152,32
ignorehitpause = 1

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
trigger1 = var(7) = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 2
trigger1 = var(7) = 1
value = 6,10

;sfx

[State 4100, ]
type = AfterImage
trigger1 = time = 0
time = 50
trans = add1
timegap = 1
framegap = 2
length = 8

;snd

[State -0, ]
type=PlaySnd
trigger1=Time = 0
value=2,10

[State -0, ]
type=PlaySnd
trigger1=Time = 2
value=4,12

;hitdef

[State 4030, 1]
type=HitDef
trigger1=Time = 0
attr=S, HT
getpower=60
givepower=40
pausetime = 0,0
sparkno=-1
priority=6
hitflag=MAF
guardflag=M
priority=1, Miss
p2facing=1
p1stateno=4110
p2stateno=4112
fall=1
fall.recovery
numhits=0

;fin

[State 0, ]
type = ChangeState
trigger1 = movecontact
value = 4130

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------
; Hi En Houou Kyaku (atacar)

[Statedef 4110]
type=S
movetype=A
physics=S
anim=4110
poweradd=0
ctrl=0

;anim

[State 0, ]
type = EnvShake
trigger1 = time = 10
time = 20
freq = 60
ampl = -4
ignorehitpause = 0
persistent = 1

[State 0, ]
type = Width
trigger1 = 1
edge = 70,0

[State 0, ]
type = EnvColor
trigger1 = timemod=12,0
value = 255,255,255
time = 3
under = 1
ignorehitpause = 0

[State 0, ]
type = PosAdd
trigger1 = time >= 27
trigger1 = TimeMod = 4,0
y = -1

[State 0, ]
type = PosAdd
trigger1 = animelem=38
y = -15

;explod

[State 0, ]
type = Explod
trigger1 = time >= 10
trigger1 = TimeMod = 3,0
anim = F2
pos = 63, -44
random = 20,50
ontop = 1

;SDM FX

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
trigger1 = var(7) = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;targetbind 

[State 4040, ]
type = TargetBind
trigger1 = time = 0
pos = 63,0

[State 0, ]
type = VelSet
trigger1 = 1
x = .25 + (var(7) / 2)

;snd

[State 4040, 5]
type = PlaySnd
trigger1 = time >= 10
trigger1 = TimeMod = 8,2
trigger1 = time <= 50
value = s1,2
volume = 0

[State 4040, 5]
type = PlaySnd
trigger1 = time >= 50
trigger1 = TimeMod = 8,2
value = s1,3
volume = 0

;hitdef

[State 0, ]
type = HitAdd
trigger1 = TimeMod = 10,2
trigger2 = time = 0 && var(7) = 1
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = TimeMod = 11, 0
value = -27 - (var(7) * 7)

;fin

[State 4043, 2]
type=ChangeState
Trigger1=AnimTime = 0
value=4120
ctrl=1

;---------------------------------
; Hi En Houou Kyaku (terminar)
;---------------------------------

[Statedef 4120]
type=A
movetype=I
physics=A
anim=4120
poweradd=0
velset=0
ctrl=0

;anim

[State 0, ]
type = VelSet
trigger1 = time = 0 && var(7) = 0
x = -3
y = -9

[State 0, ]
type = VelSet
trigger1 = time = 0 && var(7) = 1
x =  0
y = -9

[State 0, ]
type = TargetState
trigger1 = time = 0
value = 4113

;fx

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
trigger1 = var(7) = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;hitdef

[State -2, projcounter]
type = Projectile
trigger1 = time = 0 && var(1) = 1
projanim = 3003
projhitanim = -1
projID = 3003
projpriority = 15
postype = p2
offset = 0,-70
velocity = 1
projhits = 1
projmisstime = 1
attr = S, HP
damage = 0,0
animtype = diagup
hitflag = MAFP
guardflag = -1
sparkno = -1
guard.sparkno = -1
sparkxy = 25,0
hitsound = -1
guardsound = -1
pausetime = 0,0
ground.hittime = 0
ground.type = high
ground.slidetime = 0
ground.velocity = 0,0
air.velocity = 0,-7
snap = 0,0
fall = 1
fall.recover= 0

;fin

[State 0, ]
type = Changestate
trigger1 = time = 30 && var(7) = 1
value = 4150

[State 0, ]
type = Changestate
trigger1 = animtime = 0
value = 50

;---------------------------------
; Golpeado por Hi En Hou Ou Kyaku (1)
;---------------------------------

[Statedef 4112]
type=S
movetype=H
physics=N
poweradd=0
velset=0.01,0
ctrl=0

;anim

[State 4042, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4112

[State 4041, ]
type = PosSet
trigger1 = 1
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
x = -.25 - (var(7) / 2)

;Hitdef

[State 0, ]
type = LifeAdd
trigger1 = ((p2movetype = H) && (time > 10))
value = -200

;fin

[State 4042, 4]
type = changeState
trigger1 = ((p2name = "Yuri Sakazaki") && ((p2stateno = 4120) || (p2movetype = H)))
value=4113

;---------------------------------
;  Golpeado por HI En Hou Ou Kyaku (2)
;---------------------------------

[Statedef 4113]
type=S
movetype=H
physics=N
poweradd=0
velset=0.01,0
ctrl=0

;anim

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = selfanimexist(5062)
value = 5062

[State 4043, 4]
type = VelSet
trigger1 = time = 0
x = -4 + (enemy, var(7) * 4)
y = -6 - (enemy, var(7) * 4)

;fin

[State 1302, 4]
type = SelfState
trigger1 = 1
value=5050

;------------------------------------------------------
;Fallar Hi En Hou Ou Kyaku (1)
;------------------------------------------------------

[Statedef 4130]
type=S
movetype=A
physics=S
anim=4130
poweradd=0
velset=0
ctrl=0

;hitdef

[State 4030, 1]
type=HitDef
trigger1=animelem = 2
attr=S, HA
damage=0,0
getpower=0
givepower=0
sparkno= 2
guard.sparkno=2
guard.pausetime=8,16
guardsound=S1,0
sparkxy=0,-45
hitflag=MA
guardflag=M
priority=5
p2facing=1
fall=0
numhits=0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 4140

;------------------------------------------------------
;Fallar Hi En Hou Ou Kyaku (2)
;------------------------------------------------------

[Statedef 4140]
type=A
movetype=A
physics=A
anim=4140
poweradd=0
velset=0
ctrl=0

;anim

[State 0, ]
type = VelSet
trigger1 = time = 0
y = -1.5;-4

[State 0, ]
type = VelSet
trigger1 = time = 7
x = -3
y = -9

;hitdef

[State 4140, 1]
type=HitDef
trigger1=time = 0
attr=A, HA
damage=0,0
getpower=0
givepower=0
sparkno= 2
guard.sparkno=2
guard.pausetime=12,36
guardsound=S1,0
sparkxy=0,-45
hitflag=MA
guardflag=M
priority=5
p2facing=1
fall=0
numhits=0

;fin

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------
;remate de Hi En Houou Kyaku

[Statedef 4150]
type=A
movetype=A
physics=A
anim=1660
poweradd=125
velset=0,0
ctrl=0
hitcountpersist = 1

;fx

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
trigger1 = var(7) = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;snd

[State -0, ]
type = PlaySnd
trigger1 = Time = 0
value = 4,4

[State 0, ]
type = PlaySnd
trigger1 = animtime = 4
value = 2,11

[State 0, ]
type = PlaySnd
trigger1 = animtime = 4
value = 6,11

; explod

[State 1004, 4]
type = explod
trigger1 = animelem = 2
anim = 1006
pos = -9, -105
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 2
removeongethit = 1

[State 1004, 4]
type = explod
trigger1 = animelem = 3
anim = 1006
pos = 9, -110
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 3
removeongethit = 1

;hitdef

[State 0, ]
type = Explod
trigger1 = animelem = 4
anim = 1651
ID = 1651
pos = 47,-31
postype = p1
bindtime = -1
removetime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 67,5
hitflag=MAF
guardflag = -1
priority = 4
pausetime = 2,14
sparkno = 1
sparkxy = 0,-55
hitsound   = s1,3
guardsound = s1,0
animtype = diagup
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0,18
air.velocity = 0,18
poweradd = 125
givepower = 20 
fall = 1
fall.damage = 33
fall.recovertime = 60
fall.yvelocity = -7

;fin

[State 1310, 7]
type = ChangeState
trigger1 = time = 24
value = 4160

;---------
; winpose

[Statedef 4160]
type = S
ctrl = 0
velset = 0,0
anim = 4160



[State 0, ]
type = Posadd
trigger1 = time = 0
x = -35
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 0
persistent = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;FX

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;snd

[State 0, ]
type = null;= PlaySnd
trigger1 = time = 0 && anim = 4053
value = 7,13

;fin

[State 4043, 2]
type=ChangeState
Trigger1=animtime = 0
value=0
ctrl=1

;:--------------------------------------
;Haoh Shi' Ko Oh Ken
;:--------------------------------------

[Statedef 4200]
type=S
movetype=A
physics=S
anim=4201
poweradd=0
velset=0
ctrl=0

;anim

[State 0, ]
type = Width
trigger1 = time=0
edge = 10,30

;Ambiente

[State 4000,SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 25
movetime = 25
anim = -1
sound = S6, 0
darken = 0
poweradd = ifelse(var(1)=1,-3000,-2000)
unhittable = 1

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,26]
flag = NoFG

[State 4000,EnvColor]
type = EnvColor
trigger1 = Time = 0
value = 240,240,240
time = 4
under = 1

[State 4000,EnvColor]
type = EnvColor
trigger1 = Time = 4
value = 0, 0, 0
time = 25
under = 1

[State 4000,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,20]
flag = NoFG

[State 0, ];adelante
type = Explod
trigger1 = time = 16
anim = 3005
pos = -12,-67
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = 5

[State 0, ];atras
type = Explod
trigger1 = time = 12
anim = 3006
pos = -12,-67
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = -3

[State 4040, Brillo]
type = PalFX
trigger1 = time = 2
time = 1
add = 200,152,32
ignorehitpause = 1

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1
invertall = 1
time = 1
mul = 255,255,255
ignorehitpause = 1

;explod

[State 1004, 4]
type = explod
trigger1 = animelem = 7
anim = 1006
pos = -45, -61
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 9
removeongethit = 1
supermovetime = 1

[State 1004, 4]
type = explod
trigger1 = animelem = 8
anim = 1006
pos = -34, -65
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 5
removeongethit = 1
supermovetime = 1

[State 1004, 4]
type = explod
trigger1 = animelem = 9
anim = 1006
pos = -15, -63
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 6
removeongethit = 1
supermovetime = 1

;snd

[State 1005, 1]
type=PlaySnd
trigger1=AnimElem = 9
value=6,4

[State 1005, 2]
type=PlaySnd
trigger1=time=0
value=2,12

;projectile

[State 1005, 2]
type = Projectile
trigger1 = AnimElem = 10
ProjID = 4200
projanim = 4200
projhitanim=-1
projremanim=-1
projpriority = 15
projremove=0
projhits = 5
projmisstime = 1
offset=40,-58
velocity=12, 0
remvelocity=2, 0
accel=0, 0
attr=S, SP
animtype=diagup
damage=97,12
hitflag=MAPFL
guardflag=M
pausetime=1,6
hitsound=S1,5
guardsound=S1,0
sparkno=3
ground.type=high
ground.slidetime=8
ground.hittime=15
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3,-9
guard.velocity=-6
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
poweradd = 0
givepower = 20 
air.juggle = 3
fall=1
fall.recover = 0

;fin

[State 4200, finalizar]
type=ChangeState
trigger1=AnimTime = 0
value=0
ctrl=1

;:--------------------------------------
;Yuri no Tai Kyoku Ken
;:--------------------------------------

[Statedef 4300]
type=S
movetype=A
physics=S
anim=4300
poweradd=0
velset=0
ctrl=0

[State 0, ]
type = ReversalDef
trigger1 = time < 37
reversal.attr = SCA
pausetime = 0,10
p1stateno = 4300

[State 0, ]
type = VarSet
trigger1 = prevstateno = 4020
v =  4
value = 1

[State 4300, varrandom]
type = VarRandom
trigger1 = time = 0
v = 15
range = 1,10

[State 0, ]
type = VarAdd
trigger1 = prevstateno = 4300 && time = 0
v = 15
value = 7

[State 0, ]
type = VarAdd
trigger1 = prevstateno = 4020 && time = 0
v = 15
value = 7

[State 0, ]
type = ChangeAnim
trigger1 = prevstateno = 4300
value = 4300
elem = 7

[State 4300,SuperPause]
type = SuperPause
trigger1 = Time = 3 && var(4) = 0
time = 26
movetime = 26
anim = -1
sound = S6, 0
darken = 0
poweradd = -1000
unhittable = 1

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1 && var(4) = 1
invertall = 0
time = 1
mul = 255,125,125
ignorehitpause = 1

[State 4300,SuperPause]
type = SuperPause
trigger1 = Time = 1 && var(4) = 1
time = 46
movetime = 27
anim = -1
sound = S6, 0
darken = 0
poweradd = -2000
unhittable = 1

[State 4300,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,26]
flag = NoFG

[State 4300,EnvColor]
type = EnvColor
trigger1 = Time = 4
value = 240,240,240
time = 10
under = 1

[State 4300,EnvColor]
type = EnvColor
trigger1 = Time = 14
value = 0, 0, 0
time = 12;10
under = 1

[State 4300,AssertSpecial]
type = AssertSpecial
trigger1 = Time = [2,20]
flag = NoFG

[State 0, ];adelante
type = Explod
trigger1 = animelem = 3
anim = 3005
pos = -14,-58
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = 5

[State 0, ];atras
type = Explod
trigger1 = animelem = 3
anim = 3006
pos = -14,-58
bindtime = -1
removetime = 8
pausemovetime = 0
supermove = 1
ownpal = 1
sprpriority = -3

[State 4300, Brillo]
type = PalFX
trigger1 = time = 2
time = 1
add = 200,152,32
ignorehitpause = 1

; HSDM art
[State 3020, 1]
type = Explod
trigger1 = time = 31 && var(4) = 1
anim = 3007
postype = back
bindtime = -1
removetime = 90
scale = 1.075,1.075
sprpriority = -99;-3
ownpal = 1
ignorehitpause = 1

;snd

[State 4300, ]
type = PlaySnd
trigger1 = time = 0 && var(4) = 1
value = 2,20

[State 4300, ]
type = PlaySnd
trigger1 = time = 0 && var(4) = 0
value = 2,17

[State 4300, ]
type=PlaySnd
trigger1=AnimElem = 5
value=2,18

[State 0, ]
type = PlaySnd
trigger1 = animelemtime(5) = 2
value = 6,1
volume = 255

;hitdef

;normal
[State 4300, hitdef]
type = HitDef
triggerall = p2bodydist x >= 0
trigger1 = animelemtime(8) = 1 && var(4) = 0
attr = S, NA
animtype  = diagup
damage    = (140 + (var(15) * 27)),1
hitflag = MA
guardflag = MA
pausetime =20,20
sparkno = 1
sparkxy = 0,-70
hitsound   = s1,8
guardsound = s1,0
ground.type = High
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = (-4 - var(15)),-8
air.velocity = 2 - var(15),-4
fall = 1
fall.damage = 2 * var(15)
fall.recovertime = var(15)
fall.recover = 0
envshake.time = (9 + (var(15) * 2))
envshake.freq = 120
envshake.ampl = -5
fall.envshake.time = (9 + (var(15) * 2))
fall.envshake.freq = 0
fall.envshake.ampl = -4
p1stateno = 4305

;satsu!!
[State 4300, hitdef]
type = HitDef
triggerall = p2bodydist x >= 0
trigger1 = animelemtime(8) = 1 && var(4) = 1
attr = S, NA
animtype  = diagup
damage    = (300 + (var(15) * 35)),1
hitflag = MAF
guardflag = -1
pausetime =20,20
sparkno = 1
sparkxy = 0,-70
hitsound   = s1,8
guardsound = s1,0
ground.type = High
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = (-4 - var(15)),-8
air.velocity = 2 - var(15),-4
poweradd = 125
givepower = -500 
fall = 1
fall.damage = 2 * var(15)
fall.recovertime = 60;+ (var(15) * 9)
fall.recover = 0
down.recovertime = 300
envshake.time = (18 + (var(15) * 2))
envshake.freq = 120
envshake.ampl = -5 + var(15)
fall.envshake.time = (18 + (var(15) * 2))
fall.envshake.freq = 5
fall.envshake.ampl = -3
p1stateno = 4305


[State 0, ]
type = LifeAdd
trigger1 = var(4) = 1 && movecontact
value = -213
kill = 0


[State 0, ]
type = Width
trigger1 = animelemtime(8) = 1 || time > 37
edge = 70
player = 70
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = movecontact
value = 0

;fin

[State 4300, finalizar]
type=ChangeState
trigger1=AnimTime = 0
value=0
ctrl=1

;:--------------------------------------
;Yuri no Tai Kyoku Ken tras golpear
;:--------------------------------------

[Statedef 4305]
type=S
movetype=I
physics=S
anim=4305
poweradd=0
velset=0
ctrl=0

;anim

[State 0, ]
type = Width
trigger1 = time > 0
edge = 40
player = 40
ignorehitpause = 1

[State 0, ]
type = ScreenBound
triggerall = var(15) > 6
trigger1 = 1
value = 0
movecamera = 0,0

;fx

[State 3020, 1]
type = Explod
trigger1 = time = 1
anim = 3008
postype = back
bindtime = -1
removetime = 3
scale = 1.075,1.075
sprpriority = -3
ownpal = 1
ignorehitpause = 1

[State 4040, SDM dramatic bg :b]
type = Bgpalfx
trigger1 = 1 && var(4) = 1
invertall = 0
time = 1
mul = 255,125,125
sinadd = 128,128,64,104
ignorehitpause = 1

;fin

[State 0, ]
type = ChangeState
trigger1 = BackEdgeBodyDist < -10 && animtime = 0
value = 100
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 4310
ctrl = 0

;:--------------------------------------
;Yuri no Tai Kyoku Ken festejar
;:--------------------------------------

[Statedef 4310]
type=S
movetype=I
physics=S
anim=4310
poweradd=0
velset=0
ctrl=0

;anim

[State 0, ]
type = ChangeAnim
trigger1 = time = 0 && var(4) = 1 && anim != 4320
value = 4320

;snd

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6 && anim = 4310
value = 3,1

;normal
[State 0, ]
type = PlaySnd
trigger1 = animelem = 9 && anim = 4310 && var(15) < 7
value = 6,1

; good luck
[State 0, ]
type = PlaySnd
trigger1 = animelem = 9 && anim = 4310 && VAR(15) > 6
value = 2,19

; Satsu!!
[State 0, ]
type = PlaySnd
trigger1 = animelem = 5 && anim = 4320
value = 2,21

[State 0, ]
type = VarSet
trigger1 = 1 
var(4) = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
