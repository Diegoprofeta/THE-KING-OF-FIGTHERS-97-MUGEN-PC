; Archivo ST4 para Yuri Sakazaki por Jorge H Campos
; Este archivo contiene los estados para los siguientes movimientos:
; - Kohoken corto (1  cuerpo)          (1000)
; - raiohken      (abajo)              (1002)
; - raiohken      (alto)               (1003)
; - raiohken      (recto)              (1004)
; - Chou Kohoken                       (1005)
; - Kohoken largo (recto)              (1006)
; - Kohoken corto (2 cuerpos)          (1010)
; - Haoh Sho Ko ho ken                 (1015)
; - Senkai Kyaku Inicio                (1100)
; - Senkai Kyaku Atacar                (1101)
; - Tsuika Koh Geki                    (1102)
; - Senkai Kyaku Atacar (bis)          (1105)
; - Hi En Sempu Kyaku (atacar)         (1500)
; - Hi En Sempu Kyaku (iniciar)        (1502)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;kohoken debil corto (un cuerpo)

[Statedef 1000]
type=S
movetype=A
physics=S
anim=1000
poweradd=63
velset=0
ctrl=0

;explode

[State 1000, 5];2k1 ball (1)
type=Explod
trigger1=time = 1
trigger1 = var(1) = 3 || var(1) = 4
anim = 1005
pos = -28, -69
sprpriority = 3

[State 1000, 5];wl ball(1)
type=Explod
trigger1=time = 1
trigger1 = var(1) != 3 && var(1) != 4
anim = 1006
vel = 1.2,.05
pos = -28, -69
sprpriority = 3

[State 1000, 5];2k1 ball (2)
type=Explod
trigger1=time = 5
trigger1 = var(1) = 3 || var(1) = 4
anim = 1005
pos = -35, -65
sprpriority = 3

[State 1000, 5];wl ball(2)
type=Explod
trigger1=time = 5
trigger1 = var(1) != 3 && var(1) != 4
anim = 1006
vel = 1.2,.05
pos = -35, -65
sprpriority = 3

[State 1000, 5];2k1 ball (3)
type=Explod
trigger1=time = 10
trigger1 = var(1) = 3 || var(1) = 4
anim = 1005
pos = -35, -65
sprpriority = 3

[State 1000, 5];wl ball(3)
type=Explod
trigger1=time = 10
trigger1 = var(1) != 3 && var(1) != 4
anim = 1006
vel = 1.2,.05
pos = -35, -65
sprpriority = 3

[State 1000, 5];2k1 ball (4)
type=Explod
trigger1=time = 14
trigger1 = var(1) = 3 || var(1) = 4
anim = 1005
pos = -13, -65
sprpriority = 3

[State 1000, 5];wl ball(4)
type=Explod
trigger1=time = 14
trigger1 = var(1) != 3 && var(1) != 4
anim = 1006
vel = 1.2,.05
pos = -13, -65
sprpriority = 3

[State 0, ];kohoken itself (wl)
type = Explod
trigger1 = animelem = 7 && var(1) != 3 && var(1) != 4
anim = 1014
pos = 0,0
bindtime = 1
removetime = 31
pausemovetime = 0
sprpriority = 3;2

[State 0, x];kohoken itself (2k1)
type = Explod
trigger1 = animelem = 7 && (var(1) = 3 || var(1) = 4) 
anim = 1012
pos = 0,0
bindtime = 1
removetime = 31
pausemovetime = 0
sprpriority = 2

;snd

[State 1000, 1]
type=PlaySnd
trigger1=Time = 2;9
trigger1=command!="hold_x"
value=2,3

[State 1000, 1]
type=PlaySnd
trigger1=Time = 9
value=6,3

;hitdef

;golpear oponente
[State 1000, 2]
type=Projectile
trigger1=AnimElem=7
projanim=1018
projremanim=-1
projhitanim=-1
projpriority = 1
offset=0
velocity=1
projremove = 0
projremovetime = 20
projpriority =1
attr=S, SP
animtype=medium
damage= 77,5
hitflag=HLA
guardflag=HL
pausetime=0,12
hitsound=s1,3
guardsound=S1,0
sparkno=S3001
sparkxy = 60,-80
guard.sparkno=S3002
ground.type=high
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3,-4
guard.velocity=-6
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
givepower = 20
fall=1

;cancelar proyextil enemigo
[State 1000, 2]
type=Projectile
trigger1=AnimElem=7
projanim=1016
projremanim=-1
projhitanim=-1
projpriority = 1
offset=0
velocity=1
projremovetime = 20
projpriority =1
attr=S, SP
animtype=medium
damage= 0,0
hitflag=HL
guardflag=HL
pausetime=0,12
hitsound=s1,3
guardsound=S1,0
sparkno=-1
sparkxy = 0,0
guard.sparkno=-1
ground.type=high
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3,-4
guard.velocity=-6
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
givepower = 0
numhits = 0
fall=1

;fin

[State 1000, 3a]
type = ChangeState
trigger1=time = 8 && command = "hold_x" && var(1) != 1  && var(1) !=2 && var(1) !=5
value = 1005

[State 1000, 3b]
type = ChangeState
trigger1 = time = 8 && command = "hold_y"  && var(1) !=2 && var(1) !=5
value = 1005

;AI
[State 1000, 3b]
type = ChangeState
trigger1 = time = 8 && var(9) = 1 && p2bodydist x > 190  && var(1) !=2 && var(1) !=5
value = 1005

[State 1000, 3c]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------

;kohoken fuerte corto (dos cuerpo)

[Statedef 1010]
type=S
movetype=A
physics=S
anim=1010
poweradd=63
velset=0
ctrl=0

;anim

[State 1000, VelSet];original
type = VelSet
trigger1 = time >= 16 && time < 26
trigger1 = var(1) = 1
x = 1.2

;explod

[State 1000, 5];2k1 ball (1)
type=Explod
trigger1=time = 1
trigger1 = var(1) = 3 || var(1) = 4
anim = 1005
pos = -28, -69
sprpriority = 3

[State 1000, 5];wl ball(1)
type=Explod
trigger1=time = 1
trigger1 = var(1) != 3 && var(1) != 4
anim = 1006
vel = 1.2,.05
pos = -28, -69
sprpriority = 3

[State 1000, 5];2k1 ball (2)
type=Explod
trigger1=time = 5
trigger1 = var(1) = 3 || var(1) = 4
anim = 1005
pos = -35, -65
sprpriority = 3

[State 1000, 5];wl ball(2)
type=Explod
trigger1=time = 5
trigger1 = var(1) != 3 && var(1) != 4
anim = 1006
vel = 1.2,.05
pos = -35, -65
sprpriority = 3

[State 1000, 5];2k1 ball (3)
type=Explod
trigger1=time = 10
trigger1 = var(1) = 3 || var(1) = 4
anim = 1005
pos = -35, -65
sprpriority = 3

[State 1000, 5];wl ball(3)
type=Explod
trigger1=time = 10
trigger1 = var(1) != 3 && var(1) != 4
anim = 1006
vel = 1.2,.05
pos = -35, -65
sprpriority = 3

[State 1000, 5];2k1 ball (4)
type=Explod
trigger1=time = 14
trigger1 = var(1) = 3 || var(1) = 4
anim = 1005
pos = -13, -65
sprpriority = 3

[State 1000, 5];wl ball(4)
type=Explod
trigger1=time = 14
trigger1 = var(1) != 3 && var(1) != 4
anim = 1006
vel = 1.2,.05
pos = -13, -65
sprpriority = 3


[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
trigger1=command!="hold_x"
value=2,3

[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
trigger1=command!="hold_x"
value=6,3

[State 0, ]
type = Explod
trigger1 = animelem = 7 && var(1) != 3 && var(1) != 4
anim = 1015
pos = 0,0
bindtime = 1
removetime = 31
pausemovetime = 0
sprpriority = 2

[State 0, ]
type = Explod
trigger1 = animelem = 7 && (var(1) = 3 || var(1) = 4)
anim = 1013
pos = 0,0
bindtime = 1
removetime = 31
pausemovetime = 0
sprpriority = 2

;atacar
[State 1000, 2]
type=Projectile
trigger1=AnimElem=7
projanim=1019
projremanim=-1
projhitanim=-1
remvelocity=.8
projpriority = 999
offset=0
velocity=7
projremove = 0
projremovetime = 10
projpriority =1
attr=S, SP
animtype=medium
damage= 77,5
hitflag=MAP
guardflag=HL
pausetime=0,12
hitsound=s1,3
sparkno=S3001
sparkxy = 60,-80
guard.sparkno=S3002
guardsound=S1,0
ground.type=high
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3,-4
guard.velocity=-6
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
givepower = 20
fall=1

;cancelar proyectil enemigo
[State 1000, 2]
type=Projectile
trigger1=AnimElem=7
projanim=1017
projremanim=-1
projhitanim=-1
remvelocity=.8
projpriority = 999
offset=-20
velocity=8
projremovetime = 10
projpriority =1
attr=S, SP
animtype=medium
damage= 0,0
hitflag=HL
guardflag=HL
pausetime=0,12
hitsound=s1,3
sparkno=S30015
sparkxy = 0,0
guard.sparkno=S30025
guardsound=S1,0
ground.type=high
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3,-4
guard.velocity=-6
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
givepower = 20
numhits = 0
fall = 1

;fin

[State 1000, fin a]
type = ChangeState
triggerall = time = 11 &&  prevstateno != 410 && var(1) !=2 && var(1) !=5
trigger1 = command = "hold_x2"
trigger2 = command = "hold_y2" && var(1) != 1
value = 1005

[State 1000, fin b]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
;kohoken dirigible (rosa)
;------------------------

[Statedef 1006]
type=S
movetype=A
physics=S
anim=1000
poweradd=63
velset=0
ctrl=0

;anim

[State 1002, VelSet]
type = VelSet
trigger1 = time >= 16 && time < 26
trigger1 = var(1) = 1
x = .6

;Explod

[State 1002, 5]
type=Explod
trigger1=time = 9
anim = 1006
vel = 1.2,.05
pos = -38, -65
sprpriority = 3

;snd

[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
value=2,3

[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
value=6,3

[State 1000, 2];ki rosa
type=Projectile
trigger1=AnimElem=7
projanim = 1635
projhitanim = 1632
projremanim = 1631
projcancelanim = 1632
;projanim=1002
;projremanim=1020
;projhitanim=1020
remvelocity=1.6, 0
projpriority = 1
offset=-18, -60
velocity=3.6, .4
projremovetime = -1;18
projpriority =1
attr=S, SP
animtype=medium
damage= 45,5
hitflag=MAP
guardflag=MA
pausetime=12,12
hitsound=s1,3
sparkno=-1
guard.sparkno=-1
guardsound=S1,0
ground.type=low
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3
guard.velocity=-2
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
poweradd = 63
givepower = 20 

;end

[State 1000, 3c]
type=ChangeState
trigger1=AnimTime = 0
value=0
ctrl=1

;---------------------------------
;kohoken dirigible (rosa) Arriba

[Statedef 1003]
type=S
movetype=A
physics=S
anim=1023
poweradd=0
velset=0
ctrl=0

[State 1000, 5]
type=Explod
trigger1=time = 9
anim = 1006
vel = 1.2,.05
pos = -38, -65
sprpriority = 3

[State 1000, 2]
type=Projectile
trigger1=AnimElem=4;7
projanim=1002
projremanim=1020
projhitanim=1020
remvelocity=-1.6, 0
projpriority = 1
offset=-30, -64
velocity=2.4
accel = .16,-0.04
projremovetime = -1
projpriority =1
attr=S, SP
animtype=medium
damage= 35,5
hitflag=MAP
guardflag=MA
pausetime=12,12
hitsound=s1,3
sparkno=-1
guardsound=S13,3
ground.type=high
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3
guard.velocity=-2
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
poweradd = 63
givepower = 20 

[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
value=2,3

[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
value=6,3

[State 1000, 3c]
type=ChangeState
trigger1=AnimTime = 0
value=0
ctrl=1

;---------------------------------
;kohoken dirigible (rosa) ABAJO
;---------------------------------

[Statedef 1004]
type=S
movetype=A
physics=S
anim=1024
poweradd=0
velset=0
ctrl=0

[State 1000, 5]
type=Explod
trigger1=time = 9
anim = 1006
vel = 1.2,.05
pos = -38, -65
sprpriority = 3

[State 1000, VelSet]
type = VelSet
trigger1 = time >= 16 && time < 26
trigger1 = var(1) = 1
x = 1.2

[State 1004, 2]
type=Projectile
trigger1=AnimElem=7
projanim=1002
projremanim=1020
projhitanim=1020
remvelocity=-1.6, 0
projpriority = 1
offset=-18, -60
velocity=5.4, -.02
accel= .19,0.04
projremovetime = -1
projpriority =1
attr=S, SP
animtype=medium
damage= 25,5
hitflag=MAP
guardflag=MA
pausetime=12,12
hitsound=s1,3
sparkno=-1
guardsound=S1,0
ground.type=high
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3,-5
guard.velocity=-6
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
poweradd = 63
givepower = 20 
fall = 1

[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
value=2,3

[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
value=6,3

[State 1000, 3c]
type=ChangeState
trigger1=AnimTime = 0
value=0
ctrl=1

;:--------------------------------------
;Ko Ho Ken con dos manos
;:--------------------------------------

[Statedef 1005]
type=S
movetype=A
physics=S
anim=1007
poweradd=63
velset=0
ctrl=0

;anim

[State 1005, posadd]
type = Posadd
trigger1=animtime=0
x = -25

[State 0, ]
type = Width
trigger1 = time < 88
edge = 10,30

;explod

[State 1005, 4]
type=explod
trigger1=time = 0
anim= 1006
pos = -35,-65
sprpriority = 3

[State 1005, 4]
type=explod
trigger1=time = 4
anim= 1006
pos = -34,-67
sprpriority = 3

[State 1005, 4]
type=explod
trigger1=time = 16
anim= 1006
pos = -25,-68
sprpriority = 3

[State 1005, 4]
type=explod
trigger1=time = 20
anim= 1006
pos = -9,-65
sprpriority = 3

[State 1005, 4]
type=explod
trigger1=time = 23
anim= 1006
pos = -24,-63
sprpriority = 3

[State 1005, 4]
type=explod
trigger1=time = 26
anim= 1006
pos = -43,-61
sprpriority = 3

[State 1005, 4]
type=explod
trigger1=time = 31
anim= 1006
pos = -43,-61
sprpriority = 3

[State 1005, 4]
type=explod
trigger1=time = 36
anim= 1006
pos = -23,-65
sprpriority = 3

[State 1005, 4]
type=explod
trigger1=time = 42
anim= 1006
pos = 5,-62
sprpriority = 3

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
type=Projectile
trigger1=AnimElem= 9
projanim=1008
projhitanim=1009
projremanim=1009
projpriority = 1
projremove=1
offset=40,-58
velocity=3.8, 0
remvelocity=2, 0
accel=0, 0
attr=S, SP
animtype=medium
damage=120,10
hitflag=MAP
guardflag=M
pausetime=12,12
hitsound=S1,5
guardsound=S1,0
sparkno=-1
ground.type=high
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3.5,-4
guard.velocity=-6
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
poweradd = 63
givepower = 20 
air.juggle = 3
fall=1
envshake.time = 12
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 4 
fall.envshake.time = 9
fall.envshake.freq = 3
fall.envshake.ampl = 3
fall.envshake.phase = 3

;fin

[State 1005, finalizar]
type=ChangeState
trigger1=AnimTime = 0
value=0
ctrl=1

;---------------------------------------------------------------------------
; Senkai Kyaku

[Statedef 1101]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1101
sprpriority = 2

[State 0, ]
type = PlayerPush
trigger1 = time > 0
value = 0

[State -10, ]
type = VelSet
trigger1 = time >  0
x = 2.8

[State 0, ]
type = ChangeState
trigger1 = time = 7
value = 1100

[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2

;anim

[State 0, ]
type = PosSet
trigger1 = time >= 0
y = 0

[State 0, ]
type = PlayerPush
trigger1 = time > 8
value = 0

[State -10, ]
type = VelSet
trigger1 = time > 0 && time < 7
x = 2.8

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 1
value = 2,14

[State 0, ]
type = PlaySnd
trigger1 = time = 1
value = 6,2

[State 240, from supercancel]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = prevstateno = 1300
attr = S, SA
animtype  = Medium
damage    = 33, 5
guardflag = H
pausetime = 12,12
sparkno = 1
sparkxy = -10,-65
hitsound   = s1,3
guardsound = s1,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 15
ground.velocity = 1
air.velocity = -2.2,-3.2
forcestand = 1
poweradd = 63
givepower = 20 

[State 240, normal]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = prevstateno != 1300
attr = S, SA
animtype  = Medium
damage    = 39, 5
guardflag = H
pausetime = 12,12
sparkno = 1
sparkxy = -10,-65
hitsound   = s1,3
guardsound = s1,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 15
ground.velocity = 0
air.velocity = -2.2,-3.2
poweradd = 63
givepower = 20 

[State 240, 2]
type = HitDef
trigger1 = time > 15 && hitcount !=2
attr = S, SA
animtype  = Medium
damage    = 32, 2
guardflag = H
pausetime = 8,16
sparkno = 1
sparkxy = -10,-65
hitsound   = s1,3
guardsound = s1,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 15
ground.velocity = -1
air.velocity = -2.2,-3.2
poweradd = 63
givepower = 20 

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1105
ctrl = 0

[Statedef 1105]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1105
sprpriority = 2

[State 0, ]
type = PlayerPush
trigger1 = time > 0
value = 0

[State -10, ]
type = VelSet
trigger1 = time > 10 && time < 16
x = 3

[State 0, ]
type = PlaySnd
trigger1 = time = 10
value = 6,2

[State 240, 2]
type = HitDef
trigger1 = time = 1
attr = S, SA
animtype  = Medium
damage    = 26, 5
guardflag = H
pausetime = 8,16
sparkno = 1
sparkxy = -10,-65
hitsound   = s1,3
guardsound = s1,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -12;-6
air.velocity = -2.2,-3.2
poweradd = 63
givepower = 20 

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------
; Tsuika Koh Geki
;-----------------------------------

[Statedef 1102]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1105
sprpriority = 2

[State 0, ]
type = null;PlayerPush
trigger1 = time > 0
value = 0

[State -10, ]
type = VelSet
trigger1 = time > 10 && time < 16
x = 3

[State 0, ]
type = PlaySnd
trigger1 = time = 10
value = 6,2

[State 240, 2]
type = HitDef
trigger1 = time = 1
attr = S, SA
animtype  = Medium
damage    = 45, 0
guardflag = H
pausetime = 10,20
sparkno = 1
sparkxy = -10,-65
hitsound   = s1,3
guardsound = s1,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 3;,-6
air.velocity = -2.2,-3.2
kill=0
mindist=20
maxdist=40

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------
;HiEn Sempu Kyaku iniciar
;----------------------------------

[Statedef 1502]
type=S
movetype=A
physics=S
anim=1502
poweradd=0
velset=2.2,0
ctrl=0

;snd

[State 0, ]
type = PlaySnd
trigger1 =time=3
value = 4,4

[State 0, ]
type = PlaySnd
trigger1 = time=3
value = 2,1

;fin

[State 1320, 4]
type=ChangeState
trigger1 = animTime = 0
value=1500
ctrl=0

;----------------------------------------------------------
;Hi En Semppu Kyaku && Ura Hi En Semppu Kyaku

[Statedef 1500]
type=A
movetype=A
physics=A
anim=1500
poweradd=125
velset=0
ctrl=0

;anim

[State -0, ]
type=VelSet
trigger1=AnimElem= 1
trigger1=var(14)=0
x=7.2
y=-6

[State -0, ]
type=VelSet
trigger1=AnimElem= 1
trigger1=var(14)=1
x=6
y=-4

;Ura

[State -10, ]
type = PlayerPush
trigger1 = time > 1 && prevstateno = 240
value = 0

[State 0, ]
type = ChangeAnim
trigger1 = time = 0 && prevstateno = 240
value = 1200

[State -0, ]
type = VelSet
trigger1 = animelem = 1 && prevstateno = 240
x = 6
y = -4

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 4 && prevstateno != 240
value = 2,2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 1 && prevstateno = 240
value = 2, 1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 4 && prevstateno = 240
value = 2, 2

;hitfdef

;normal
[State 1300, 3]
type=HitDef
trigger1  = animelem=1
trigger2  = animelem=3
trigger3  = animelem=5
trigger4  = animelem=7
trigger5  = animelem=9
hitflag=MAF
attr=S, SA
animtype=Hard
damage=22,5
guardflag=M
pausetime=9,5
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=high
ground.slidetime=18
ground.hittime=18
ground.velocity=-6,0
air.velocity=-5,-3
fall=0
poweradd = 63
givepower = 20 

;ura
[State 1300, 3]
type=HitDef
triggerall = prevstateno = 240
trigger1  = animelem=1
trigger2  = animelem=3
trigger3  = animelem=5
trigger4  = animelem=7
trigger5  = animelem=9
hitflag=MAF
attr=S, SA
animtype=hitup
damage=22,5
guardflag=M
pausetime=4,8
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=high
ground.slidetime=18
ground.hittime=18
ground.velocity=0,-5
air.velocity=0,-3
facing = 1
fall=1
poweradd = 63
givepower = 20 

[State 1310, 7]
type = ChangeState
trigger1 = prevstateno = 240 && time > 19 && pos y < 0
value = 1503

[State 1310, 7]
type = ChangeState
trigger1 = prevstateno != 240 && time > 19 && pos y < 0 && var(14)=1
value = 1501

[State 1310, 7]
type = ChangeState
trigger1 = prevstateno != 240 && time > 27 && pos y < 0 && var(14)=0
value=1501

;----------------------------------
;HiEn Sempu Kyaku terminar
;----------------------------------

[Statedef 1501]
type=S
movetype=A
physics=S
anim=1501
poweradd=0
velset=2.2,0
ctrl=0

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 1
value=4,8

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 2
value=4,9

[State 1320, 2]
type=posset
trigger1 = time = 0
y=0

[State 1320, 4]
type=ChangeState
trigger1 = animTime = 0
value=0
ctrl=1

;----------------------------------
;Ura Hi En Sempu Kyaku terminar
;----------------------------------

[Statedef 1503]
type=S
movetype=A
physics=S
anim=1501
poweradd=0
velset=8,0
ctrl=0

[State 0, ]
type = PosAdd
trigger1 = time = 0
x = 20

[State 0, ]
type = MakeDust
trigger1 = 1
pos = 0,0

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 1
value=4,8

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 2
value=4,9

[State 1320, 2]
type=posset
trigger1 = time = 0
y=0

[State 1320, 4]
type=ChangeState
trigger1 = animTime = 0
value=0
ctrl=1


;:--------------------------------------
;Haoh Shou Ko Oh Ken

[Statedef 1015]
type=S
movetype=A
physics=S
anim=1022
poweradd=-500
velset=0
ctrl=0

;snd

[State 1021, 1]
type=PlaySnd
trigger1=AnimElem = 9
value=6,4

[State 1021, 2]
type=PlaySnd
trigger1=time=25
value=2,25

;projectile

[State 1021, 2]
type = Projectile
trigger1 = AnimElem = 11
ProjID = 1021
projanim = 1021
projhitanim = 1025
projremanim = 1025
projpriority = 12
projremove = 1
projremovetime = 5
projhits = 1
projmisstime = 0
offset = 40,-58
velocity = 9, 0
remvelocity = .2, 0
accel = .3, 0
attr = S, SP
animtype = high
damage = 211,5
hitflag = MAPFL
guardflag = -1
pausetime = 0,8
hitsound=S1,5
guardsound=S1,0
sparkno = 3
sparkxy = 60,0
ground.type=high
ground.slidetime=8
ground.hittime=15
guard.hittime=36
guard.ctrltime=36
ground.velocity=-2,-4
guard.velocity=-1
air.velocity=-3,-3
airguard.velocity=-2,-2
poweradd = -500
givepower = 20 
air.juggle = 3
fall=1
fall.recover = 0
envshake.time = 14
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5 
fall.envshake.time =11
fall.envshake.freq = 4
fall.envshake.ampl = 4
fall.envshake.phase = 4

;fin

[State 4200, finalizar]
type=ChangeState
trigger1=AnimTime = 0
value=0
ctrl=1

;---------------------
;------------------------
;kohoken largo
;------------------------

[Statedef 1002]
type=S
movetype=A
physics=S
anim=1011
poweradd=63
velset=0
ctrl=0

;anim

[State 1002, VelSet]
type = VelSet
trigger1 = time >= 16 && time < 26
trigger1 = var(1) = 1
x = .6

;Explod

[State 1002, 5]
type=Explod
trigger1=time = 9
anim = 1006
vel = 1.2,.05
pos = -38, -65
sprpriority = 3

;snd

[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
value=2,3

[State 1000, 1]
type=PlaySnd
trigger1=Time = 16
value=6,3

[State 1000, 2];ki rosa
type=Projectile
trigger1=AnimElem=7
projanim = 1635
projhitanim = 1632
projremanim = 1631
projcancelanim = 1632
;projanim=1002
;projremanim=1020
;projhitanim=1020
remvelocity=1.6, 0
projpriority = 1
offset=-18, -60
velocity=3.6, .4
projremovetime = -1;18
projpriority =1
attr=S, SP
animtype=medium
damage= 45,5
hitflag=MAP
guardflag=MA
pausetime=12,12
hitsound=s1,3
sparkno=-1
guard.sparkno=-1
guardsound=S1,0
ground.type=low
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-3
guard.velocity=-2
air.velocity=-2.4,-3.5
airguard.velocity=-3,-3
poweradd = 63
givepower = 20 

;end

[State 1000, 3c]
type=ChangeState
trigger1=AnimTime = 0
value=0
ctrl=1

