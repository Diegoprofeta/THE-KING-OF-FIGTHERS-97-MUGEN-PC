;-=========================================================================-
; * Character:          Clark Steel
; * From :              The King of Fighters 98 (c) SNK/SNK Playmore
; * Mugen converter:    OrochiKOF97 & Scal
; * Contents:           Misc. KOF template
;-=========================================================================-

;--------------------------------------------------------------------------
; KOF 2K series Roll / Emergency Roll / Counter Attack
;--------------------------------------------------------------------------
 
;--------------
; Roll Backward
;--------------

[Statedef 701]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 5200
sprpriority = -1

[State 701, NoHit]
type = NotHitBy
trigger1 = AnimElem = 7,<0
value = ,AA,AP

[State 701, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 10
PalBright = 0, 0, 0
PalContrast = 250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3

[State 701, StartVelX]
type = VelSet
trigger1 = AnimElem = 3,=0
x = -5

[State 701, StopVelX]
type = VelSet
trigger1 = AnimElem = 7,=1
x = 0

[State 701, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 701, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),3

[State 701, GoToStand] 
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------
; Roll Forward
;-------------

[Statedef 700]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 700
sprpriority = -1

[State 700, NoHit]
type = NotHitBy
trigger1 = AnimElem = 7,<0
value = ,AA,AP

[State 700, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 10
PalBright = 0, 0, 0
PalContrast = 250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3

[State 700, StartVelX] 
type = VelSet
trigger1 = AnimElem = 3,=0
x = ifelse(PrevStateNo = 100 || PrevStateNo = 101,7,5)

[State 700, StopVelX] 
type = VelSet
trigger1 = AnimElem = 7,=1
x = 0

[State 700, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 700, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),3

[State 700,GoToStand] 
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------
; Emergency Roll Forward
;-----------------------

[Statedef 702]
type = S
movetype = I
physics = N
anim = 700
velset = 0,0
ctrl = 0
sprpriority = -1

[State 702, FreezeP2]
type = SuperPause
trigger1 = Time = 0
persistent = 1
ignorehitpause
time = 11
pos = -8,-80
poweradd = -1000
movetime = 9
darken = 0
anim = S7060

[State 702, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 702, AfterImage]
type = AfterImage
trigger1 = Time = 3
time = 30
PalBright = 0, 0, 0
PalContrast = 250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 9
FrameGap = 3

[State 702, StartVelX] 
type = VelSet
trigger1 = AnimElem = 3,=0
x = 5

[State 702, StopVelX] 
type = VelSet
trigger1 = AnimElem = 7,=1
x = 0

[State 702, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 702, LeftEdgeNoCornerPush]
type = Width
trigger1 = AnimElem = 3,>=0 && AnimElem = 7,<=0
edge = 10,0 

[State 700, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),3

[State 702, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------
; Emergency Roll Backward
;------------------------

[Statedef 703]
type = S
movetype = I
physics = N
anim = 700
velset = 0,0
ctrl = 0
sprpriority = -1

[State 703, FreezeP2]
type = SuperPause
trigger1 = Time = 0
persistent = 1
ignorehitpause
time = 11
pos = -8,-80
poweradd = -1000
movetime = 9
darken = 0
anim = S7060

[State 703, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 703, AfterImage]
type = AfterImage
trigger1 = Time = 3
time = 30
PalBright = 0, 0, 0
PalContrast = 250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 9
FrameGap = 3

[State 703, StartVelX]
type = VelSet
trigger1 = AnimElem = 3,=0
x = -5

[State 703, StopVelX]
type = VelSet
trigger1 = AnimElem = 7,=1
x = 0

[State 703, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 703, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),3

[State 703, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------------------
; Counter Knockdown Kick (Stand C+D)
;-----------------------------------
[Statedef 704]
type = S
movetype = A
physics = S
juggle = 15
ctrl = 0
velset = 0,0
anim = ifelse(var(58),705,704)
sprpriority = 2

[State 704, FreezeP2]
type = SuperPause
trigger1 = !Time
persistent = 0
time = 3
pos = -8,-80
poweradd = -1000
movetime = 0
darken = 0
anim = S7060

[State 704, NoHit]
type = NotHitBy
trigger1 = Anim = 704 && AnimElem = 7,<0
trigger2 = Anim = 705 && AnimElem = 4,<0
trigger3 = Anim = 704 && AnimElem = 10,>=0
value = SCA

[State 704, Pause]
type = Pause
trigger1 = Anim = 704 && AnimElem = 7,<0
trigger2 = Anim = 705 && AnimElem = 4,<0
time = 2
movetime = 2

[State 704, Hit]
type = Hitdef
trigger1 = Anim = 704 && animelem = 7
trigger2 = Anim = 705 && animelem = 4
attr = S, NA
hitflag = MA
guardflag = M
animtype = Hard
air.animtype = Back
fall = 1
fall.animtype = Back
fall.yvelocity = -3.4
priority = 7,Hit
damage = 49
pausetime = 11, 13
guard.pausetime = 12, 15
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = 8, -97
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = Low
guard.slidetime = 22
guard.hittime = 44
air.hittime = 0
guard.ctrltime = 44
ground.velocity = -4.2, -8.8
guard.velocity = -11.1
air.velocity = -4, -6.1
getpower = 184, 184
givepower = 21, 21
yaccel = .55

[State 704, VelX1]
type = PosAdd
triggerall = Anim = 704
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 6

[State 704, VelX2]
type = PosAdd
triggerall = Anim = 704
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
x = 8

[State 704, VoiceSound]
type = PlaySnd
trigger1 = Time = 1
value = ifelse(var(54),1000,0),2

[State 704, MoveSound]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 704, GotoStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Quick Emergency Evade
;---------------------------------------------------------------------------
[Statedef 705]
type = S
movetype = I
physics = N
anim = 700
velset = 0,0
ctrl = 0

[State 705, Spark]
type = SuperPause
trigger1 = !Time
persistent = 1
ignorehitpause
time = 8
pos = -8,-80
poweradd = -1000
movetime = 8
darken = 0
anim = S7060

[State 705, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 705, Invincible]
type = NotHitBy
trigger1 = AnimElem = 7,<0
value = SCA

[State 705, Velocity]
type = PosAdd
trigger1 = AnimElem = 3,>=0 && AnimElem = 7,<0
x = 5

[State 705, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 705, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dodge up
;----------
[Statedef 310]
type = S
physics = S
anim = ifelse(var(58),111,110)
ctrl = 0
sprpriority = -1

[State 310, NoHit]
type = NotHitBy
trigger1 = 1
value = ,AA,AP

[State 310, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 310, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),3

[State 310, UnbufferDodgeAttack]
type = VarSet
trigger1 = !Time
var(29) = 0

[State 310, BufferDodgeAttack]
type = VarSet
triggerall = AnimElem = 3,>=0
trigger1 = Command = "a"
trigger2 = Command = "b"
trigger3 = Command = "c"
trigger4 = Command = "x"
trigger5 = Command = "y"
trigger6 = Command = "z"
var(29) = 1

[State 310, GoToDodgeDown]
type = ChangeState
trigger1 = !AnimTime
value = 311

; Dodge down
;------------
[Statedef 311]
type = S
physics = S
anim = ifelse(var(58),116,115)
ctrl = 0
sprpriority = -1

[State 311, NoHit]
type = NotHitBy
trigger1 = 1
value = ,AA,AP

[State 311, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 311, GoToStand]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 0

;---------------------------------------------------------------------------
; Power charge
;---------------------------------------------------------------------------
; Start charge
[Statedef 975]
type = S
movetype = I
physics = S
anim = ifelse(var(58),985,975)
velset = 0,0
ctrl = 0

[State 975, AuraHelper]
type = Helper
trigger1 = !NumHelper(7045)
helpertype = normal
name = "AuraHelper"
anim = 7045
id = 7045
stateno = 7045
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1

[State 975, GoToEnd]
type = ChangeState
trigger1 = !(Command = "holdb" && Command = "holdc")
value = 977

[State 975, GoToIncrease]
type = ChangeState
trigger1 = !AnimTime
value = 976

; Increase power
[Statedef 976]
type = S
movetype = I
physics = S
anim = ifelse(var(58),986,976)
velset = 0,0
ctrl = 0

[State 976, GoToEnd]
type = ChangeState
trigger1 = !(Command = "holdb" && Command = "holdc")
trigger2 = Power >= 3000
value = 977

; End charge
[Statedef 977]
type = S
movetype = I
physics = S
anim = ifelse(var(58),987,977)
velset = 0,0
ctrl = 0

[State 977, GoToStand]
type = ChangeState
trigger1 = !AnimTime && !var(58)
trigger2 = Time = 1 && var(58)
value = 0
ctrl = 1

; Aura helper
[Statedef 7045]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1234
sprpriority = 3
velset = 0, 0

[State 7045, IncreasePower]
type = PowerAdd
trigger1 = Time
value = 12

[State 7045, StartFXSound]
type = PlaySnd
trigger1 = Time = 2
value = S3,0
channel = 3

[State 7045, StartVoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),27
channel = 4

[State 7045, Display]
type = ChangeAnim
trigger1 = (Parent, StateNo = 976) && Anim != 7045
value = 7045

[State 7045, Bind]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 7045, StopFxSound]
type = StopSnd
trigger1 = !((Parent, StateNo = 975) || (Parent, StateNo = 976))
channel = 3

[State 7045, StopVoiceSound]
type = StopSnd
trigger1 = !((Parent, StateNo = 975) || (Parent, StateNo = 976))
channel = 4

[State 7045, StopChargeFX]
type = RemoveExplod
trigger1 = !((Parent, StateNo = 975) || (Parent, StateNo = 976))
trigger1 = NumExplod(7045)
id = 7045

[State 7045, Delete]
type = DestroySelf
trigger1 = !((Parent, StateNo = 975) || (Parent, StateNo = 976))

;--------------------------------------------------------------------------
; Guard Crush (see statedef -3 for coding details)
;--------------------------------------------------------------------------
[Statedef 9000]
type = S
physics = S
anim = 9000
ctrl = 0

[State 9000, Freeze]
type = Pause
trigger1 = !Time
time = 1
movetime = 1
ignorehitpause = 1

[State 9000, Flash]
type = BGPalFX
trigger1 = Time = 2
value = 248,248,248
time = 3
under = 1
ignorehitpause = 1

[State 9000, MessageP1]
type = Explod
triggerall = numexplod(7250) <= 0 && teamside = 1 
trigger1 = !time
anim = 7250
id = 7250
pos = 0,90
postype = left
bindtime = -1
sprpriority = 2
supermove = 1
facing = 1
ontop = 0
ownpal = 1
ignorehitpause = 1 
persistent = 0

[State 9000, MessageP2]
type = Explod
triggerall = numexplod(7251) <= 0 && teamside = 2
trigger1 = !time
anim = 7251
id = 7251
pos = -98,90
postype = right
bindtime = -1
sprpriority = 2
supermove = 1
facing = 1
ontop = 0
ownpal = 1
ignorehitpause = 1 
persistent = 0

[State 9000, VarReset]
type = VarSet
trigger1 = !time
var(11) = 0
ignorehitpause = 1

[State 9000, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
ignorehitpause = 1


;--------------------------------------------------------------------------
; Throw escape
;--------------------------------------------------------------------------

; Escaped
[Statedef 960]
type = S
movetype = H
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 960, Face2Face]
type = TargetFacing
trigger1 = !Time
value = -1

[State 960, PosOnGound]
type = PosSet
trigger1 = !Time
y = 0

[State 960, Push]
type = PlayerPush
trigger1 = 1
value = (P2BodyDist X > 0)

[State 960, MakeFrontCpace]
type = Width
trigger1 = !Time
edge = 40,0

[State 960, Bind]
type = TargetBind
trigger1 = !Time
pos = 36,0

[State 960, EscapedAnim]
type = ChangeAnim
trigger1 = Time = 1 && Anim != 960
value = 960

[State 960, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 960, FXSound]
type = PlaySnd
trigger1 = !Time
value = S1,8

[State 960, VoiceSound]
type = PlaySnd
trigger1 = Anim = 960 && AnimElem = 2,=0
value = ifelse(var(54),1000,0),4

[State 960, Flash]
type = BGPalFX
trigger1 = Anim = 960 && AnimElem = 2,=0
time = 1
add = 255,255,255
ignorehitpause = 1

[State 960, NoFg]
type = AssertSpecial
trigger1 = Anim = 960 && AnimElem = 2,=1
flag = noFg

[State 960, VelX]
type = VelSet
trigger1 = Anim = 960 && AnimElem = 2,=1
x = -12
persistent = 0
ignorehitpause = 1

[State 960, Friction]
type = VelMul
trigger1 = 1
x = .75
persistent = 1
ignorehitpause = 1

[State 960, GoToStand]
type = ChangeState
trigger1 = Anim = 960 && !AnimTime
value = 0
ctrl = 1

; Opponent escape
;----------------
[Statedef 965]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 965, PosOnGound]
type = PosSet
trigger1 = !Time
y = 0

[State 965, Push]
type = PlayerPush
trigger1 = 1
value = (P2BodyDist X > 0)

[State 965, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 965, CustomEscapeAnimA]
type = ChangeAnim
triggerall = Time = 0 && SelfAnimExist(5940)
trigger1 = authorname = "Hh" || authorname = "M.M.R." || authorname = "Mouser" || authorname = "CAMRAT Type KOF"
trigger2 = authorname = "Tin" || authorname = "Nyankoro" || authorname = "ryokucha"
trigger3 = authorname = "Third" || authorname = "adamskie" || authorname = "Bad Darkness" || authorname = "Warusaki3"
trigger4 = AuthorName = "NHK" || AuthorName = "Nyankoro" || AuthorName = "Nyan™Kiryu"
trigger5 = AuthorName = "aoao" || AuthorName = "Mr.X-file"
trigger6 = AuthorName = "laiso_7" || AuthorName = "yu-go" || AuthorName = "MEKA"
trigger7 = AuthorName = "CROSSõCAT" || AuthorName = "CrossCat"
trigger8 = AuthorName = "Jesuszilla" || AuthorName = "Vans" || AuthorName = "KoopaKoot"
trigger9 = AuthorName = "Scal" || AuthorName = "Dark Saviour" || AuthorName = "OrochiKOF97 & Scal"
trigger10 = AuthorName = "N64Mario" && Name = "Zero" && FVar(17) = 1
value = 5940

[State 965, CustomEscapeAnimB]
type = ChangeAnim
triggerall = Time = 0 && SelfAnimExist(5910) && !SelfAnimExist(5940)
trigger1 = authorname = "Hh" || authorname = "M.M.R." || authorname = "Mouser" || authorname = "CAMRAT Type KOF"
trigger2 = authorname = "Tin" || authorname = "Nyankoro" || authorname = "ryokucha"
trigger3 = authorname = "Third" || authorname = "adamskie" || authorname = "Bad Darkness" || authorname = "Warusaki3"
trigger4 = AuthorName = "NHK" || AuthorName = "Nyankoro" || AuthorName = "Nyan™Kiryu"
trigger5 = AuthorName = "aoao" || AuthorName = "Mr.X-file"
trigger6 = AuthorName = "laiso_7" || AuthorName = "yu-go" || AuthorName = "MEKA"
trigger7 = AuthorName = "CROSSõCAT" || AuthorName = "CrossCat"
trigger8 = AuthorName = "Jesuszilla" || AuthorName = "Vans" || AuthorName = "KoopaKoot"
trigger9 = AuthorName = "Scal" || AuthorName = "Dark Saviour" || AuthorName = "OrochiKOF97 & Scal"
trigger10 = AuthorName = "N64Mario" && Name = "Zero" && FVar(17) = 1
value = 5910

[State 965, BasicHitAnim]
type = ChangeAnim
trigger1 = !Time && Anim != 5910 && Anim !=5940
trigger1 = SelfAnimExist(200)
value = 200

[State 965, GetHitAnimPart1]
type = ChangeAnim
trigger1 = !Time && Anim != 5910 && Anim !=5940 && Anim != 200
value = 5002

[State 965, GetHitAnimPart2]
type = ChangeAnim
trigger1 = Anim = 5002 && !AnimTime
value = 5007

[State 965, VelX]
type = VelSet
trigger1 = !(EnemyNear, BackEdgedist)
trigger1 = EnemyNear, Vel X
x = (EnemyNear, Vel X) / .75
persistent = 0
ignorehitpause = 1

[State 965, Friction]
type = VelMul
trigger1 = Vel X
x = .75
persistent = 1
ignorehitpause = 1

[State 965, GoToStand]
type = SelfState
trigger1 = (Anim != [5002,5007]) && !AnimTime
trigger2 = Anim = 5007 && Time >= 18
value = 0
ctrl = 1
