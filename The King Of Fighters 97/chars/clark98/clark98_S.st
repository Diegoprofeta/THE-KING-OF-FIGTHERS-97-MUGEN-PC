;-=========================================================================-
; * Character:          Clark Steel
; * From :              The King of Fighters 98 (c) SNK/SNK Playmore
; * Mugen converter:    OrochiKOF97 & Scal
; * Contents:           Special moves
;-=========================================================================-

;---------------------------------------------------------------------------
; Super Argentina Backbreaker
;---------------------------------------------------------------------------
;-------------
; Grab Attempt
;-------------
[Statedef 900]
type = S
movetype = A
physics = S
juggle = 8
velset = 0,0
ctrl = 0
anim = 900
sprpriority = 2
facep2 = 1

[State 900, CannotBeGuarded]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 900, GrabAttempt]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(14) <=  0
trigger1 = prevstateno !=  (3001 || 3101 || 4501)
trigger1 = P2StateNo !=  [130,132]
trigger1 = P2StateNo !=  140 && P2StateNo !=  [150,155]
trigger1 = P2StateNo !=  [40,52]
ID = 900
attr = S, ST
hitflag = M
priority = 4, Dodge
sparkno = -1         
ground.velocity = 0,-13
yaccel = .5
guard.dist = 50
getpower = 121,121
givepower = 21,0
p1stateno = 901
p2stateno = 910
p2facing = 1
numhits = 0

[State 900, GrabMiss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-------------------------------------------
; Super Argentina BackBreaker - Grab Success
;-------------------------------------------
[Statedef 901]
type = S
physics = S
movetype = A
anim = 901
ctrl = 0
velset = 0,0
sprpriority = 2

[State 901, MakeSpace]
type = Width
trigger1 = 1
edge = 44,0

[State 901, SpecialGrabSpark]
type = Explod
trigger1 = animelem = 3
anim = 7020
pos = 48,-56
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 901, ClarkSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = ifelse(var(54),1000,0),9

[State 901, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,9

[State 901, SendToBack]
type = SprPriority
trigger1 = AnimElem = 5
value = -1

[State 901, WindSound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,10

[State 901, Bind1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElem = 1,>= 0
trigger1 = AnimElem = 2,< 0
pos = (Target,const(size.head.pos.x)) + 36,0

[State 901, Bind2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElem = 2,>= 0
trigger1 = AnimElem = 3,< 0
pos = (Target,const(size.head.pos.x)) + 36,0

[State 901, Bind3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElem = 3,>= 0
trigger1 = AnimElem = 4,< 0
pos = (Target,const(size.head.pos.x)) + 24,0

[State 901, Bind4]
type = TargetBind
trigger1 = AnimElem = 4,>= 0
trigger1 = AnimElem = 5,< 0
pos = 36,-88

[State 901, Bind5]
type = TargetBind
trigger1 = AnimElem = 5,>= 0
trigger1 = AnimElem = 6,< 0
pos = 20,-112

[State 901, Bind6]
type = TargetBind
trigger1 = AnimElem = 6
pos = 8,-168

[State 901, BringToTop]
type = SprPriority
trigger1 = AnimElem = 8
value = 2

[State 901, ReceptionDetection]
type = Hitdef
trigger1 = AnimElem = 8
ChainID = 900
ID = 901
attr = S, ST
hitflag = A
priority = 7,Hit
sparkno = -1
fall = 1
fall.recover = 0
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
numhits = 0
p1stateno = 902
p2stateno = 912
p2facing = 1

[State 901, GoToTargetMissed]
type = ChangeState
trigger1 = Time = 180                       ; Run out of time
trigger2 = NumTarget && AnimElem = 5,>=0    ; Opponent has already hit the ground
trigger2 = !(Target, Pos Y)
trigger3 = !NumTarget                       ; No more target
value = 904
ctrl = 0

;---------------------------------------------------------------------
; Super Argentina BackBreaker succeed - Clark is backbreaking opponent
;---------------------------------------------------------------------
[Statedef 902]
type = S
physics = S
movetype = A
anim = 902
ctrl = 0
velset = 0,0
sprpriority = -1

[State 902, ScreenShaking]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -4

[State 902, BoneCrushSound]
type = PlaySnd
trigger1 = !Time
value = 1,11

[State 902, LandSound]
type = PlaySnd
trigger1 = !Time
value = 1,12

[State 902, SpecialMoveSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 0,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 902, GroundWave]
type = Explod
trigger1 = !Time
anim = 7030
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 902, TBind1]
type = TargetBind
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 2, < 0
pos = 0,-86

[State 902, TBind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 0,-100

[State 902, GoToThrowOpponent]
type = ChangeState
trigger1 = !AnimTime
value = 903

;---------------------------------------------------------------
; Super Argentina BackBreaker - Clark throws enemy to the ground
;---------------------------------------------------------------
[Statedef 903]
type = S
physics = S
movetype = A
anim = 903
ctrl = 0
velset = 0,0
sprpriority = -1

[State 903, Turn]
type = Turn
trigger1 = !Time

[State 903, MakeSpace]
type = Width
trigger1 = !Time
edge = 48,0

[State 903, Bind1]
type = TargetBind
trigger1 = AnimElem = 1, >=  0
trigger1 = AnimElem = 2, < 0
pos = 28,-108

[State 903, Bind2]
type = TargetBind
trigger1 = AnimElem = 2, >=  0
trigger1 = AnimElem = 3, < 0
pos = 48,-96

[State 903, Bind3]
type = TargetBind
trigger1 = AnimElem = 3,=0
pos = 80,-16

[State 903, ElbowDetection]
type = Varset
triggerall = RoundState = 2
triggerall = AnimElem = 4,<0
trigger1 = Command = "felbow"
trigger2 = Command = "ifelbow"
var(7) = 1

[State 903, GoToElbow]
type = ChangeState
triggerall = RoundState = 2
triggerall = AnimElem = 3,>3
trigger1 = Var(7) = 1
value = 950

[State 903, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,10

[State 903, DropSound]
type = PlaySnd
trigger1 = P2StateNo = 914
value = 1,12
persistent = 0

[State 903, DropSound2]
type = PlaySnd
trigger1 = P2StateNo = 915
value = 5110,0
channel = 1
persistent = 0

[State 903, GroundWaveBG]
type = Explod
trigger1 = P2StateNo = 914
anim = 7035
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2
persistent = 0

[State 903, GroundWaveFG]
type = Explod
trigger1 = P2StateNo = 914
anim = 7036
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3
persistent = 0

[State 903, ScreenShaking]
type = Envshake
trigger1 = P2StateNo = 914
time = 25
ampl = -2
freq = 30
persistent = 0

[State 903, Finished]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------
; Super Argentina BackBreaker - Clark misses coming down enemy 
;---------------------------------------------------------------
[Statedef 904]
type = A
physics = N
movetype = A
anim = 904
ctrl = 0

[State 904, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - fly upwards
;-----------------------------------------------------------
[Statedef 910]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 910, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 910, 4]
type = Nothitby
trigger1 = 1
value = SCA

[State 910, Fly Upwards]
type = ChangeAnim2
trigger1 = !Time
value = 910

[State 810, BringToFront]
type = sprpriority
trigger1 = AnimElem = 5
value = 2

[State 910, StartVelY]
type = Velset
trigger1 = AnimElem = 6
y = GetHitVar(yvel)

[State 910, Gravity]
type = VelAdd
trigger1 = AnimElem = 6,>=0
y = GetHitVar(yaccel)

[State 910, GoToComingDown]
type = ChangeState
trigger1 = Vel Y > 0
value = 911

;-----------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - coming down
;-----------------------------------------------------------
[Statedef 911]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = -1

[State 910, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 911, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 911, Hitby]
type = Hitby
trigger1 = 1
value = S, ST

[State 911, GoToHitGround]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 5100

;-------------------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - Currently backbreak
;-------------------------------------------------------------------
[Statedef 912]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 912, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 912, InMyArmsPlease]
type = ChangeAnim2
trigger1 = !Time
value = 912

[State 912, Damage]
type = LifeAdd
trigger1 = !Time
value = -108
kill = 0

[State 912, MakeSpace]
type = Width
trigger1 = 1
value = -30,-30

[State 912, GoToThrownOnGround]
type = ChangeState
trigger1 = !Animtime
value = 913

;----------------------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - Being thrown on ground
;----------------------------------------------------------------------
[Statedef 913]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 913, GetDown!]
type = ChangeAnim2
trigger1 = !Time
value = 913

[State 913, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 913, StartFallVels]
type = VelSet
trigger1 = AnimElem = 3
x = 14
y = 8

[State 913, GoToBounce]
type = ChangeState
trigger1 = Vel Y > 0 
trigger1 = Pos Y + Vel Y + 1 >= 0
value = 914

;--------------------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - bouncing from ground
;--------------------------------------------------------------------
[Statedef 914]
type = L
physics = N
movetype = H
velset = 0,0
ctrl = 0

[State 914, NoPush]
type = PlayerPush
trigger1 = TeamMode = Simul
value = 0

[State 914, Boing!]
type = ChangeAnim2
trigger1 = !Time
value = 914

[State 914, Turn] 
type = Turn
trigger1 = !Time

[State 914, PosOnGround]
type = PosSet
trigger1 = !Time
y = 0

[State 914, ScreenShaking]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -4
persistent = 0

[State 914, StartBounceVels]
type = VelSet
trigger1 = AnimElem = 3,=0
x = GetHitVar(fall.xvel)
y = GetHitVar(fall.yvel)

[State 914, Gravity]
type = Veladd
trigger1 = AnimElem = 3,>0
y = .5 

[State 914, Damage]
type = LifeAdd
trigger1 = !Time
value = -98

[State 914, GoToLieDown]
type = ChangeState
trigger1 = Vel Y > 0 
trigger1 = Pos Y + Vel Y >= 0
value = 915

;-------------------------------------------------------
; Enemy Thrown by Super Argentina BackBreaker - LieDown
;-------------------------------------------------------
[Statedef 915]
type = L
physics = S
movetype = H
ctrl = 0
velset = 0,0

[State 915, NoPush]
type = PlayerPush
trigger1 = TeamMode = Simul
value = ifelse(Time < 10,0,1)

[State 915, KeepLying]
type = ChangeAnim2
trigger1 = !Time
value = 915

[State 915, PosOnGround]
type = PosSet
trigger1 = !Time
y = 0

[State 915, GoToLieDeath]
type = SelfState
triggerall = !Alive
trigger1 = !Time
trigger1 = P2StateNo = 803
trigger2 = !AnimTime
value = 5150

[State 915, GoToLieDown]
type = SelfState
trigger1 = Alive
trigger1 = !AnimTime
value = 5120

;---------------------------------------------------------------------------
; Frankensteiner
;
; There are 2 special binds using the "BindToTarget" SCtrl. Because those 2 binds aim opponent's head, they may give 
; strange results if opponent doesn't have the right head.pos coordinates in his constants. Be advised that this is not 
; an error coming from Clark. 
;---------------------------------------------------------------------------

;----------------------
; Frankensteiner - Weak
;----------------------
[Statedef 999]
type = S
movetype = A
physics = S
juggle = 8
velset = 0,0
ctrl = 0
anim = 999
sprpriority = 2
facep2 = 1
poweradd = 76

[State 999, NoGuard]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard

[State 999, Grab Attempt]
type = HitDef
trigger1 = AnimElem = 3,=3
trigger1 = var(14) <=  0
trigger1 = P2StateNo !=  [130,132]
trigger1 = P2StateNo !=  140 && P2StateNo !=  [150,155]
trigger1 = P2StateNo !=  [40,52]
attr = S, ST
hitflag = M
priority = 4, Dodge
sparkno = -1         
p2facing = 1
p1stateno = 1001
P2StateNo = 1010
ground.velocity = -4,-6
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.xvelocity = 2
fall.yvelocity = -3.777
yaccel = .5
getpower = 0,0
givepower = 0,0
numhits = 0

[State 999, Invincibility]
type = NotHitBy
trigger1 = AnimElem = 4,<0
value = SCA,NA,SA,HA,AP

[State 999, CanBeThrown]
type = HitBy
trigger1 = AnimElem = 4,<0
value = S,AT

[State 999, NormalHitReturn]
type = HitBy
trigger1 = AnimElem = 4,>=0
value = SCA,AA,AT,AP

[State 999, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 1,=2
value = ifelse(var(54),1000,0),11
channel = 0

[State 999, GoToStance]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------
; Frankensteiner - Fierce
;------------------------

;-------------
; Grab Attempt
;-------------
[Statedef 1000]
type = S
movetype = A
physics = S
juggle = 8
velset = 0,0
ctrl = 0
anim = 1000
sprpriority = 2
facep2 = 1
poweradd = 76

[State 1000, NoGuard]
type = AssertSpecial
trigger1 = time >=  0
flag = nostandguard
flag2 = nocrouchguard

[State 1000, GrabAttempt]
type = HitDef
trigger1 = AnimElem = 3,=3
trigger1 = var(14) <=  0
trigger1 = P2StateNo !=  [130,132]
trigger1 = P2StateNo !=  140 && P2StateNo !=  [150,155]
trigger1 = P2StateNo !=  [40,52]
attr = S, ST
hitflag = M
priority = 4, Dodge
sparkno = -1         
p2facing = 1
p1stateno = 1001
P2StateNo = 1010
ground.velocity = -4,-6
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.xvelocity = 2
fall.yvelocity = -3.777
yaccel = .5
getpower = 0,0
givepower = 0,0
numhits = 0

[State 1000, Invincibility]
type = NotHitBy
trigger1 = AnimElem = 4,<0
value = SCA,NA,SA,HA,AP

[State 1000, CanBeThrown]
type = HitBy
trigger1 = AnimElem = 4,<0
value = S,AT

[State 1000, NormalHi Return]
type = HitBy
trigger1 = AnimElem = 4,>=0
value = SCA,AA,AT,AP

[State 1000, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 1,=2
value = ifelse(var(54),1000,0),11
channel = 0

[State 1000, GoToStance]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------
; Frankensteiner - Grab Success
;------------------------------
[Statedef 1001]
type = S
physics = S
movetype = A
anim = 1001
ctrl = 0
velset = 0,0

[State 1001, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,9

[State 1001, SpecialGrabSpark]
type = Explod
trigger1 = AnimElem = 2
anim = 7020
pos = 22,-54
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 1

[State 1001, MakeSpace1]
type = Width
trigger1 = AnimElem = 6,<0
edge = 24,8

[State 1001, MakeSpace2]
type = Width
trigger1 = AnimElem = 6,>=0
trigger1 = AnimElem = 9,<0
edge = 24,80

[State 1001, ReverseBind1]
type = BindToTarget
trigger1 = AnimElem = 1,>=0
trigger1 = AnimElem = 2,<0
pos = 22,65,head

[State 1001, ReverseBind2]
type = BindToTarget
trigger1 = AnimElem = 2,>=0
trigger1 = AnimElem = 5,<0
pos = 24,64,head

[State 1001, Bind1]
type = Targetbind
trigger1 = AnimElem = 5,>=0
trigger1 = AnimElem = 6,<0
pos = -24,-84

[State 1001, Bind2]
type = Targetbind
trigger1 = AnimElem = 6,>=0
trigger1 = AnimElem = 7,<0
pos = -36,-84

[State 1001, Bind3]
type = Targetbind
trigger1 = AnimElem = 7,>=0
trigger1 = AnimElem = 8,<0
pos = -68,-8

[State 1001, Bind4]
type = Targetbind
trigger1 = AnimElem = 8,=0
pos = -84,-8

[State 1001, PosOnGround]
type = Posset
trigger1 = AnimElem = 5
y = 0

[State 1001, MoveSound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,15

[State 1001, Backwards1]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
x = -16

[State 1001, FixCamera]
type = null ; ScreenBound
trigger1 = AnimElem = 7,<0
value = 1

[State 1001, GroundWaveBG]
type = Explod
trigger1 = AnimElem = 7
anim = 7035
pos = -48,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 1001, GroundWaveFG]
type = Explod
trigger1 = AnimElem = 7
anim = 7036
pos = -48,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 1001, GroundImpactSound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,12

[State 1001, ShakeItBaby]
type = Envshake
trigger1 = AnimElem = 7
time = 20
freq = 70
ampl = ifelse(var(20) = 1,-8,-4)

[State 1001, Backwards2]
type = PosAdd
trigger1 = AnimElem = 8
x = -32

[State 1001, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 10
value = ifelse(var(54),1000,0),12
channel = 0

[State 1001, ElbowDetection]
type = Varset
triggerall = RoundState = 2
triggerall = AnimElem = 5,>=0 && AnimElem = 8,<6
trigger1 = Command = "felbow"
trigger2 = Command = "ifelbow"
var(7) = 3

[State 1001, GoToElbow]
type = ChangeState
triggerall = RoundState = 2
triggerall = AnimElem = 8,>2
trigger1 = Var(7) = 3
value = 950

[State 1001, Turn]
type = Turn
trigger1 = !AnimTime

[State 1001, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------
; Opponent Thrown By Frankensteiner - Throw
;-------------------------------------------
[Statedef 1010]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 1010, GrabAnim]
type = ChangeAnim2
trigger1 = !Time
value = 1010

[State 1010, Damage]
type = Lifeadd
trigger1 = time = 35
value = -186

[State 1010, GoToHit]
type = ChangeState
trigger1 = !AnimTime
value = 1011

;---------------------------------------------------
; Opponent Thrown By Frankensteiner - Ground Impact
;---------------------------------------------------
[Statedef 1011]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 1011, GrabAnim]
type = ChangeAnim2
trigger1 = !Time
value = 1011

[State 1011, StartVels]
type = VelSet
trigger1 = !Time
x = GetHitVar(xvel) * -Facing
y = GetHitVar(yvel)

[State 1011, Gravity]
type = VelAdd
trigger1 = Time
y = GetHitVar(yaccel)

[State 1011, StopVels]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
x = 0

[State 1011, GoToBounce]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 5100

;---------------------------------------------------------------------------
; Napalm Stretch
;---------------------------------------------------------------------------

;-------------
; Grab Attempt
;-------------
[Statedef 1050]
type = A
physics = N
movetype = A
anim = 1050
ctrl = 0
juggle = 8
velset = 0,0
sprpriority = 2
facep2 = 1
poweradd = 91

[State 1050, CannotBeGuarded]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1050, FixCamera]
type = null ; ScreenBound
trigger1 = 1
value = 1

[State 1050, JumpSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4

[State 1050, GrabAttempt]
type = Hitdef
trigger1 = var(22)
trigger1 = AnimElem = 5
attr = A, ST
hitflag = AF
priority = 4, Miss
sparkno = S7025
sparkxy = -16,-82
p2facing = 1
p1stateno = 1052
P2StateNo = 1060
pausetime = 3,2
ground.velocity = -4,-6
air.velocity = -4,-6
fall = 1
fall.recover = 0
fall.xvelocity = -2
fall.yvelocity = -3.777
yaccel = .5
getpower = 121,0
givepower = 15,0

[State 1050, StartVels]
type = VelSet
trigger1 = AnimElem = 2,=0
x = 2.5
y = -10

[State 1050, Gravity]
type = VelAdd
trigger1 = AnimElem = 2,>0
y = .5

[State 1050, Transition]
type = VelAdd
trigger1 = AnimElem = 2,>0
trigger1 = !Vel Y
y = .5

[State 1050, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >=  0
value = 1051

;-------------------------------
; Napalm Stretch - Clark Landing
;-------------------------------
[Statedef 1051]
type = S
physics = N
movetype = I
anim = 1051
ctrl = 0

[State 1051, StopVelY]
type = VelSet
trigger1 = !Time
y = 0

[State 1051, PosOnGround]
type = PosSet
trigger1 = !Time
y = 0

[State 1051, StopVelX]
type = VelSet
trigger1 = Time = 1
x = 0

[State 1051, LandSound]
type = PlaySnd
trigger1 = !Time
value = 1,5

[State 1051, GoToStance]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------
; Napalm Stretch - Grab Success
;------------------------------
[Statedef 1052]
type = A
physics = N
movetype = A
anim = 1052
ctrl = 0

[State 1052, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),14

[State 1052, GrabSound]
type = PlaySnd
trigger1 = !Time
value = 1,9

[State 1052, MakeSpace]
type = Width
trigger1 = 1
edge = 12,0

[State 1052, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 1052, TBind1]
type = TargetBind
trigger1 = AnimElem = 1,>=0
trigger1 = AnimElem = 2,<0
pos = 8,-68

[State 1052, TBind2]
type = TargetBind
trigger1 = AnimElem = 2,>=0
trigger1 = AnimElem = 3,<0
pos = -8,-80

[State 1052, TBind3]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,<0
pos = -12,-60

[State 1052, TBind4]
type = TargetBind
trigger1 = AnimElem = 4,>=0
pos = 4,-56

[State 1052, SetElbowLimiter]
type = VarSet
trigger1 = FrontEdgeBodyDist < 30
var(12) = 1

[State 1052, ElbowDetection]
type = VarSet
triggerall = RoundState = 2
triggerall = AnimElem = 3,>=0 && Pos Y > 50 && Vel Y > 0
trigger1 = Command = "felbow"
trigger2 = Command = "ifelbow"
var(7) = 1

[State 1052, GoToKneePress]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 1053

;---------------------------------------
; Napalm Stretch - Reaching ground level
;---------------------------------------
[Statedef 1053]
type = S
physics = N
movetype = A
anim = 1053
ctrl = 0
velset = 0,0

[State 1053, MakeSpace]
type = Width
trigger1 = 1
edge = 32,0

[State 1053, GroundImpactSound]
type = PlaySnd
trigger1 = !Time
value = 1,12

[State 1053, PosOnGround]
type = Posset
trigger1 = !Time
y = 0

[State 1053, Bind]
type = TargetBind
trigger1 = !Time
pos = 12,-12

[State 1053, GroundWaveBG]
type = Explod
trigger1 = !Time
anim = 7035
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 1053, GroundWaveFG]
type = Explod
trigger1 = !Time
anim = 7036
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 1053, ElbowDetection]
type = varset
triggerall = RoundState = 2
trigger1 = Command = "felbow"
trigger2 = Command = "ifelbow"
var(7) = 1

[State 1053, GoToRoll]
type = ChangeState
trigger1 = !Animtime
value = 1054

;----------------------
; Napalm Stretch - Roll
;----------------------
[Statedef 1054]
type = S
physics = N
movetype = A
anim = 1054
ctrl = 0

[State 1054, StartVelX]
type = VelSet
trigger1 = !Time
x = ifelse(var(7) = 1,0,-2.5)

[State 1054, StopVelX]
type = VelSet
trigger1 = AnimElem = 6,=1
x = 0

[State 1054, ElbowDetection]
type = VarSet
triggerall = RoundState = 2
triggerall = AnimElem = 2,<1
trigger1 = Command = "felbow"
trigger2 = Command = "ifelbow"
var(7) = 1

[State 1054, GoToElbow]
type = ChangeState
triggerall = RoundState = 2
triggerall = AnimElem = 2,>0
trigger1 = var(7) = 1
value = 950

[State 1054, GoToStance]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------
; Napalm Stretch - Enemy Thrown
;------------------------------
[Statedef 1060]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 1060, PauseTime]
type = PosFreeze 
trigger1 = !HitShakeOver
value = 1

[State 1060, AirGrabbedAnim]
type = ChangeAnim2
trigger1 = Anim != 1060 && HitShakeOver
value = 1060

[State 1060, Next]
type = ChangeState
trigger1 = P2StateNo = 1503
trigger2 = Pos Y >=  -16
value = 1061

;-------------------------------------------------
; Enemy Thrown by Napalm Stretch - Reaching ground
;-------------------------------------------------
[Statedef 1061]
type = A
physics = N
movetype = H
ctrl = 0

[State 1061, CrushedDownAnim]
type = ChangeAnim2
trigger1 = !Time
value = 1061

[State 1061, Damage]
type = LifeAdd
trigger1 = !Time
value = -157

[State 1061, ScreenShaking]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -4

[State 1061, GoToRebound]
type = ChangeState
trigger1 = !Animtime
value = 1062

;------------------------------------------
; Enemy Thrown by Napalm Stretch - Rebound
;------------------------------------------
[Statedef 1062]
type = A
physics = N
movetype = H
velset = GetHitVar(xvel) * facing, GetHitVar(yvel)
ctrl = 0

[State 1062, ReboundAnim]
type = ChangeAnim2
trigger1 = !Time
value = 1062

[State 1062, Gravity]
type = VelAdd
trigger1 = Time
y = GetHitVar(yaccel)

[State 1062, PrepareBounce]
type = ChangeAnim
trigger1 = SelfAnimExist(5050)
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 5050

[State 1062, GoToBounce]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 5100

;---------------------------------------------------------------------------
; Running Backbreaker
;---------------------------------------------------------------------------

;-------------
; Grab Attempt
;-------------
[Statedef 2600]
type = S
movetype = A
physics = N
anim = 10
ctrl = 0
velset = 0,0
sprpriority = 2
facep2 = 1
poweradd = 76

[State 2600, Run]
type = ChangeAnim
trigger1 = Time = 5
value = 101

[State 2600, StartRunVel]
type = VelSet
trigger1 = Anim = 101
x = const(velocity.airjump.neu.x)
persistent = 0

[State 2600, RunSound]
type = PlaySnd
trigger1 = Time = 5
value = 1,2
channel = 3
loop = 1

[State 2600, GoToGrabAttempt]
type = ChangeState
trigger1 = P2BodyDist X < 16
value = 2601

[State 2600, GoToGrabMiss]
type = ChangeState
trigger1 = Time = 26
value = 2602

;--------------------------------
; Running Backbreaker - Grab Miss
;--------------------------------
[Statedef 2602]
type = S
physics = N
movetype = I
anim = 10
ctrl = 0
sprpriority = 2

[State 2602, StopVelX]
type = VelSet
trigger1 = Time = 1
x = 0

[State 2602, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 2602, GoToStance]
type = ChangeState
trigger1 = Time = 4
value = 0
ctrl = 1

;-----------------------------------
; Running Backbreaker - Grab Attempt
;-----------------------------------
[Statedef 2601]
type = S
movetype = A
physics = S
juggle = 8
velset = 0,0
ctrl = 0
anim = 3050

[State 2601, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 2601, GrabAttempt]
type = HitDef
trigger1 = AnimElem = 2 
trigger1 = var(14) <=  0 && !var(16)
trigger1 = P2StateNo !=  [130,132]
trigger1 = P2StateNo !=  140 && P2StateNo !=  [150,155]
trigger1 = P2StateNo !=  [40,52]
attr = S,ST
hitflag = M
priority = 4,Miss
sparkno = -1         
p2facing = 1
p1stateno = 2603
p2stateno = 2613
ground.velocity = 4,-6
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.xvelocity = -2
fall.yvelocity = -3.777
yaccel = .5
getpower = 152,0
givepower = 15,0
numhits = 0

[State 2601, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------
; Running Backbreaker - Success 
;------------------------------
[Statedef 2603]
type = S
physics = N
movetype = A
anim = 2600
sprpriority = 2
ctrl = 0

[State 2603, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 2603, MakeSpace1]
type = Width
trigger1 = !Time
edge = 44,0

[State 2603, MakeSpace2]
type = Width
trigger1 = AnimElem = 5
edge = 44,12

[State 2602, Forward]
type = PosAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
x = 8

[State 2603, SpecialGrabSpark]
type = Explod
trigger1 = AnimElem = 1
anim = 7020
pos = 61,-85
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 2603, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,9
channel = 1

[State 2603, MoveSound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,10

[State 2603, BoneCrushSound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1,11

[State 2603, LandSound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1,12

[State 2603, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 0,10
channel = 0
ignorehitpause = 1
persistent = 0

[State 2603, ScreenShaking]
type = Envshake
trigger1 = AnimElem = 11
time = 20
freq = 70
ampl = -4

[State 2603, SpecialMoveSpark]
type = Explod
trigger1 = AnimElem = 11
anim = 7025
pos = 0,-45
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 2603, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3,=0
value = -1

[State 2603, Bind1]
type = TargetBind
trigger1 = AnimElem = 1,>=0
trigger1 = AnimElem = 2,<0
pos = (Target,const(size.head.pos.x)) + 48,0

[State 2603, Bind2]
type = TargetBind
trigger1 = AnimElem = 2,>=0
trigger1 = AnimElem = 3,<0
pos = 6,0

[State 2603, Bind3]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,<0
pos = 20,-70

[State 2603, Bind4]
type = TargetBind
trigger1 = AnimElem = 4,>=0
trigger1 = AnimElem = 5,<0
pos = 8,-79

[State 2603, Bind5]
type = TargetBind
trigger1 = AnimElem = 5,>=0
trigger1 = AnimElem = 6,<0
pos = -4,-93

[State 2603, Bind6]
type = TargetBind
trigger1 = AnimElem = 6,>=0
trigger1 = AnimElem = 7,<0
pos = 3,-121

[State 2603, Bind7]
type = TargetBind
trigger1 = AnimElem = 7,>=0
trigger1 = AnimElem = 8,<0
pos = 4,-117

[State 2603, Bind8]
type = TargetBind
trigger1 = AnimElem = 8,>=0
trigger1 = AnimElem = 9,<0
pos = -2,-97

[State 2603, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9,>= 0
trigger1 = AnimElem = 10,< 0
pos = -2,-86

[State 2603, Bind10]
type = TargetBind
trigger1 = AnimElem = 10,>=0
trigger1 = AnimElem = 11,<0
pos = -1,-71

[State 2603, Bind11]
type = TargetBind
trigger1 = AnimElem = 11,>=0
trigger1 = AnimElem = 11,<10
pos = -12,-44

[State 2603, Bind12]
type = TargetBind
trigger1 = AnimElem = 11,=10
pos = -4,-20

[State 2603, CommandCheck]
type = Varset
triggerall = RoundState = 2
triggerall = Time = [51,75]
trigger1 = Command = "felbow"
trigger2 = Command = "ifelbow"
var(7) = 1

[State 2603, GoToElbow]
type = ChangeState
triggerall = RoundState = 2
triggerall = Time >=  80
trigger1 = var(7) = 1
value = 950

[State 2603, Turn]
type = Turn
trigger1 = !AnimTime

[State 2603, GoToStance]
type = Changestate
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------------
; Enemy thrown by Running Backbreaker
;------------------------------------
[Statedef 2613]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 2613, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 2613, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 2610

[State 2613, BringToFront]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 2613, Damage]
type = Lifeadd
trigger1 = AnimElem = 10
value = -157

[State 2613, GoToFall]
type = ChangeState
trigger1 = !Animtime
value = 2614

;------------------------------------
; Enemy fall on ground
;------------------------------------
[Statedef 2614]
type = A
physics = N
movetype = H
ctrl = 0
velset = GetHitVar(xvel) * Facing,GetHitVar(yvel)
sprpriority = 2

[State 2613, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 2614

[State 2614, Gravity]
type = VelAdd
trigger1 = Time
y = GetHitVar(yaccel)

[State 2614, Turn]
type = Turn
trigger1 = Vel y > 0
trigger1 = Pos Y + Vel Y >= 0

[State 2614, ChangeState]
type = SelfState
trigger1 = Vel y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 5100

;---------------------------------------------------------------------------
; Rolling Cradle
;---------------------------------------------------------------------------

;-------------
; Grab Attempt
;-------------
[Statedef 2700]
type = S
movetype = A
physics = N
anim = 10
ctrl = 0
velset = 0,0
sprpriority = 2
facep2 = 1
poweradd = 76

[State 2700, Run]
type = ChangeAnim
trigger1 = Time = 5
value = 101

[State 2700, StartRunVel]
type = VelSet
trigger1 = Anim = 101
x = const(velocity.airjump.neu.x)
persistent = 0

[State 2700, RunSound]
type = PlaySnd
trigger1 = Time = 5
value = 1,2
channel = 3
loop = 1

[State 2700, GoToGrabAttempt]
type = ChangeState
trigger1 = P2BodyDist X < 16
value = 2701

[State 2700, Grab Miss]
type = ChangeState
trigger1 = Time = 26
value = 2702

;---------------------------
; Rolling Cradle - Grab Miss
;---------------------------
[Statedef 2702]
type = S
physics = N
movetype = I
anim = 10
ctrl = 0
sprpriority = 2

[State 2702, StopVelX]
type = VelSet
trigger1 = Time = 1
x = 0

[State 2702, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 2702, End]
type = ChangeState
trigger1 = Time = 4
value = 0
ctrl = 1

;------------------------------
; Rolling Cradle - Grab Attempt
;------------------------------
[Statedef 2701]
type = S
movetype = A
physics = S
juggle = 8
velset = 0,0
ctrl = 0
anim = 3050

[State 2701, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 2701, GrabAttempt]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = var(14) <=  0 && !var(16)
trigger1 = P2StateNo !=  [130,132]
trigger1 = P2StateNo !=  140 && P2StateNo !=  [150,155]
trigger1 = P2StateNo !=  [40,52]
id = 2701
attr = S,ST
hitflag = M
priority = 4,Miss
sparkno = -1         
sprpriority = 1
p2facing = 1
p1stateno = 2703
P2StateNo = 2713
ground.velocity = 4,-6
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.xvelocity = -2
fall.yvelocity = -3.777
yaccel = .5
getpower = 152,0
givepower = 15,0
numhits = 0

[State 2701, GoToStance]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-------------------------
; Rolling Cradle - Success
;-------------------------
[Statedef 2703]
type = S
physics = N
movetype = A
anim = 2800
velset = 0,0
sprpriority = 2
ctrl = 0
poweradd = 150

[State 2703, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 2703, GrabSound]
type = PlaySnd
trigger1 = !Time
value = 1,9

[State 2703, VoiceSound1]
type = PlaySnd
trigger1 = !time
value = ifelse(var(54),1000,0),1
channel = 0

[State 2703, SpecialGrabSpark]
type = Explod
trigger1 = !Time
anim = 7020
pos = 58,-86
postype = p1
bindtime = 1
sprpriority = 1
ontop = 0
ownpal = 1

[State 2703, MakeSpaceStart]
type = Width
trigger1 = !Time
edge = 44,20

[State 2703, MakeSpaceRoll]
type = Width
trigger1 = Vel X
edge = 16,0

[State 2703, Turn]
type = Turn
trigger1 = AnimElem = 3,=0

[State 2703, Bind01]
type = TargetBind
trigger1 = !Time
pos = (Target,const(size.head.pos.x)) + 48,0

[State 2703, Bind02]
type = TargetBind
trigger1 = AnimElem = 2
pos = -16,0

[State 2703, Bind03]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,<0
trigger2 = AnimElem = 8,>=0
trigger2 = AnimElem = 9,<0
trigger3 = AnimElem = 10,>=0
trigger3 = AnimElem = 11,<0
trigger4 = AnimElem = 14,>=0
trigger4 = AnimElem = 15,<0
trigger5 = AnimElem = 18,>=0
trigger5 = AnimElem = 19,<0
trigger6 = AnimElem = 20,>=0
trigger6 = AnimElem = 21,<0
trigger7 = AnimElem = 24,>=0
trigger7 = AnimElem = 25,<0
trigger8 = AnimElem = 28,>=0
pos = 0,0

[State 2703, Bind04] 
type = TargetBind
trigger1 = AnimElem = 4
pos = -12,0

[State 2703, Bind05] 
type = TargetBind
trigger1 = AnimElem = 5,>=0
trigger1 = AnimElem = 6,<0
trigger2 = AnimElem = 7,>=0
trigger2 = AnimElem = 8,<0
trigger3 = AnimElem = 9,>=0
trigger3 = AnimElem = 10,<0
trigger4 = AnimElem = 12,>=0
trigger4 = AnimElem = 13,<0
trigger5 = AnimElem = 17,>=0
trigger5 = AnimElem = 18,<0
trigger6 = AnimElem = 19,>=0
trigger6 = AnimElem = 20,<0
trigger7 = AnimElem = 22,>=0
trigger7 = AnimElem = 23,<0
trigger8 = AnimElem = 27,>=0
trigger8 = AnimElem = 28,<0
pos = -8,0

[State 2703, Bind06] 
type = TargetBind
trigger1 = AnimElem = 6,>=0
trigger1 = AnimElem = 7,<0
pos = 5,-29

[State 2703, Bind07]
type = TargetBind
trigger1 = AnimElem = 11,>=0
trigger1 = AnimElem = 12,<0
trigger2 = AnimElem = 21,>=0
trigger2 = AnimElem = 22,<0
pos = 0,-25

[State 2703, Bind08]
type = TargetBind
trigger1 = AnimElem = 13,>=0
trigger1 = AnimElem = 14,<0
trigger2 = AnimElem = 23,>=0
trigger2 = AnimElem = 24,<0
pos = 12,0

[State 2703, Bind09]
type = TargetBind
trigger1 = AnimElem = 15,>=0
trigger1 = AnimElem = 16,<0
trigger2 = AnimElem = 25,>=0
trigger2 = AnimElem = 26,<0
pos = -16,-32

[State 2703, Bind10]
type = TargetBind
trigger1 = AnimElem = 16,>=0
trigger1 = AnimElem = 17,<0
trigger2 = AnimElem = 26,>=0
trigger2 = AnimElem = 27,<0
pos = 4,-30

[State 2703, SendToBack]
type = SprPriority
trigger1 = AnimElem = 11
trigger2 = AnimElem = 21
value = -1

[State 2713, BringToFront]
type = SprPriority
trigger1 = AnimElem = 12
trigger2 = AnimElem = 22
value = 2

[State 2703, VoiceSound2]
type = PlaySnd
trigger1 = AnimElem = 6
value = ifelse(var(54),1000,0),17
channel = 0

[State 2703, MoveSound]
type = PlaySnd
trigger1 = P2StateNo = 2811
value = 1,12
persistent = 0

[State 2703, DropSounds]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 24
value = 1,12

[State 2703, StartRollVel]
type = Velset
trigger1 = AnimElem = 6
x = 2.5

[State 2703, StopRollVel]
type = Velset
trigger1 = AnimElem = 28
x = 0

[State 2703, Explod]
type = Explod
trigger1 = AnimElem = 9
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 24
anim = 7030
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 2703, GoToSlamDown]
type = ChangeState
trigger1 = !Animtime
value = 2704

;---------------------------
; Rolling Cradle - Slam Down
;---------------------------
[Statedef 2704]
type = S
physics = N
movetype = A
anim = 2801
ctrl = 0
velset = 0,0

[State 2704, MakeSpace]
type = Width
trigger1 = !Time 
edge = 62,0

[State 2704, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1,10

[State 2704, SlamSound]
type = PlaySnd
trigger1 = !Time
value = 1,12

[State 2704, GroundWaves]
type = Explod
trigger1 = !Time
anim = 7030
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 2704, Bind]
type = TargetBind
trigger1 = Time < 3
pos= 40,0

[State 2704, GoToStance]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------------
; Rolling Cradle - Enemy Grabbed Down
;------------------------------------
[Statedef 2713]
type = S
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 2713, Power]
type = PowerAdd
trigger1 = !Time
value = 75

[State 2713, RolledAnim]
type = ChangeAnim2
trigger1 = !Time
value = 2810

[State 2713, BringToFront]
type = SprPriority
trigger1 = AnimElem = 11
trigger2 = AnimElem = 21
value = 2

[State 2713, SendToBack]
type = SprPriority
trigger1 = AnimElem = 12
trigger2 = AnimElem = 22
value = -1

[State 2713, Damage]
type = LifeAdd
triggerall = Anim = 2810
trigger1 = AnimElem = 8
trigger2 = AnimElem = 13
trigger3 = AnimElem = 18
trigger4 = AnimElem = 23
trigger5 = AnimElem = 28
value = -29
kill = 0

[State 2713, ScreenShake]
type = Envshake
trigger1 = AnimElem = 9
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 24
trigger5 = time = 101
time = 20
freq = 70
ampl = -4

[State 2713, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 2714

;------------------------------
; Rolling Cradle - Slammed Down
;------------------------------
[Statedef 2714]
type = S
physics = N
movetype = H
ctrl = 0

[State 2714, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 2811

[State 2713, Damage]
type = LifeAdd
trigger1 = !Time
value = -29
kill = 1

[State 2714, NearGround]
type = PosSet
trigger1 = !AnimTime
y = -10

[State 2714, StartVels]
type = VelSet
trigger1 = AnimElem = 2,=0
x = GetHitVar(xvel) * Facing
y = GetHitVar(yvel)

[State 2714, Gravity]
type = VelAdd
trigger1 = AnimElem = 2,>0
y = GetHitVar(yaccel)

[State 2714, Facing]
type = Turn
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0

[State 2714, Fall]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 5100

;---------------------------------------------------------------------------
; Flash Elbow
; Follow up from:
; - Super Argentina BackBreaker
; - Frankensteiner
; - Running Backbreaker
; - Napalm Stretch
;---------------------------------------------------------------------------

;------------------
; Flash Elbow - Run
;------------------
[Statedef 950]
type = S
physics = N
movetype = I
anim = 101
ctrl = 0
sprpriority = 2
facep2 = 1

[State 950, StartRunVel]
type = VelSet
trigger1 = !Time
x = const(velocity.airjump.neu.x)

[State 950, Invincible]
type = NotHitBy
trigger1 = TeamMode = Simul
value = SCA

[State 950, Push]
type = PlayerPush
trigger1 = TeamMode = Simul
;trigger1 = var(7) = 3
;trigger1 = var(8) = 2
value = 0

[State 950, GoToElbowHit]
type = ChangeState
triggerall = NumTarget
trigger1 = P2StateNo = [914,915]                          ; From Super Argentina Backbreaker
trigger1 = P2Dist X <= 68 || P2BodyDist X <= 36
trigger2 = P2StateNo = 1011                               ; From Frankensteiner
trigger2 = P2Dist X <= 48 || P2BodyDist X <= 16
trigger3 = PrevStateNo = 2603 && P2StateNo = 2614         ; From Running Backbreaker
trigger3 = P2Dist X <= 48 || P2BodyDist X <= 16
trigger3 = P2Dist Y > -46
trigger4 = PrevStateNo = 1054                             ; From Napalm Stretch
trigger4 = P2Dist X <= 48 || P2BodyDist X <= 16
value = 951

[State 950, RunSound]
type = PlaySnd
trigger1 = !Time
value = 1,2
channel = 3
loop = 1

[State 950, GoToStand]
type = ChangeState
trigger1 = Time = 24
value = 0
ctrl = 1

;------------------------
; Flash Elbow - Elbow Hit
;------------------------
[Statedef 951]
type = S
physics = N
movetype = A
anim = 950
sprpriority = 2
ctrl = 0

[State 951, MakeSpace]
type = Width
trigger1 = 1
edge = 12,0

[State 951, Friction]
type = VelMul
trigger1 = 1
x = .953125

[State 951, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 951, SetAirState]
type = StateTypeSet
trigger1 = AnimElem = 4,=0
statetype = A

[State 951, SetGroundState]
type = StateTypeSet
trigger1 = AnimElem = 10,=0
statetype = C

[State 951, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 10,=0
value = 0,10
ignorehitpause = 1

[State 951, ElbowHit]
type = Hitdef
triggerall = var(12) !=  1      ; Not from Napalm Stretch performed in the corner
trigger1 = AnimElem = 9,>=0 && AnimElem = 10,<0 
attr = S, SA
hitflag = MADF ;HMADF
priority = 7,Hit
hitsound = S1,11
pausetime = 12,16
sparkno = S7025
sparkxy = -40,-16
ground.velocity = -3,-6
air.velocity = -3,-6
fall = 1
air.fall = 1
fall.recover = 0
fall.xvelocity = ifelse(var(7)=3,2,-2)
fall.yvelocity = -3.777
yaccel = .7
getpower = 0,0
givepower = 15,15
damage = 29,0
numhits = 0
persistent = 0
p2stateno = 962

[State 951, Shake]
type = Envshake
trigger1 = AnimElem = 9
time = 20
freq = 70
ampl = -4

[State 951, FallSound]
type = PlaySnd
trigger1 = AnimElem = 10,=0
trigger1 = !MoveContact
value = 5110,0

[State 951, GroundWave]
type = Explod
trigger1 = AnimElem = 10,=0
anim = 7030
pos = 5,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
ignorehitpause = 1

[State 951, EnemyGroundWaveBG]
type = Explod
trigger1 = AnimElem = 10,=1
anim = 7035
pos = 40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 951, EnemyGroundWaveFG]
type = Explod
trigger1 = AnimElem = 10,=1
anim = 7036
pos = 40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 951, GoToGetUp]
type = ChangeState
trigger1 = !Animtime
value = 952

;----------------------
; Flash Elbow - Get up
;----------------------
[Statedef 952]
type = S
physics = N
movetype = I
ctrl = 0
anim = 952
sprpriority = 2

[State 951, Friction]
type = VelMul
trigger1 = 1
x = .953125

[State 952, GoToStand]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;---------------------------
; Flash Elbow - Opponent Hit
;---------------------------
[Statedef 962]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 962, PosToGround]
type = PosSet
trigger1 = 1 ; !Time
y = 0
ignorehitpause = 1

[State 962, HitAnim]
type = ChangeAnim2
trigger1 = Time < 3
value = 962

[State 962, GoToRebound]
type = ChangeState
trigger1 = !AnimTime
value = 963

;-------------------------------
; Flash Elbow - Opponent rebound
;-------------------------------
[Statedef 963]
type = L
physics = N
movetype = H
ctrl = 0

[State 963, PosToGround]
type = PosSet
trigger1 = !Time
y = 0
ignorehitpause = 1

[State 963, BounceAnim]
type = ChangeAnim2
trigger1 = !Time
value = 963

[State 963, StartVels]
type = VelSet
trigger1 = !Time
x = GetHitVar(xvel) * Facing
y = GetHitVar(yvel)

[State 963, Gravity]
type = Veladd
trigger1 = Time
y = GetHitVar(yaccel)

[State 963, GoToBounce]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0 
value = 964

;--------------------------------------
; Flash Elbow - Opponent hit the ground
;--------------------------------------
[Statedef 964]
type = L
physics = N
movetype = H
velset = 0,0
ctrl = 0

[State 964, PosToGround]
type = PosSet
trigger1 = !Time
y = 0

[State 964, HitGroundAnim]
type = ChangeAnim2
trigger1 = !Time
value = 964

[State 964, GoToBounce]
type = ChangeState
trigger1 = !AnimTime
value = 966

;------------------------------
; Flash Elbow - Opponent bounce
;------------------------------
[Statedef 966]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0

[State 966, PosToGround]
type = PosSet
trigger1 = !Time
y = -1

[State 966, BounceAnim]
type = ChangeAnim2
trigger1 = !Time
value = 966 

[State 966, StartVels]
type = VelSet
trigger1 = !Time && GetHitVar(fall.xvel) = [-2,2]
x = GetHitVar(fall.xvel)
y = GetHitVar(fall.yvel)

[State 966, CrappyMugenHack]
type = VelSet
trigger1 = !Time && GetHitVar(fall.xvel) != [-2,2]
x = -2
y = -3.777

[State 966, Gravity]
type = Veladd
trigger1 = Time
y = GetHitVar(yaccel)

[State 966, GoToBounce]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Vel Y + Pos y >= 0
value = 5110

;---------------------------------------------------------------------------
; Gatling Attack
;---------------------------------------------------------------------------
;---------------
; Gatling - Weak
;---------------
[Statedef 1490]
type = S
physics = N
movetype = A
ctrl = 0
juggle = 8
velset = 0,0
anim = 1490
sprpriority = 2
poweradd = 91
facep2 = 1

[State 1490, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = 0,13

[State 1490, MoveSound]
type = PlaySnd
trigger1 = !Time
trigger2 = AnimElem = 5
trigger3 = AnimElem = 8
value = S1,22

[State 1490, StartVelX1]
type = VelSet
trigger1 = !Time
x = 6.625

[State 1490, Forward1]
type = PosAdd
trigger1 = AnimElem = 5,=0
x = .854003906

[State 1490, StartVelX2]
type = VelSet
trigger1 = AnimElem = 5,=0
x = 6

[State 1490, Forward2]
type = PosAdd
trigger1 = AnimElem = 8,=0
x = .569335938

[State 1490, StartVelX3]
type = VelSet
trigger1 = AnimElem = 8,=0
x = 4

[State 1490, Friction]
type = VelMul
trigger1 = Vel X
x = .828125

[State 1490, StopVelX]
type = VelSet
trigger1 = AnimElem = 12,=0
x = 0

[State 1490, Forward4]
type = PosAdd
trigger1 = AnimElem = 12,=0
trigger2 = AnimElem = 13,=0
x = 8

[State 1490, Hit1]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 3
attr = S, SA
animtype = High
guardflag = M
priority = 4, Hit
sparkno = S7025                  
guard.sparkno = S7006          
sparkxy = -20,-96
hitsound = S2,6
guardsound = S1,7
ground.type = High
pausetime = 9,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -11.1796875 ; -12
ground.cornerpush.veloff = 0
guard.pausetime = 9,13
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -4.6, -7
air.hittime = 12
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .5
getpower = 45,45
givepower = 15,15
damage = 49,10

[State 1490, Hit2]
type = HitDef
trigger1 = var(22) || var(32)
trigger1 = AnimElem = 6
attr = S, SA
animtype = High
guardflag = M
priority = 4, Hit
sparkno = S7025                  
guard.sparkno = S7006          
sparkxy = -10,-80
hitsound = S2,6
guardsound = S1,7
ground.type = High
pausetime = 9,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0
ground.cornerpush.veloff = 0
guard.pausetime = 9,13
guard.slidetime = 0
guard.hittime = 0
guard.velocity = 0
air.animtype = Back
air.velocity = -4.6, -7
air.hittime = 12
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .5
getpower = 45,45
givepower = 15,15
damage = 49,10

[State 1490, Hit3]
type = HitDef
trigger1 = var(22) || var(32)
trigger1 = AnimElem = 9
attr = S,SA
guardflag = M
priority = 4,Hit
sparkno = S7025                  
guard.sparkno = S7006      
sparkxy = -20,-84
hitsound = S1,8
guardsound = S1,7
ground.type = High
pausetime = 9,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -4.6, -7
ground.cornerpush.veloff = 0
guard.pausetime = 9,13
guard.slidetime = 0
guard.hittime = 0
guard.velocity = 0
air.animtype = Back
air.velocity = -4.6, -7
air.hittime = 12
air.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .5
getpower = 45,45
givepower = 15,15
damage = 49,10

[State 1490, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------

;-------------------------
; Gatling - Fierce Version
;-------------------------
[Statedef 1500]
type = S
physics = N
movetype = A
ctrl = 0
juggle = 8
velset = 0,0
anim = 1500
sprpriority = 2
poweradd = 97
facep2 = 1

[State 1500, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = 0,13

[State 1500, MoveSounds]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 8
value = S1,22

[State 1500, StartVelX1]
type = VelSet
trigger1 = !Time
x = 16

[State 1500, Forward1]
type = PosAdd
trigger1 = !Time
x = 2.4375

[State 1500, StartVelX2]
type = VelSet
trigger1 = AnimElem = 5,=0
x = 12

[State 1500, Forward2]
type = PosAdd
trigger1 = AnimElem = 5,=0
x = .214065552

[State 1500, StartVelX3]
type = VelSet
trigger1 = AnimElem = 8,=0
x = 4

[State 1500, Forward3]
type = PosAdd
trigger1 = AnimElem = 8,=0
x = .499633789

[State 1500, Friction]
type = VelMul
trigger1 = Vel X
x = .796875

[State 1500, Hit1]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 3
id = 1500
attr = S,SA
animtype = High
guardflag = M
priority = 5, Hit
sparkno = S7025                  
guard.sparkno = S7006          
sparkxy = -20,-96
hitsound = S2,6
guardsound = S1,7
ground.type = High
pausetime = 9,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -11.1796875 ; -12
ground.cornerpush.veloff = 0
guard.pausetime = 9,13
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -4.6, -7
air.hittime = 12
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .5
getpower = 45,45
givepower = 15,15
damage = 49,10

[State 1500, CornerPushHack]
type = VarSet
trigger1 = !Time
var(30) = 0

[State 1500, CornerPushHack]
type = VarSet
trigger1 = AnimElem = 4
trigger1 = NumTarget(1500)
var(30) = Target(1500),BackEdgeDist

[State 1500, Hit2]
type = HitDef
trigger1 = var(22) || var(32)
trigger1 = AnimElem = 6
attr = S,SA
animtype = High
guardflag = M
priority = 5, Hit
sparkno = S7025                  
guard.sparkno = S7006          
sparkxy = -10,-80
hitsound = S2,6
guardsound = S1,7
ground.type = High
pausetime = 9,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = ifelse(var(30) < 3,-10.5,-11.1796875) ; -12
ground.cornerpush.veloff = 0
guard.pausetime = 9,13
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -4.6, -7
air.hittime = 12
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .5
getpower = 45,45
givepower = 15,15
damage = 49,10

[State 1500, Hit3]
type = HitDef
trigger1 = var(22) || var(32)
trigger1 = AnimElem = 9
attr = S,SA
animtype = Hard
guardflag = M
priority = 5, Hit
sparkno = S7025                  
guard.sparkno = S7006      
sparkxy = -20,-42
hitsound = S1,8
guardsound = S1,7
ground.type = High
pausetime = 9,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = ifelse(var(30) < 3,-10.5,-11.1796875) ; -12
ground.cornerpush.veloff = 0
guard.pausetime = 9,13
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -11.1796875 ; -12
air.animtype = Back
air.velocity = -4.6, -7
air.hittime = 12
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .5
getpower = 45,45
givepower = 15,15
damage = 49,10

[State 1500, Hit4]
type = HitDef
trigger1 = var(22) || var(32)
trigger1 = AnimElem = 10
attr = S,SA
animtype = Low
guardflag = M
priority = 5, Hit
sparkno = S7025                  
guard.sparkno = S7006      
sparkxy = -20,-84
hitsound = S1,8
guardsound = S1,7
ground.type = High
pausetime = 11,12
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -4.6, -7
ground.cornerpush.veloff = 0
guard.pausetime = 9,13
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -11.1796875 ; -12
air.animtype = Back
air.velocity = -4.5, -7
air.hittime = 12
air.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .5
getpower = 45,45
givepower = 15,15
damage = 20,10

[State 1500, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Vulcan Punch
;---------------------------------------------------------------------------
;--------------------
; Vulcan Punch - Weak
;--------------------
[Statedef 1600]
type = S
physics = S
movetype = A
ctrl = 0
juggle = 8
velset = 0,0
anim = 1600
poweradd = 47
facep2 = 1
poweradd = 45

[State 1600, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),17
channel = 1

[State 1600, MoveSound]
type = PlaySnd
trigger1 = !Time
value = S1,21
channel = 3

[State 1600, Hits]
type = HitDef
triggerall = var(22) || var(32)
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10 
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
attr = S,SA
guardflag = M
priority = 4, Hit
sparkno = S7025                  
guard.sparkno = S7006      
sparkxy = -12,-96
hitsound = S1,8
guardsound = S1,24
pausetime = 3,4
ground.velocity = -4.6, -7
ground.cornerpush.veloff = 0
guard.pausetime = 3,3
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -11.1796875 ; -12
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -4.6, -7
air.hittime = 12
air.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 35
yaccel = .5
getpower = 45,45
givepower = 15,15
damage = 39,10

[State 1600, GoForward]
type = PosAdd
trigger1 = AnimElem = 3,>=0 && AnimElem = 18,<0
trigger1 = Command = "holdfwd"
x = 1

[State 1600, StopVoiceSound]
type = StopSnd
trigger1 = AnimElem = 18
channel = 1

[State 1600, StopMoveSound]
type = StopSnd
trigger1 = AnimElem = 18
channel = 3

[State 1600, GoToStand]
type = ChangeState
trigger1 = !var(58) && !AnimTime
trigger2 = var(58) && AnimElem = 20
value = 0
ctrl = 1

;---------------------------------------------------------------------------

;----------------------
; Vulcan Punch - Fierce
;----------------------
[Statedef 1650]
type = S
physics = S
movetype = A
ctrl = 0
juggle = 8
velset = 0,0
anim = 1650
poweradd = 47
facep2 = 1
poweradd = 45

[State 1650, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),17
channel = 1

[State 1650, MoveSound]
type = PlaySnd
trigger1 = !Time
value = S1,21
channel = 3

[State 1650, Hits]
type = HitDef
triggerall = var(22) || var(32)
triggerall = HitCount < 5
trigger1 = AnimElem = 3 || AnimElem = 5 || AnimElem = 7 
trigger2 = AnimElem = 9 || AnimElem = 11 || AnimElem = 13
trigger3 = AnimElem = 15 || AnimElem = 17 || AnimElem = 19
trigger4 = AnimElem = 21
attr = S, SA
animtype = Low
guardflag = M
priority = 5, Hit
sparkno = S7025                  
guard.sparkno = S7006      
sparkxy = -12,-96
hitsound = S1,8
guardsound = S1,7
pausetime = 3,4
ground.velocity = -4.6, -7
ground.cornerpush.veloff = 0
guard.pausetime = 3,3
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -11.1796875 ; -12
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -4.6, -7
air.hittime = 12
air.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 35
yaccel = .5
getpower = 45,45
givepower = 15,15
damage = 39,10

[State 1650, GoForward]
type = PosAdd
trigger1 = AnimElem = 3,>=0 && AnimElem = 23,<0
trigger1 = Command = "holdfwd"
x = 1

[State 1650, StopVoiceSound]
type = StopSnd
trigger1 = AnimElem = 21
channel = 1

[State 1650, StopMoveSound]
type = StopSnd
trigger1 = AnimElem = 23
channel = 3

[State 1650, GoToStand]
type = ChangeState
trigger1 = !var(58) && !AnimTime
trigger2 = var(58) && AnimElem = 25
value = 0
ctrl = 1
