; Archivo ST5 para Yuri Sakazaki por Jorge H Campos
; Este archivo contiene los estados para los siguientes movimientos:
; - Kuh Ga corto (inicio)             (1300)
; - P2 Retenido por Kuh Ga            (1302)
; - Kuh Ga corto (atacar)             (1310)
; - Kuh Ga corto (terminar)           (1320)
; - Kuh Ga largo (iniciar)            (1330)
; - Kuh Ga largo (atacar)             (1340)
; - Kuh Ga largo (terminar)           (1350)
; - Ura Kuh Ga (atacar)               (1360)
; - Ura Kuh Ga (inicio)               (1370)
; - Ura Kuh Ga (terminar)             (1380)
; - Hi En Shippu Ken   (inicio)       (1400)
; - Hi En Shippu Ken   (atacar)       (1410)
; - Hi En Shippu Ken   (terminar)     (1420)
; - Rai Oh Ken (95)    (saltar)       (1600)
; - Rai Oh Ken (95)    (atacar)       (1610)
; - Rai Oh Ken (95)    (terminar)     (1620)
; - Rai Oh Ken (02)                   (1630)
; - Rai Oh Ken (97)    (inicio)       (1650) 
; - Rai Oh Ken (97)    (atacar)       (1660) 
; - Rai Oh Ken (97)    (terminar      (1670) 
; - Sai Ha                            (1700)

;-----------------------------------------------------------------------------
;Kuh Ga

[Statedef 1300]
type=S
movetype=A
physics=S
anim=1300
poweradd=125
velset=0
ctrl=0
hitcountpersist = 1

[State -0, ]
type=PlaySnd
trigger1=Time = 0
value=2,1

[State -0, ]
type=Veladd
trigger1=AnimElem= 1
x=4

;Golpea en tierra
[State 1300, 3]
type=HitDef
trigger1 = time = 0
hitflag=A
attr=S, SA
animtype=diagup;Hard
damage=77,5
guardflag=A
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=high
ground.slidetime=13
ground.hittime=18
ground.velocity=0,0
air.velocity=-5,-3
fall=1
poweradd = 63
givepower = 20 

;Golpea en tierra
[State 1300, 3]
type=HitDef
trigger1 = time = 0
hitflag=HL
attr=S, SA
animtype=Hard
damage=77,5
guardflag=HL
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=high
ground.slidetime=13
ground.hittime=18
ground.velocity=0,0
air.velocity=-5,-3
p2stateno = 1302
poweradd = 63
givepower = 20 

[State 1300, 4]
type=ChangeState
trigger1=AnimTime = 0
value=1310
ctrl=1

;---------------------------------
; Enemigo golpeado por kuuga, para
; hacer  kuuga  supercancelable  a  
; Senkai Kyaku
;---------------------------------

[Statedef 1302]
type=S
movetype=H
physics=N
poweradd=0
velset=0.01,0
ctrl=0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1302

[State 0, ]
type = PosSet
trigger1 = time >= 0
y = 0

[State 2002, 2]
type = SelfState
triggerall = time = 12
triggerall = p2name = "Yuri Sakazaki"
trigger1 = p2stateno = 1100
trigger2 = p2stateno = 250
value = 5000

[State 0, ]
type = PosSet
triggerall = time > 0
trigger1 = p2stateno = 1100
trigger2 = p2stateno = 250
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 11
x = -3
y = -8

[State 1302, 4]
type = SelfState
trigger1 = animtime = 0
value=5050

;----------------------------------
;Kuh Ga corto atacar
;----------------------------------

[Statedef 1310]
type=A
movetype=A
physics=A
anim=1310
poweradd=0
velset=0.01,0
ctrl=0
hitcountpersist = 1

;anim

[State 1310, 2]
type=Veladd
trigger1=AnimElem= 1
x=2.3

[State 1310, 3]
type=Veladd
trigger1=AnimElem= 1
y=-6.7

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 4,3

[State 1310, 1]
type=PlaySnd
trigger1=Time = 10
value=2,4

;hitdef

[State 1310, 5]
type=HitDef
trigger1=AnimElem = 1
trigger1 = HitCount = 0
hitflag=A
attr=A, SA
animtype=diagup;Hard
damage=20,5
guardflag=M
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-6.5
air.velocity=-4,-5
fall = 1

[State 1310, 6]
type=HitDef
trigger1=AnimElem = 2
trigger1 = HitCount = 0
hitflag=-MAF
attr=A, SA
animtype=diagup
damage=20,5
guardflag=M
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-6.5
air.velocity=-4,-5
fall = 1

[State 1310, 7]
type=ChangeState
trigger1=time > 27	
trigger1=pos y < 0
value=1320

;----------------------------------
;Kuh Ga corto terminar
;----------------------------------

[Statedef 1320]
type=S
movetype=A
physics=S
anim=1320
poweradd=0
velset=2.2,0
ctrl=0

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 5
value=4,8

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 6
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

;-----------------------------------------------------------------------------
;Kuh Ga largo (iniciar)
;-----------------------------------------------------------------------------

[Statedef 1330]
type=S
movetype=A
physics=S
anim=1330
poweradd=125
velset=0
ctrl=0

[State 0, ]
type = ChangeAnim
trigger1 = time=0 && (prevstateno = 210 || 410)
value = 1330
elem = 2

[State -0, ]
type=PlaySnd
trigger1=Time = 0
value=2,1

[State -0, ]
type=Velset
trigger1= time < 10
x=5

[State 1330, 3]
type=HitDef
trigger1 = time = 0
hitflag=M
attr=S, SA
animtype=Hard
damage=77,5
guardflag=M
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=HIGH
ground.slidetime=13
ground.hittime=18
ground.velocity=0,-5
air.velocity=-3,-3
fall=1
poweradd = 63
givepower = 20 

[State 1330, 4]
type=ChangeState
trigger1=AnimTime = 0
value=1340
ctrl=1

;------------------
;kuuga largo atacar
;------------------

[Statedef 1340]
type=A
movetype=A
physics=A
anim=1340
poweradd=0
velset=0,0
ctrl=0

[State 0, ];preparar ura kuuga
type = VarSet
trigger1 = time > 0 && command = "kuuga_y" && var(1) != 1
var(4) = 1

[State 1340, 2]
type=Veladd
trigger1=AnimElem= 1
x=3.5

[State 1340, 3]
type=Veladd
trigger1=AnimElem= 1
y=-6.7

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 4,3

[State 1340, 1]
type=PlaySnd
trigger1=Time = 9
value=2,4

;hitdef

[State 1340, 5]
type=HitDef
trigger1=AnimElem = 1
hitflag=AF
attr=A, SA
animtype=Hard
damage=20,5
guardflag=M
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-6.5
air.velocity=-1.8,-10
fall=1
poweradd = 63
givepower = 20 

[State 1340, 6]
type=HitDef
trigger1=AnimElem = 2
hitflag=-MAF
attr=A, SA
animtype=diagup;Hard
damage=20,5
guardflag=M
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-6.5
air.velocity=-1.8,-10
fall=1
poweradd = 63
givepower = 20 

[State 1340, 7]
type=ChangeState
trigger1=time > 30	
trigger1=pos y < 0
value=1350

;--------------------
;kuuga largo terminar
;--------------------

[Statedef 1350]
type=S
movetype=A
physics=S
anim=1350
poweradd=0
velset=2.2,0
ctrl=0

[State 0, ]
type = ChangeState
trigger1 = time = 7
trigger1 = var(4) = 1
value = 1370

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 5
value=4,8

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 6
value=4,9

[State 1350, 2]
type=posset
trigger1 = time = 0
y=0

[State 1350, 4]
type=ChangeState
trigger1 = animTime = 0
value=0
ctrl=1

;-----------------
;iniciar ura kuuga
;-----------------

[Statedef 1370]
type=S
movetype=A
physics=S
anim=1370
poweradd=125
velset=0
ctrl=0

[State -0, ]
type=PlaySnd
trigger1=Time = 0 && prevstateno = 1105
value=2,1

[State 0, ]
type = VarSet
trigger1 = time = 0 && prevstateno = 1105
var(18) = 1

[State 0, ]
type = VarSet
trigger1 = time = 0 && prevstateno != 1105
var(18) = 0

[State 1330, 3]
type=HitDef
trigger1 = time = 0
hitflag=M
attr=S, SA
animtype=Hard
damage=77,5
guardflag=M
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=HIGH
ground.slidetime=13
ground.hittime=18
ground.velocity=-1,-4
air.velocity=-3,-3
fall=1
poweradd = 63
givepower = 20 

[State 1330, 4]
type=ChangeState
trigger1=AnimTime = 0
value=1360
ctrl=1

;---------
;ura kuuga
;---------

[Statedef 1360]
type=A
movetype=A
physics=A
anim=1360
poweradd=0
velset=0,0
ctrl=0

;anim (normal)

[State 0, ]
type = VarSet
trigger1 = time = 0
var(4) = 0

[State 1340, 2]
type= Veladd
trigger1=AnimElem = 1 && var(18) = 0
x=2.8;1.8

[State 1340, 3]
type=VelAdd
trigger1=AnimElem= 1 && var(18) = 0
y=-9

[State 0, ]
type = VelSet
trigger1 = AnimElem = 2 && var(18) = 0
x=.9

;anim (en combo)

[State 1340, 2]
type= Veladd
trigger1=AnimElem = 1 && var(18) = 1
x=4.8;1.8

[State 1340, 3]
type=VelAdd
trigger1=AnimElem= 1 && var(18) = 1
y=-6

[State 0, ]
type = VelSet
trigger1 = AnimElem = 2 && var(18) = 1
x=1.9

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 4,3

[State 0, ]
type=PlaySnd
trigger1=Time = 0 && var(18) != 1
value=2,5

[State 0, ]
type=PlaySnd
trigger1=Time = 0 && var(18)  = 1
value=2,4

;hitdef

[State 1340, 5]
type=HitDef
trigger1 = p2statetype != A
trigger1 = time = 0
hitflag=AF
attr=A, SA
animtype=Hard
damage=45,5
guardflag=M
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-6.5
air.velocity=-1.5,-10
fall=1
poweradd = 63
givepower = 20 

[State 1340, 5]
type=HitDef
trigger1=time = 0
trigger1 = p2statetype = A
hitflag=AF
attr=A, SA
animtype=Hard
damage=45,5
guardflag=M
pausetime=12,12
sparkno=0
sparkxy=0,-72
hitsound=S1,5
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-6.5
air.velocity=-1.5,-12
fall=1
poweradd = 63
givepower = 20 

[State 1340, 7]
type=ChangeState
trigger1=time > 40	
trigger1=pos y < 0
value=1380

;--------------------
;ura kuuga largo terminar
;--------------------

[Statedef 1380]
type=S
movetype=A
physics=S
anim=1350
poweradd=0
velset=2.2,0
ctrl=0

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 5
value=4,8

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 6
value=4,9

[State 1350, 2]
type=posset
trigger1 = time = 0
y=0

[State 1350, 4]
type=ChangeState
trigger1 = animTime = 0
value=0
ctrl=1

;-----------------------------------------------------------
; Hi En Shippu Ken 

;Hi En Shippu Ken Iniciar

[Statedef 1400]
type=S
movetype=A
physics=S
anim=1400
poweradd=125
velset=0
ctrl=0

;anim

[State 0, ]
type = Width
trigger1 = 1
edge = 40,0
player = 7,15

[State 1400, velset]
type=Velset
trigger1= time < 4
x=3

[State 0, v]
type = VelAdd
trigger1 = (uniqhitcount = 4 && frontedgedist < 92) || (uniqhitcount > 8)
x = -1*uniqhitcount
ignorehitpause = 0

[State 0, ]
type = VelSet
trigger1 = uniqhitcount >= 4 && frontedgedist > 100
x = 0

;snd

[State 1400, playsnd]
type = PlaySnd
trigger1 = time = 10
value = 2,1
 
;hitdef

;cancelar proyextil enemigo
[State 1000, 2]
type=Projectile
trigger1=anim=1400 && time >=10
projanim=1401
projremanim=-1
projhitanim=-1
projpriority = 1
offset=0
velocity=0
projremovetime = 1
projpriority =1
attr=S, SP
animtype=medium
damage= 0,0
hitflag=L
guardflag=M
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

; derribar [kof'01]
[State 1400, hitdef]
type = HitDef
trigger1 = ((animelem = 4) && (command ="hold_x" || command ="hold_y") && var(1)=[0,1])
hitflag = MAF
attr = S, SA
animtype = Hard
damage = 77,5
guardflag = M
fall.recovertime = 0
fall.recover = 0 
pausetime = 0,0
sparkno = 0
sparkxy = 0,-72
hitsound = S1,3
guardsound = S1,0
ground.type = HIGH
ground.slidetime = 13
ground.hittime = 18
ground.velocity = -1,-9
air.velocity = -2,-5
poweradd = 63
givepower = 20 
fall = 1

; golpear repetidamente
[State 1400, girar brazo]
type=HitDef
triggerall = enemy, statetype != A && p2bodydist x > 0
trigger1   = animelem =  8
trigger2   = animelem = 14
trigger3   = animelem = 20
trigger4   = animelem = 26
trigger5   = animelem = 32
trigger6   = animelem = 38
trigger7   = animelem = 44
trigger8   = animelem = 50
trigger9   = animelem = 55
hitflag=MA
attr=S, SA
animtype=Hard
damage=15,5
guardflag=M
pausetime=1,8
guard.pausetime=2,0
sparkno=0
sparkxy = 0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=HIGH
ground.slidetime=13
ground.hittime=18
ground.velocity=-2
air.velocity=-2,-5
poweradd = 63
givepower = 20 
guard.cornerpush.veloff = -6
guard.velocity = -6
guard.veloff = -2

;fin

[State 1400, ]
type=ChangeState
triggerall = command != "hold_x" && command != "hold_y"
trigger1 = Time = 16;16 
trigger2 = time = 42;42
trigger3 = time = 66;66
trigger4 = time = 86;86
trigger5 = time = 102;102
trigger6 = time = 126;126
value=1410
ctrl=1

[State 1400, ]
type=ChangeState
trigger1 = AnimTime = 0
trigger2 = uniqhitcount = 6
value = 1410
ctrl = 1

;-----------------------------------------------------
;Hi En Shippu Ken (atacar)

[Statedef 1410]
type=S
movetype=A
physics=N
anim=1410
poweradd=0
velset=0,0
ctrl=0

;anim

[State 0, ]
type = ChangeAnim
triggerall = time = 0
trigger1 = var(1) = 1
trigger2 = var(1) = 3
value = 1411

[State 0, ]
type = Width
trigger1 = 1
edge = 80,0
player = 50,0

[State 1340, 2]
type = Velset
trigger1 = time > 9
trigger1 = var(8) = 1
x = 10

[State 1340, 2]
type = Velset
trigger1 = time > 9
trigger1 = var(8)=0
x = 5.5

[State 1340, 2]
type = Velset
trigger1 = time = 9
y = -2

[State 0, ]
type = VelAdd
trigger1 = time > 9
y = .3

[State 0, ]
type = StateTypeSet
trigger1 = time > 9
statetype = A
physics = N

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 10
value = 2,9

;hitdef

; fuerza normal
[State 1340, 5]
type=HitDef
trigger1 = time = 0
trigger1 = var(10) <= 43
hitflag=MAPF
attr=A, SA
animtype=Hard
damage=77+var(10),5
guardflag=M
pausetime=8,8
sparkno=0
sparkxy=0,-72
hitsound=S1,3
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-4,-6
air.velocity=-5,-2
fall=1
poweradd = 63
givepower = 20 

; fuerza mayor
[State 1340, 5]
type=HitDef
trigger1 = time = 0
trigger1 = var(10) > 43
hitflag=MAPF
attr=A, SA
animtype=diagup
damage=77+var(10),5
guardflag=M
pausetime=0,0
sparkno=0
sparkxy=0,-72
hitsound=S1,5
guardsound=S1,0
ground.type=low
ground.slidetime=13
ground.hittime=18
ground.velocity=-4,-6
air.velocity=-5,-2
fall=1
p2facing=1
poweradd = 63
givepower = 20

;fin

[State 1340, 7]
type=ChangeState
trigger1 = FrontEdgeBodyDist <= 30 && time > 20
trigger2 = time = 26 && var(8)=1
trigger3 = time = 22 && var(8)=0
trigger4 = time > 9 && vel x <= 0
trigger5 = animtime = 0
value=1420

;---------------------------------------
;terminar hi en shippu ken

[Statedef 1420]
type=S
movetype=A
physics=S
anim=1420
poweradd=0
velset=2.2,0
ctrl=0

;anim

[State 1350, 2]
type=posset
trigger1 = time = 0
y=0


[State 0, ]
type = VelSet
trigger1 = time < 5
x = 2

[State 0, ]
type = PosAdd
trigger1 = time = 0
x = 40

;snd

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 5
value=4,8

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 6
value=4,9

;end

[State 1350, 4]
type=ChangeState
trigger1 = animTime = 0
value=0
ctrl=1

;-------------------------------------------------------------------------
;Rai Oh Ken (95) (Inicio)
;-------------------------------------------------------------------------

[Statedef 1600]
type=A
movetype=A
physics=A
anim=1600
poweradd=125
velset=0
ctrl=0
hitcountpersist = 1

;anim

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = var(17)= 0
y = -6.6

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = var(17)= 1
y = -8.5

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 4,4

;fin

[State 1300, 4]
type=ChangeState
trigger1 = var(17) = 0
trigger1 = time = 12
value=1610
ctrl=1

[State 1300, 4]
type=ChangeState
trigger1 = var(17) = 1
trigger1 = animtime = 0
value=1610
ctrl=1

;-------------------------------------------------------------------------
;Rai Oh Ken (95) Atacar
;-------------------------------------------------------------------------

[Statedef 1610]
type=A
movetype=A
physics=A
anim=1610
poweradd=125
velset=0
ctrl=0
hitcountpersist = 1

;anim

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = var(17) = 0
value = 1611

[State 0, ]
type = VelSet
trigger1 = time > 0 && time < 34
trigger1 = var(17) = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time > 0 && time < 45
trigger1 = var (17) = 1
y = 0

;snd

[State 0, ]
type = PlaySnd
trigger1 = animtime = 4
value = 2,11

[State 0, ]
type = PlaySnd
trigger1 = animtime = 4
value = 6,11

;hitdef

[State 1000, 2]
type=Projectile
trigger1=AnimElem=4
projanim=1630
projhitanim=1632
projremanim=1631
projcancelanim=1632
projpriority = 1
offset=28,-22
velocity=6,6
remvelocity=.05,.05
projremove = 1
projremovetime = -1
projpriority =1
attr=S, SP
animtype=medium
damage= 77,5
hitflag=HLA
guardflag=H
pausetime=0,12
hitsound=s1,3
guardsound=S1,0
sparkno=S3001
sparkxy = 0,0
guard.sparkno=S3002
ground.type=high
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-4
guard.velocity=-6
air.velocity=-2.4,0
airguard.velocity=-3,3
givepower = 20

;fin

[State 1310, 7]
type=ChangeState
trigger1=time > 48	
trigger1=pos y < 0
trigger1=var(17)=0
value=1620

[State 1310, 7]
type=ChangeState
trigger1=time > 64	
trigger1=pos y < 0
trigger1=var(17)=1
value=1620

;----------------------------------
;Rai Oh Ken Terminar
;----------------------------------

[Statedef 1620]
type=S
movetype=A
physics=S
anim=1620
poweradd=0
velset=1,0
ctrl=0

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 5
value=4,8

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 6
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

;-------------------------------------------------------------------------
;Rai Oh Ken (2002)
;-------------------------------------------------------------------------

[Statedef 1630]
type=A
movetype=A
physics=A
anim=1650
poweradd=-20
ctrl=0

;anim

[State 0, ]
type = Velset
trigger1 = time = 0
y = 0

;atras/neutral
[State 0, ]
type = Veladd
trigger1 = vel x <= 0 && animelem = 3
y = -8

;adelante
[State 0, ]
type = Veladd
trigger1 = vel x > 0 && animelem = 3
y = -6

;atras
[State 0, ]
type = Velset
trigger1 = vel x < 0 && animelem = 3
x = -2.5

;neutral
[State 0, ]
type = Velset
trigger1 = vel x = 0 && animelem = 3
x = -.8

;adelante
[State 0, ]
type = Velset
trigger1 = vel x > 0 && animelem = 3
x = .5

;snd

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 2,11

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,11

;hitdef

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1635
projhitanim = 1632
projremanim = 1631
projcancelanim = 1632
projpriority = 1
offset = 28,-22
velocity = (6 + var(17) * 6),6
accel = 0, var(17) * -.1
remvelocity =.05,.05
projremove = 1
projremovetime = -1
projpriority = 1
attr = S, SP
animtype = medium
damage= 77,5
hitflag=HLA
guardflag=H
pausetime=0,12
hitsound=s1,3
guardsound=S1,0
sparkno=S3001
sparkxy = 0,0
guard.sparkno=S3002
ground.type=high
ground.slidetime=18
ground.hittime=25
guard.hittime=36
guard.ctrltime=36
ground.velocity=-4
guard.velocity=-6
air.velocity=-2.4,0
airguard.velocity=-3,3
givepower = 20

;explod

[State 1004, 4]
type = explod
trigger1 = animelem = 1
anim = 1006
pos = -9, -105
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 4
removeongethit = 1

[State 1004, 4]
type = explod
trigger1 = animelem = 2
anim = 1006
pos = 9, -110
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 4
removeongethit = 1

[State 1004, 4]
type = explod
trigger1 = animelem = 3
anim = 1006
pos = 35, -38
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 4
removeongethit = 1

[State 1004, 4]
type = explod
trigger1 = animelem = 4
anim = 1006
pos = 30, -32
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 4
removeongethit = 1

[State 1004, 4]
type = explod
trigger1 = animelem = 5
anim = 1006
pos = 34, -36
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 12
removeongethit = 1

;fin

[State 1310, 7]
type=ChangeState
trigger1=animtime = 0	
value=50
ctrl=0

;--------------------------------------------
; Sai Ha

[Statedef 1700]
type=S
movetype=A
physics=S
anim=1700
poweradd=0
velset=0
ctrl=0

;anim

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0

;power

[State 0, ]
type = PowerAdd
trigger1 = 1
value = -2

;snd

[State 1004, 1]
type=PlaySnd
trigger1=animelem = 6
value=2,16

[State 1004, 1]
type=PlaySnd
trigger1=time = 15
value=6,3

;projectil
[State 1004, 2]
type = Projectile
trigger1 = animelem = 7
projid = 1720
projanim = 1720
projremanim = 1720
projhitanim = 9999999
projremove = 1
projhits = 3
projmisstime = 2
projpriority = 35
projsprpriority = 5
projremovetime = 14
offset = 60, -80
velocity = 0
remvelocity = 0
accel=0, 0
attr=s, HP
animtype=high
damage=27,7
hitflag=MAPF
guardflag=M
pausetime=8,8
hitsound=S1,7
sparkno=1
guardsound=S1,0
ground.type=high
ground.slidetime=18
ground.hittime=125
guard.hittime=36
guard.ctrltime=36
ground.velocity=-1.5,-3
guard.velocity=-6
air.velocity=-1.2,-1
airguard.velocity=-2,-1
getpower = 0
fall = 1

;explod

[State 4200, 4]
type = explod
trigger1 = animelem =1
anim = 1006
pos = -17, -63
sprpriority = 3

[State 4200, 4]
type = explod
trigger1 = animelem = 2
anim = 1006
pos = -17, -63
sprpriority = 3

[State 1004, 4]
type = explod
trigger1 = animelem = 3
anim = 1006
pos = -33, -76
sprpriority = 3

[State 1004, 4]
type = explod
trigger1 = animelem = 4
anim = 1006
pos = -1, -86
sprpriority = 3

[State 1004, 4]
type = explod
trigger1 = animelem = 5
anim = 1006
pos = 2, -101
sprpriority = 3

[State 1004, 4]
type = explod
trigger1 = animelem = 6
anim = 1006
pos = 20, -122
sprpriority = 3

;sphere explod
[State 0, ]
type = Explod
trigger1 = time = 21
ID = 1721
anim = 1721
pos = 60, -80
sprpriority = -1
removetime = -1

[State 0, ]
type = Explod
trigger1 = time = 21
ID = 1722
anim = 1722
pos = 60, -80
sprpriority = 2
removetime = -1

[State 0, ]
type = RemoveExplod
trigger1 = Time > 29 && NumProjID(1720) = 0
ID = 1721

[State 0, ]
type = RemoveExplod
trigger1 = Time > 29 && NumProjID(1720) = 0
ID = 1722

;Fin

[State 1004, 3a]
type = Changestate
trigger1 = Time > 32 && NumProjID(1720) = 0
value = 1701

[Statedef 1701]
type=S
movetype=I
physics=S
anim=1701
poweradd=0
velset=0
ctrl=0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------

;-----------------------------------------------------------------------------
;Raiohken 97 (tipo upper)

[Statedef 1650]
type=S
movetype=A
physics=S
anim=1655
poweradd=0
velset=0
ctrl=0
hitcountpersist = 1

[State 1300, 4]
type=ChangeState
trigger1=AnimTime = 0
value=1660
ctrl=1

;atacar
[Statedef 1660]
type=A
movetype=A
physics=A
anim=1660
poweradd=125
velset=0
ctrl=0
hitcountpersist = 1

;anim

[State 0, ]
type = Posadd
trigger1 = time = 0
x = 10

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = var(17) = 1
value = 1665

[State 0, ]
type = Veladd
trigger1 = time = 0
trigger1 = var(17) = 0
x = 2
y = -5

[State 0, ]
type = Veladd
trigger1 = time = 0
trigger1 = var (17) = 1
x = 2.6
y = -8

[State 0, ]
type = Velset
trigger1 = AnimElem =  4 && var(17) = 0
trigger1 = AnimElem =  8 && var(17) = 1
y = 2

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

; explod (short)

[State 1004, 4]
type = explod
trigger1 = animelem = 2 && var (17) = 0
anim = 1006
pos = -9, -105
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 2
removeongethit = 1

[State 1004, 4]
type = explod
trigger1 = animelem = 3 && var (17) = 0
anim = 1006
pos = 9, -110
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 3
removeongethit = 1

; explod (long)

[State 1004, 4]
type = explod
trigger1 = animelem = 7 && var (17) = 1
anim = 1006
pos = -9, -105
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 4
removeongethit = 1

[State 1004, 4]
type = explod
trigger1 = animelem = 8 && var (17) = 2
anim = 1006
pos = 9, -110
sprpriority = 3
bindtime = -1
persistent = 0
removetime = 4
removeongethit = 1

;hitdef

[State 0, ]
type = Explod
trigger1 = animelem = 4 && var(17) = 0
trigger2 = animelem = 9 && var(17) = 1
anim = 1651
ID = 1651
pos = 47,-31
postype = p1
bindtime = -1
removetime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 77,5
hitflag=MA
guardflag = HA
priority = 4
pausetime = 0,12
sparkno = 1
sparkxy = 0,-55
hitsound   = s1,3
guardsound = s1,0
animtype = back
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0,8
air.velocity = -3,7
poweradd = 125
givepower = 20 
fall = 1

;fin

[State 1310, 7]
type = ChangeState
trigger1 = time = 24 && var(17)=0;21
trigger2 = time > 33 && var(17)=1
value = 1670

;----------------------------------
;Rai Oh Ken Terminar
;----------------------------------

[Statedef 1670]
type=S
movetype=A
physics=S
anim=1670
poweradd=0
velset=1,0
ctrl=0

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 5
value=4,8

[State 1320, 1]
type=PlaySnd
trigger1 = Time = 6
value=4,9

[State 1320, 2]
type=posset
trigger1 = time = 0
y=0

[State 610, 3]
type = HitDef
trigger1 = time < 3     && var(17) = 0
trigger2 = animelem != 3 && var(17) = 1
attr = A, NA
damage = 40,1
hitflag=MA
guardflag = HA
priority = 4
pausetime = 0,12
guard.pausetime = 0,0
sparkno = 1
sparkxy = 0,-55
guard.sparkno = -1
hitsound   = s1,3
guardsound = s1,0
animtype = back
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4,0
air.velocity = -4,-1
poweradd = 125
givepower = 20 

[State 0, ]
type = RemoveExplod
trigger1 = time = 3     && var(17) = 0
trigger2 = animelem = 3 && var(17) = 1
ID = 1651

[State 1320, 4]
type=ChangeState
trigger1 = animTime = 0
value=0
ctrl=1
