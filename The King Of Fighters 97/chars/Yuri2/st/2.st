; Archivo ST2 para Yuri Sakazaki por Jorge H Campos
; Este archivo contiene los estados para los siguientes movimientos:
; - Golpe Debil               (200)
; - Golpe Fuerte              (210)
; - En Yoku (2k1)             (220)
; - Patada Debil              (230)
; - Patada Fuerte             (240)
; - Senkai Kyaku(2k1)         (250)
; - Tsuika Kougeri(2k1)       (255)
; - golpe debil abajo         (400)
; - golpe fuerte abajo        (410)
; - patada debil abajo        (430)
; - patada fuerte abajo       (440)
; - golpe debil saltando      (600)
; - golpe fuerte saltando     (610)
; - Tsubame Otoshi (intento)1 (610)
; - patada debil saltando     (630)
; - Hi En Sou (ataque)        (630)
; - Hi En Sou (aterrizaje)    (633)  
; - patada fuerte saltando    (640)
; - Tsubame Otoshi (intento)2 (640)
; - body blow (saltando)      (650)
; - body blow (de pie)        (660)
; - En Tsume                 (1050)
; - Bloqueo                  (1060)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Golpe Debil

[Statedef 200]
type    = S                      
MoveType= A                      
physics = S                      
juggle  = 15                      
velset = 0,0                     
ctrl = 0                
PowerAdd = 0                    
SprPriority = 2                  

;Anim

[State -10, ]
type = ChangeAnim
trigger1 = ((p2bodydist x < 10) && (p2statetype = S) && (time = 0))
value = 205

[State -10, ]
type = ChangeAnim
triggerall = time = 0
trigger1 = prevstateno = 200
trigger2 = p2statetype = C
trigger3 = p2statetype = A
trigger4 = p2statetype = L
value = 200
elem = 3

[State -10, ]
type = ChangeAnim
trigger1 = ((p2bodydist x >= 10) && (time = 0))
value = 200

;Sonido

[State 200, 1]
type = PlaySnd
trigger1 = anim = 200
trigger1 = Time = 7
value = 6, 1

[State 200, 1]
type = PlaySnd
trigger1 = anim = 205
trigger1 = Time = 2
value = 6, 1

[State -10, ]
type = PlaySnd
trigger1 = anim = 200
trigger1 = Time = 7
trigger1 = random > 650
value = 3,1

[State -10, ]
type = PlaySnd
trigger1 = anim = 205
trigger1 = Time = 2
trigger1 = random > 650
value = 3,1

;Hitdef

[State 200, 1]
type = HitDef
trigger1 = anim = 200
trigger1 = time = 0
attr = S, NA                     
damage = 45, 0                   
animtype = Light                 
guardflag = MA                   
hitflag = MA                   
priority = 3, Hit               
pausetime = 8, 8                 
sparkno = 0                      
sparkxy = 0, -70               
hitsound = s1, 1                  
guardsound = s1, 0                
ground.type = High               
ground.slidetime = 5            
ground.hittime  = 12             
ground.velocity = -4             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12  
poweradd = 63
givepower = 20     

[State 200, 1]
type = HitDef
trigger1 = anim = 205
trigger1 = time = 0
attr = S, NA                     
damage = 45, 0                   
animtype = Light                 
guardflag = MA                   
hitflag = MA                   
priority = 3, Hit               
pausetime = 8, 8                 
sparkno = 0                      
sparkxy = 0, -86               
hitsound = s1, 1                  
guardsound = s1, 0                
ground.type = High               
ground.slidetime = 5            
ground.hittime  = 12             
ground.velocity = -4             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12  
poweradd = 63
givepower = 20          

;---
;End
;---

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Golpe Fuerte
;---------------------------------------------------------------------------

[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
sprpriority = 1

;Anim

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = P2BodyDist x >= 15
value = 210

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = P2BodyDist x < 15
value = 215

;Sonido

[State 210, 1]
type = PlaySnd
trigger1 = Time = 5
value = 6, 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 3, 2

;Hitdef

[State 210, 2]
type = HitDef
trigger1 = time = 0
trigger1 = P2BodyDist x >= 15
attr = S, NA
animtype  = Medium
damage    = 77
hitflag = MA
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,-70
hitsound   = s1,3
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4
poweradd = 125
givepower = 20 

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = P2BodyDist x < 15
attr = S, NA
animtype  = Medium
damage    = 77
hitflag=MA
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,-90
hitsound   = s1,3
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4
poweradd = 125
givepower = 20 

;End

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Patada Debil

[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
sprpriority = 2

;Anim

[State -10, ]
type = ChangeAnim
triggerall = time = 0
trigger1 = p2bodydist x <= 25
trigger1 = prevstateno != 230
value = 235

[State -10, ]
type = ChangeAnim
triggerall = time = 0
trigger1 = p2bodydist x > 25
trigger2 = prevstateno = 230
value = 230

;------
;Sonido
;------

[State 210, 1]
type = PlaySnd
trigger1 = anim = 230
trigger1 = Time = 7
value = 6, 2

[State 210, 1]
type = PlaySnd
trigger1 = anim = 235
trigger1 = Time = 3
value = 6, 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = random > 500
value = 3, 1

;------
;Hitdef
;------

[State 230, 2]
type = HitDef
triggerall = Time = 0
trigger1 = p2bodydist x <= 25
trigger1 = prevstateno != 230
attr = S, NA
animtype  = Medium
damage    = 45
hitflag = MA
guardflag = L
pausetime = 8,15
sparkno = 0
sparkxy = 0,-30
hitsound   = s1,2
guardsound = s1,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.5
poweradd = 63
givepower = 20 

[State 230, 2]
type = HitDef
triggerall = Time = 0
trigger1 = p2bodydist x > 25
trigger2 = prevstateno = 230
attr = S, NA
animtype  = Medium
damage    = 45
hitflag=MA
guardflag = MA
pausetime = 12,12
sparkno = 0
sparkxy = 0,-60
hitsound   = s1,2
guardsound = s1,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.5
poweradd = 63
givepower = 20 

;---
;End
;---

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Patada Fuerte
;---------------------------------------------------------------------------

[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
sprpriority = 2

;anim

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = P2BodyDist x >= 12
value = 240

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = P2BodyDist x < 12
value = 245

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = prevstateno = 1040
value = 241

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 3
trigger1 = anim = 245
trigger1 = var(1) = 1
x = 4

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 3
trigger1 = anim = 245
trigger1 = var(1) = 0
x = 2

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 7
trigger1 = anim = 240
trigger1 = var(1) = 1
x = 8

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 7
trigger1 = anim = 240
trigger1 = var(1) = 0
x = 2

;Sonido

[State 210, 1]
type = PlaySnd
trigger1 = anim = 245
trigger1 = animelem = 2
value = 6, 2

[State 210, 1]
type = PlaySnd
trigger1 = anim = 245
trigger1 = animelem = 2
value = 3, 2
channel = 4

[State 210, 1]
type = PlaySnd
trigger1 = anim = 240
trigger1 = animelem = 4
value = 6, 2

[State 210, 1]
type = PlaySnd
trigger1 = anim = 240
trigger1 = animelem = 5
value = 3, 2
channel = 4

;Hitdef

[State 240, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 77
hitflag=MA
guardflag = MA
pausetime = 8,8
sparkno = 1
sparkxy = 0,-65
hitsound   = s1,4
guardsound = s1,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
poweradd = 125
givepower = 20 

;End

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;golpe debil abajo
;---------------------------------------------------------------------------

[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 0
ctrl = 1
anim = 400
sprpriority = 2

;------
;Sonido
;------

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 6, 1

[State -10, ]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random > 650
value = 3,1

;------
;hitdef
;------

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 45
priority  = 3
animtype  = Light
hitflag = MA
guardflag = L
pausetime = 10,11
sparkno = 0
sparkxy = 0,-42
hitsound   = s1,1
guardsound = s1,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3
poweradd = 63
givepower = 20 

;---
;End
;---

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
;golpe fuerte abajo
;---------------------------------------------------------------------------

[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 410
sprpriority = 2

;Sonido

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6, 1

[State -10, ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3,2

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 77
animtype  = HARD
hitflag = MA
guardflag = M
pausetime = 10,10
sparkno = 1
sparkxy = -15,-80
hitsound   = s1,3
guardsound = s1,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
ground.cornerpush.veloff = -8
air.velocity = -3,-4
poweradd = 125
givepower = 20 

;Fin
 
[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Patada Debil Abajo
;---------------------------------------------------------------------------

[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 430
sprpriority = 2

; anim

[State 0, ]
type = Width
trigger1 = animelem = 2
edge = 18,0
player = 18,0

;Sonido

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 6, 2
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random > 500
value = 3, 1

;hitdef

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 45
animtype  = Light
hitflag = MAD
guardflag = L
pausetime = 12,12
sparkno = 0
sparkxy = 0,-8
hitsound   = s1,2
guardsound = s1,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 - uniqhitcount
ground.cornerpush.veloff = -4 - uniqhitcount
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
poweradd = 63
givepower = 20 

;Fin

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Patada Fuerte abajo

[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 0
ctrl = 0
anim = 440
sprpriority = 2

;------
;Sonido
;------

[State 440, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,2

[State 440, ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3,4

;------
;hitdef
;------

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 77
hitflag = MAD
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = 0,-10
hitsound   = s1,4
guardsound = s1,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-4.3
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1
poweradd = 125
givepower = 20 

;---
;fin
;---

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Golpe Debil Saltando
;---------------------------------------------------------------------------

[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
sprpriority = 2

;----
;anim
;----

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = vel x = 0
value = 605

[State 0, ]
type = ChangeAnim
triggerall = time = 0
trigger1 = vel x > 0 || vel x < 0
trigger2 = prevstateno = 911
trigger2 = var(11) = 0
value = 600

;------
;Sonido
;------

[State 200, 1]
type = PlaySnd
trigger1 = Time = 8
value = 6, 1

[State 600, ]
type = PlaySnd
trigger1 = Time = 8
trigger1 = random > 650
value = 3,1

;------
;hitdef
;------

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 45
hitflag=MA
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = 0
sparkxy = 0,-58
hitsound   = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
poweradd = 63
givepower = 20 

;---
;fin
;---

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Golpe Fuerte Vertical
;Golpe fuerte Saltando
;Tsubame Otoshi (inicio)
;---------------------------------------------------------------------------

[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 60
ctrl = 0
sprpriority = 2

;----
;anim
;----

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = vel x = 0
value = 615

[State 0, ]
type = ChangeAnim
triggerall = time = 0
trigger1 = vel x > 0 || vel x < 0
trigger2 = prevstateno = 911
trigger2 = var(11) = 0
value = 610

;------
;sonido
;------

[State 200, 1]
type = PlaySnd
trigger1 = Time = 3
value = 6,1

[State 600, ]
type = PlaySnd
trigger1 = Time = 3
value = 3,2

;--------------
;Tsubame Otoshi
;--------------

[State 610, 3]
type = HitDef
triggerall = Time  < 3
triggerall = p2statetype = A
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
attr = A, NT
givepower=40
priority = 1, Miss
pausetime = 0,0
sparkno = -1
hitsound   = -1
guardsound = -1
p2facing=-1
p1stateno=2031
p2stateno=2032

;------
;hitdef
;------

[State 610, 3]
type = HitDef
trigger1 = Time = 3
attr = A, NA
damage = 77
hitflag=MA
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 1
sparkxy = 0,-55
hitsound   = s1,3
guardsound = s1,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
poweradd = 125
givepower = 20 

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Patada Debil Saltando 
;HiEnSou
;---------------------------------------------------------------------------

[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
sprpriority = 2

;anim

;salto neutral
[State -10, ]
type = ChangeAnim
trigger1 = time = 0 && vel x = 0
value = 635

;salto adelante o corto
[State -10, ]
type = ChangeAnim
triggerall = time = 0
trigger1 = vel x > 0 && vel x <=5
trigger2 = prevstateno = 911 && var(11) = 0
trigger3 = anim !=635
value = 631

;salto atras
[State -10, ]
type = ChangeAnim
trigger1 = time = 0 && vel x < 0
value = 632

; HiEnSou
[State -10, ]
type = ChangeAnim
trigger1 = var(1) = 1 && time = 0 && vel x > 5
value = 630

[State -10, ]
type = PlayerPush
trigger1 = anim = 630
value = 0

[State -10, ]
type = VelSet
trigger1 = anim = 630
trigger1 = time > 0 && time < 12
x = 0
y = 0

[State -10, ]
type = Velset
trigger1 = anim = 630 && time > 12
x = 12
y = 5

;sonido

[State 210, 1]
type = PlaySnd
trigger1 = Time = 5
value = 6,2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 2 && anim !=630 && random < 400
value = 3,1

[State 210, 1]
type = PlaySnd
trigger1 = time = 0 && anim =630
value = 3,7
channel = 4

[State 0, ]
type = PlaySnd
trigger1 = time = 1 && anim = 630
value = 4,3

;hitdef

;HiEnSou
[State 630, 2]
type = HitDef
trigger1 = Time = 5
trigger1 = anim = 630
attr = A, NA
damage = 77,5
hitflag=MA
guardflag = HA
priority = 3
pausetime = 10,18
sparkno = 3
sparkxy = 0,-35
animtype = diaup
hitsound   = s1,5
guardsound = s1,0
ground.type = Low
ground.slidetime = 80
ground.hittime  = 35
ground.velocity = 0,-5
air.velocity = -8,2
fall=1
FALL.TIME = 7
envshake.time = 20
envshake.freq = 30
envshake.ampl = 6
envshake.phase = 80
fall.envshake.time = 16
fall.envshake.freq = 5
fall.envshake.ampl = 10
fall.envshake.phase = 40
poweradd = 125
givepower = 20 

;patada debil
[State 630, 2]
type = HitDef
triggerall = Time = 0
trigger1 = anim != 630
attr = A, NA
damage = 45
hitflag=MA
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = 1
sparkxy = 0,-35
hitsound   = s1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3
poweradd = 63
givepower = 20 

;jumpback (vel)
[State 0, V]
type = VelSet
trigger1 = anim = 630 && movecontact && moveguarded
x = -3
y = -8

[State 0, ]
type = PlaySnd
trigger1 = anim = 630 && movecontact && moveguarded
value = 4,13
volume = 120
channel = 4

;jumpback (end)
[State 0, b]
type = ChangeState
trigger1 = anim = 630 && movecontact && moveguarded
value = 50

[State 0, a]
type = ChangeState
trigger1 = anim = 630 && Pos Y > -5
value = 634

;----------------------
;aterrizar de Hi En Sou

[Statedef 634]
type    = S                      
MoveType= I                      
physics = S                                         
velset = 0,0 
anim = 634                    
ctrl = 0                
PowerAdd = 0  
      
;anim    

[State 0, ]
type = PosSet
trigger1 = 1
y = 0  

[State 0, V]
type = VelSet
triggerall = time = 12 
trigger1 =  p2bodydist x >= 0
trigger2 = FrontEdgeBodyDist < 30 && p2bodydist x < 5 && p2movetype = H
x = -3
y = -8

[State 0, yep,jump]
type = ChangeState
triggerall = time = 12
trigger1 =  p2bodydist x >= 0
trigger2 = FrontEdgeBodyDist < 30 && p2bodydist x < 5 && p2movetype = H
value = 50
ctrl = 0

[State 0, ]
type = VelSet
trigger1 = 1
x = 4

[State 0, ]
type = Turn
trigger1 = animtime = 0 && p2bodydist x < 1 

;sfx

[State 0, ]
type = MakeDust
trigger1 = timemod = 2,1 && time < 16
pos = 0,0

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 8,1

[State 0, ]
type = PlaySnd
trigger1 = time = 17
value = 8,9

[State 0, ]
type = PlaySnd
trigger1 = time = 16
value = 7,20
channel = 4

;fin

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Patada Fuerte Saltando, Intento de Tsubame Otoshi
 
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2

;anim

;neutral
[State 0, ]
type = ChangeAnim
trigger1 = time = 0 && vel x = 0
value = 645

;atras
[State 0, ]
type = ChangeAnim
triggerall = time = 0
trigger1 = vel x < 0
trigger2 = prevstateno = 911
trigger2 = var(11) = 0
value = 640

;adelante
[State 0, ]
type = ChangeAnim
trigger1 = time = 0 && vel x > 0
value = 641

;snd

[State 210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 6, 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 3, 2

;Tsubame Otoshi

[State 610, 3]
type = HitDef
triggerall = Time  = 0 && p2statetype = A
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
attr = A, NT
givepower=40
priority = 1, Miss
pausetime = 0,0
sparkno = -1
hitsound   = -1
guardsound = -1
p2facing=-1
p1stateno=2031
p2stateno=2032

;patada fuerte

[State 640, 3]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 77
hitflag=MA
guardflag = HA
priority = 7
pausetime = 12,12
sparkno = 1
sparkxy = 0,-40
hitsound   = 5,3
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4
poweradd = 125
givepower = 20 

;---------------------------------------------------------------------------
;Golpe extra fuerte saltando

[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 650
sprpriority = 2

;anim

[State 0, ]
type = Width
trigger1 = animelem = 3 || animelem = 4|| animelem = 5
edge = 45,15
player = 45,15

[State 0, ]
type = VelSet
trigger1 = movecontact && var(1) = 1 
x = 0
y = 0
persistent = 0

[State 0, ]
type = VelAdd
trigger1 = movecontact && var(1) = 1 && prevstateno != 901
x = -3
y = -3
persistent = 0

[State 0, ]
type = VelAdd
trigger1 = movecontact && var(1) = 1 && prevstateno = 901
x = 3
y = -4
persistent = 0

;snd

[State 650, 1]
type = PlaySnd
trigger1 = Time = 5
value = 6, 2

[State 650, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 3, 4

[State 650, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 100
guardflag = HA
priority = 4
pausetime = 6,12
sparkno = 1
sparkxy = -10,-40
hitsound   = s1,5
guardsound = s1,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,-5
air.velocity = -3,-4
fall = 1
poweradd = 125
givepower = 20 

;fin

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;--------------------------

;---------------------------------------------------------------------------
; En Yoku

[Statedef 220]
type = S
movetype = A
physics = N
ctrl = 0
anim = 220

;anim

[State 1032, 1]
type = VelSet
trigger1 = Time = 8
x = 3;5
y = -3.5

[State 2022, gravity]
type=VelAdd
Trigger1=Time > 8
;x=0.4
y=0.4

[State 0, ]
type = StateTypeSet
trigger1 = time = 8
statetype = A
physics = N

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 8
value = 3,3

[State 0, ]
type = PlaySnd
trigger1 = time = 8
value = 4,3

;hitdef

[State 1032, 10]
type=HitDef
trigger1=Time = 0
hitflag=MAF
attr=S, SA
animtype=hard
damage=77
hitflag=MA
guardflag=H
pausetime=6,9
sparkno=1
sparkxy=0,-55
hitsound=S1,4
guardsound=S1,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-8.5
air.velocity=-2,-3
airguard.velocity=-3,-2.5
poweradd = 125
givepower = 20 

;---
;end
;---

[State 220, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 1
value = 221

;----------------
;terminar En Yoku
;----------------

[Statedef 221]
type=S
movetype=A
physics=S
juggle=0
poweradd=0
velset=0,0
ctrl=0
anim=221

;----
;anim
;----

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 4,5

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time < 8
x = .5

;---
;end
;---

[State 2024, ]
type=ChangeState
Trigger1=AnimTime = 0
value=0
ctrl=1

;-------------------------------------
;Senkai Kyaku para tipo 2001

[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

;----
;anim
;----

[State -10, ]
type = VelSet
trigger1 = time > 0 && time < 7
x = 2.8

;---
;snd
;---

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = 2,14

[State 0, ]
type = PlaySnd
trigger1 = time = 1
value = 6,2

;------
;hitdef
;------

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Medium
damage    = 45, 0
guardflag = H
pausetime = 8,8
sparkno = 1
sparkxy = -10,-65
hitsound   = s1,2
guardsound = s1,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 15
ground.velocity = 1
air.velocity = -2.2,-3.2
poweradd = 63
givepower = 20 

[State 240, 2]
type = HitDef
triggerall = hitcount !=2
trigger1   = time > 15
attr = S, SA
animtype  = Medium
damage    = 45, 0
guardflag = H
pausetime = 8,8
sparkno = 1
sparkxy = -10,-65
hitsound   = s1,2
guardsound = s1,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 15
ground.velocity = 0
air.velocity = -2.2,-3.2
poweradd = 63
givepower = 20 

;---
;End
;---

[State 0, ]
type = ChangeState
trigger1 = command = "a"
trigger1 = time >= 18
value = 255

[State 240, 4]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;--------------
;Tsuika Kougeri
;--------------

[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1105
sprpriority = 2

;----
;Anim
;----

[State -10, ]
type = VelSet
trigger1 = time > 10 && time < 16
x = 3

;---
;snd
;---

[State 0, ]
type = PlaySnd
trigger1 = time = 10
value = 6,2

;------
;Hitdef
;------

[State 240, 2]
type = HitDef
trigger1 = time = 1
attr = S, SA
animtype  = Medium
damage    = 45, 0
guardflag = H
pausetime = 2,8
sparkno = 1
sparkxy = -10,-65
hitsound   = s1,2
guardsound = s1,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -15;-6
air.velocity = -2.2,-3.2
poweradd = 63
givepower = 20 

;---
;fin
;---

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Body blow
;---------------------------------------------------------------------------

[Statedef 660]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
anim = 660
ctrl = 0
velset = 0,0
sprpriority = 1

;Sonido

[State 210, 1]
type = PlaySnd
trigger1 = Time = 13
value = 6, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 12
value = 3, 4

;Hitdef

[State 660, 2]
type = HitDef
trigger1 = time = 0 && p2bodydist x >= 0
attr = S, NA
animtype  = Medium
damage    = 100
guardflag = MA
pausetime = 18,18
sparkno = 3
sparkxy = 0,-90
hitsound   = s1,5
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3.5, -6
air.velocity = -2.5,-4
fall = 1
fall.recover = 0
poweradd = 63
givepower = 20 

;End

[State 660, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

;--------------
;En Tsume
;--------------

[Statedef 1050]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1050
sprpriority = 2

;Anim

[State -10, ]
type = VelSet
trigger1 = time > 3 && time < 22
x = 1.3

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 10
value = 6,2

;Hitdef

[State 240, 2]
type = HitDef
trigger1 = time = 1
attr = S, SA
animtype  = Medium
damage    = 45, 0
guardflag = H
pausetime = 2,8
sparkno = 1
sparkxy = -10,-65
hitsound   = s1,2
guardsound = s1,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
air.velocity = -2.2,-3.2
poweradd = 63
givepower = 20 

;fin

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

;--------------
; Bloqueo
;--------------

[Statedef 1060]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1060
sprpriority = 2

;Anim

[State -10, ]
type = VelSet
trigger1 = time > 27 && time < 29
x = 2

[State -10, ]
type = VelSet
trigger1 = time = 29
x = 0

;snd

[State 0, ]
type = PlaySnd
trigger1 = time = 10
value = 6,2

;Hitdef

[State 0, ]
type = ReversalDef
trigger1 =  p2bodydist x > 7
reversal.attr = SA,NA,SA,HA
priority = 6
pausetime = 0, 25
hitsound = s1,0
ground.slidetime = 12
ground.velocity = -15

;fin
 
[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
