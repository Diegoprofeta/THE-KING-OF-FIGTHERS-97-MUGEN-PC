;-=========================================================================-
; * Character:          Clark Steel
; * From :              The King of Fighters 98 (c) SNK/SNK Playmore
; * Mugen converter:    OrochiKOF97 & Scal
; * Contents:           Desesperation moves
;-=========================================================================-

;--------------------------------------------------------------------------
; Ultra Argentina Backbreaker (DM) (KOF98 Mode)
;--------------------------------------------------------------------------
;-------------
; Grab Attempt
;-------------
[Statedef 6000]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 6246
facep2 = 1

[State 6000, FxSound]
type = PlaySnd
trigger1 = !Time
value = S1,13

[State 6000, BGPal]
type = BGPalFX
trigger1 = Time = [0,4]
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6000, NoFg]
type = AssertSpecial
trigger1 = Time = [1,4]
flag = noFg

[State 6000, BgDMFx]
type = Explod
trigger1 = Time = 3
anim = 7051
pos = 14, -100
postype = p1
bindtime = 1
sprpriority = -3
removeongethit = 1
ownpal = 1
supermovetime = 30
ignorehitpause = 1

[State 6000, FgDMFx]
type = Explod
trigger1 = Time = 3 
anim = 7050
pos = 14, -100
postype = p1
bindtime = 1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermovetime = 30
ignorehitpause = 1

[State 6000, NoBg]
type = AssertSpecial
trigger1 = Time = [5,28]
flag = noBg
flag2 = noFg

[State 6000, Pause]
type = SuperPause
trigger1 = Time = 2
pos = 15,-85
unhittable = 1
anim = -1
time = 28
darken = 0
movetime = 28
poweradd = -1000
ignorehitpause = 1

[State 6000, GrabAttempt]
type = HitDef
triggerall = var(13) < 10         ; Throw Limiter on basic attacks
triggerall = !var(14)             ; Throw Limiter on basic jump attacks
triggerall = !var(24)             ; Won't grab if opponent has just guarded a move.
triggerall = P2StateNo != [40,52] ; Can't throw when opponent is starting a jump / landing from a jump
trigger1 = AnimElem = 1 
id = 6000
attr = S, HT
hitflag = M
priority = 5, Dodge
sparkno = -1         
sprpriority = 2
p2facing = 1
p1stateno = 6001
p2stateno = 6010
numhits = 0

[State 6000, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------------------------
; Ultra Argentina Backbreaker Success - 1st throw
;------------------------------------------------
[Statedef 6001]
type = S
physics = S
movetype = A
anim = 6000
ctrl = 0
velset = 0,0

[State 6001, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6001, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6001, SuperPauseHelper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "SuperPauseHelper"
id = 6050
pos = 0,0
postype = p1
stateno = 6050
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 6001, Bind1]
type = TargetBind
trigger1 = AnimElem = 1,=0
pos = (Target,const(size.head.pos.x)) + 40,0

[State 6001, Bind2]
type = TargetBind
trigger1 = AnimElem = 2,=0
pos = (Target,const(size.head.pos.x)) + 44,0

[State 6001, Bind3]
type = TargetBind
trigger1 = AnimElem = 3,=0
pos = (Target,const(size.head.pos.x)) + 16,0

[State 6001, Bind4]
type = TargetBind
trigger1 = AnimElem = 4,=0 
pos = 38,-88

[State 6001, Bind5]
type = TargetBind
trigger1 = AnimElem = 5,=0
pos = 16,-100

[State 6001, Bind6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -8,-202

[State 6001, GrabSpark]
type = Explod
trigger1 = AnimElem = 3
anim = 7020
pos = 48,-58
postype = p1
bindtime = 1
sprpriority = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 6001, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,9

[State 6001, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 5
value = ifelse(var(54),1000,0),9

[State 6001, SendToBack]
type = SprPriority
trigger1 = AnimElem = 5
value = -1

[State 6001, ReceptionDetection]
type = HitDef
trigger1 = AnimElem = 8
chainid = 6000
id = 6001
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6002
p2stateno = 6012
numhits = 0

[State 6001, GoToStance]
type = ChangeState
trigger1 = Time = 142
value = 0
ctrl = 1

;-----------------------------------------------------------------
; Ultra Argentina Backbreaker Success - Success SuperPause helper
;-----------------------------------------------------------------
[Statedef 6050]
type = S
anim = 6150

[State 6050, Pause]
type = SuperPause
trigger1 = !Time
pos = 15,-85
unhittable = 1
anim = -1
time = 26
darken = 0
movetime = 26
poweradd = -1000
ignorehitpause = 1

[State 6050, BGPal]
type = BGPalFX
trigger1 = Time = [0,4]
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6050, NoFg]
type = AssertSpecial
trigger1 = Time = [1,4]
flag = noFg

[State 6050, BgDMFx]
type = Explod
trigger1 = Time = 1
anim = 7051
pos = 14, -100
postype = p1
bindtime = 1
sprpriority = -3
removeongethit = 1
ownpal = 1
supermovetime = 30
ignorehitpause = 1

[State 6050, FgDMFx]
type = Explod
trigger1 = Time = 1 
anim = 7050
pos = 14, -100
postype = p1
bindtime = 1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermovetime = 30
ignorehitpause = 1

[State 6050, NoBg]
type = AssertSpecial
trigger1 = Time = [5,26]
flag = noBg
flag2 = noFg

[State 6050, Delete]
type = DestroySelf
trigger1 = (Root,StateNo) != [6001,6076]

;--------------------------------------------
; Ultra Argentina Backbreaker - 1st Backbreak
;--------------------------------------------
[Statedef 6002]
type = S
physics = S
movetype = A
anim = 6002
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6002, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6002, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6002, Bind1]
type = TargetBind
trigger1 = !Time
pos = -4,-82

[State 6002, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 8,-102

[State 6002, Shake]
type = EnvShake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 6002, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
add = 248,248,248
time = 1
ignorehitpause = 1

[State 6002, CollisionSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 4,-84
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6002, GroundWave]
type = Explod
trigger1 = !Time
anim = 7030
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 6002, BoneCrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,11

[State 6002, LandSound]
type = PlaySnd
trigger1 = !Time
value = S1,12

[State 6002, GoToSecondThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6003

;----------------------------------------
; Ultra Argentina Backbreaker - 2nd throw
;----------------------------------------
[Statedef 6003]
type = S
physics = S
movetype = A
anim = 6001
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6003, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6003, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6003, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42,-54

[State 6003, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 36,-88

[State 6003, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 12,-108

[State 6003, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -8,-202

[State 6003, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 6003, ReceptionDetection]
type = Hitdef
trigger1 = AnimElem = 6
id = 6003
chainid = 6001
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = -1
p2facing = 1
p1stateno = 6004
p2stateno = 6015
numhits = 0

[State 6003, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = ifelse(var(54),1000,0),9

;--------------------------------------------
; Ultra Argentina Backbreaker - 2nd Backbreak
;--------------------------------------------
[Statedef 6004]
type = S
physics = S
movetype = A
anim = 6002
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6004, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6004, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6004, Bind1]
type = TargetBind
trigger1 = !Time
pos = -4,-82

[State 6004, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 8,-102

[State 6004, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 6004, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
add = 248,248,248
time = 1
ignorehitpause = 1

[State 6004, CollisionSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 4,-84
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6004, GroundWave]
type = Explod
trigger1 = !Time
anim = 7030
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 6004, BoneCrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,11

[State 6004, LandSound]
type = PlaySnd
trigger1 = !Time
value = S1,12

[State 6004, GoToFinalThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6005

;------------------------------------------
; Ultra Argentina Backbreaker - Final Throw
;------------------------------------------
[Statedef 6005]
type = S
physics = S
movetype = A
anim = 6001
ctrl = 0
velset = 0,0
sprpriority = 2

[State 6005, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6005, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6005, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42,-54

[State 6005, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 36,-88

[State 6005, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 12,-108

[State 6005, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -8,-202

[State 6005, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 6005, FinalReceptionDetection]
type = Hitdef
trigger1 = AnimElem = 6
id = 6005
chainid = 6003
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = -1
p2facing = 1
p1stateno = 6006
p2stateno = 6022
numhits = 0
ground.velocity = 6 * -Facing ,-4
air.velocity = 6 * -Facing ,-4
fall = 1
fall.recover = 0
fall.xvelocity = 2
fall.yvelocity = -3.777
yaccel = .5

[State 6005, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = ifelse(var(54),1000,0),9

;----------------------------------------------
; Ultra Argentina Backbreaker - Final Backbreak
;----------------------------------------------
[Statedef 6006]
type = S
physics = S
movetype = A
anim = 6006
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6006, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6006, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6006, Bind1]
type = TargetBind
trigger1 = !Time
pos = 6,-84

[State 6006, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 0,-98

[State 6006, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -4

[State 6006, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
add = 248,248,248
time = 1
ignorehitpause = 1

[State 6006, CollisionSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 4,-84
postype = p1
bindtime = 1
ontop = 1
ownpal = 1
sprpriority = -2

[State 6006, GroundWave]
type = Explod
trigger1 = !Time
anim = 7030
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 6006, BoneCrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,11

[State 6006, LandSound]
type = PlaySnd
trigger1 = !Time
value = S1,12

[State 6006, GoToSmashDown]
type = ChangeState
trigger1 = !AnimTime
value = 6007

;---------------------------------------------------------------
; Ultra Argentina Backbreaker - Death Valley Bomb (KOF'02 style)
;---------------------------------------------------------------
[Statedef 6007]
type = S
physics = S
movetype = A
anim = 6007
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6007, Camera]
type = ScreenBound
trigger1 = 1
value = ifelse((AnimElem = 9,<0),1,0)

[State 6007, MakeSpace]
type = Width
trigger1 = 1
edge = 64,0

[State 6007, Bind01]
type = TargetBind
trigger1 = AnimElem = 1
pos = 0,-104

[State 6007, Bind02]
type = TargetBind
trigger1 = AnimElem = 2
pos = 8,-100

[State 6007, Bind03]
type = TargetBind
trigger1 = AnimElem = 3
pos = -8,-108

[State 6007, Bind04] 
type = TargetBind
trigger1 = AnimElem = 4
pos = -20,-116

[State 6007, Bind05] 
type = TargetBind
trigger1 = AnimElem = 5
pos = -20,-116

[State 6007, Bind06] 
type = TargetBind
trigger1 = AnimElem = 6
pos = -16,-110

[State 6007, Bind07]
type = TargetBind
trigger1 = AnimElem = 7
pos = -14,-80

[State 6007, Bind08]
type = TargetBind
trigger1 = AnimElem = 8
pos = -36,0

[State 6007, Bind09]
type = TargetBind
trigger1 = AnimElem = 9
pos = -36,0

[State 6007, TBind10]
type = TargetBind
trigger1 = AnimElem = 10
pos = -40,-6

[State 6007, Shake]
type = Envshake
trigger1 = AnimElem = 8
time = 20
freq = 70
ampl = -8

[State 6007, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = ifelse(var(54),1000,0),19
channel = 0

[State 6007, WindSound]
type = PlaySnd
trigger1 = AnimElem = 5
value = S1,15

[State 6007, CrushSound]
type = PlaySnd
trigger1 = AnimElem = 8
value = S1,16

[State 6007, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = AnimElem = 8
add = 248,248,248
time = 1
ignorehitpause = 1

[State 6007, GroundWaveBG]
type = Explod
trigger1 = AnimElem = 8
anim = 7035
pos = -24,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 6007, GroundWaveFG]
type = Explod
trigger1 = AnimElem = 8
anim = 7036
pos = -24,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6007, Turn]
type = Turn
trigger1 = AnimElem = 11

[State 6007, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------
; Ultra Argentina Backbreaker - Opponent grabbed in 1st throw
;-------------------------------------------------------------
[Statedef 6010]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6010, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6010, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6010

[State 6010, BringToFront]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 6010, StartVelY]
type = VelSet
trigger1 = AnimElem = 6,=0
y = -12.5

[State 6010, Gravity]
type = VelAdd
trigger1 = AnimElem = 6,>0
y = .5

[State 6010, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6010, GoToComingDown]
type = ChangeState
trigger1 = AnimElem = 6,>0 && !Vel Y
value = 6011

;--------------------------------------------------------------
; Enemy thrown by Ultra Argentina BackBreaker - 1st coming down
;--------------------------------------------------------------
[Statedef 6011]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = -1

[State 6011, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6011, Gravity]
type = VelAdd
trigger1 = Time > 1
y = .5

[State 6011, CanBeGrabbedOnly]
type = HitBy
trigger1 = 1
value = S, HT

;------------------------------------------------------------
; Enemy Thrown by Ultra Argentina BackBreaker - 1st backbreak
;------------------------------------------------------------
[Statedef 6012]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6012, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6012, CollisionAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6012

[State 6012, Damage]
type = LifeAdd
trigger1 = !Time
value = -88
kill = 0

[State 6012, GoToSecondThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6013

;-----------------------------------------------------------
; Opponent thrown by Ultra Argentina Backbreaker - 2nd throw
;-----------------------------------------------------------
[Statedef 6013]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6013, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6013, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6013, ThrownAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6013

[State 6013, BringToFront]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 6013, StartVelY]
type = VelSet
trigger1 = AnimElem = 4
y = -12.5

[State 6013, Gravity]
type = VelAdd
trigger1 = AnimElem = 4,>0
y = .5

[State 6013, GoToComingDown]
type = ChangeState
trigger1 = AnimElem = 4,>0 && !Vel Y
value = 6014

;----------------------------------------------
; Ultra Argentina Backbreaker - 2nd Coming Down
;----------------------------------------------
[Statedef 6014]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6014, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6014, Gravity]
type = VelAdd
trigger1 = Time > 1
y = .5

[State 6014, CanBeGrabbedOnly]
type = Hitby
trigger1 = 1
value = S, HT

;---------------------------------------------------------------
; Opponent Thrown by Ultra Argentina Backbreaker - 2nd Backbreak
;---------------------------------------------------------------
[Statedef 6015]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6015, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6015, CollisionAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6012

[State 6015, Damage]
type = LifeAdd
trigger1 = !Time
value = -78
kill = 0

[State 6015, GoToFinalThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6020

;-------------------------------------------
; Ultra Argentina Backbreaker - Final Thrown 
;-------------------------------------------
[Statedef 6020]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6020, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6020, ThrownAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6013

[State 6020, Invicincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6020, BringToFront]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 6020, StartVelY]
type = VelSet
trigger1 = AnimElem = 4
y = -12.5

[State 6020, Gravity]
type = VelAdd
trigger1 = AnimElem = 4,>0
y = .5

[State 6020, GoToComingDown]
type = ChangeState
trigger1 = AnimElem = 4,>0 && !Vel Y
value = 6021

;---------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker - 3rd come down
;---------------------------------------------------------------
[Statedef 6021]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6021, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6021, Gravity]
type = VelAdd
trigger1 = Time > 1
y = .5

[State 6021, CanBeGrabbedOnly]
type = HitBy
trigger1 = 1
value = S, HT

;---------------------------------------------------------------------------
; Opponent Thrown by Ultra Argentina BackBreaker - being backbreak(face down)
;---------------------------------------------------------------------------
[Statedef 6022]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6022, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6022, BackBreakAnim]
type = ChangeAnim2
trigger1 = !Time
value = 917

[State 6022, Damage]
type = LifeAdd
trigger1 = !Time
value = -78
kill = 0

[State 6022, GoToSaashedDown]
type = ChangeState
trigger1 = !AnimTime
value = 6023

;----------------------------------------------------------------------
; Opponent Thrown By Ultra Argentina Backbreaker - Smashed Down (KOF'02)
;---------------------------------------------------------------------
[Statedef 6023]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6023, Camera]
type = ScreenBound
trigger1 = 1
value = ifelse((AnimElem = 7,<0),1,0)

[State 6023, ThrownAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6023

[State 6023, Damage]
type = LifeAdd
trigger1 = AnimElem = 7
value = -78

[State 6023, GoToBounce]
type = ChangeState
trigger1 = !AnimTime
value = 6024

;-----------------------------------------------------------------------
; Opponent Thrown By Ultra Argentina Backbreaker - Hit ground from smash
;-----------------------------------------------------------------------
[Statedef 6024]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6024, StartVels]
type = VelSet
trigger1 = !Time
x = GetHitVar(xvel)
y = GetHitVar(yvel)

[State 6024, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 6024, BounceAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6024

[State 6024, GoToHitGround]
type = SelfState
trigger1 = Vel Y
trigger1 = Pos Y + Vel Y >= 0
value = 5100

;--------------------------------------------------------------------------
; Ultra Argentina Backbreaker (DM) (Retro Mode)
;--------------------------------------------------------------------------
;-------------
; Grab Attempt
;-------------
[Statedef 6075]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 6246
facep2 = 1

[State 6075, FxSound]
type = PlaySnd
trigger1 = !Time
value = S1,13

[State 6075, BGPal]
type = BGPalFX
trigger1 = Time = [0,4]
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6075, NoFg]
type = AssertSpecial
trigger1 = Time = [1,4]
flag = noFg

[State 6075, BgDMFx]
type = Explod
trigger1 = Time = 3
anim = 7051
pos = 20, -88
postype = p1
bindtime = 1
sprpriority = -3
removeongethit = 1
supermovetime = 30
ownpal = 1
ignorehitpause = 1

[State 6075, FgDMFx]
type = Explod
trigger1 = Time = 3
anim = 7050
pos = 14, -100
postype = p1
bindtime = 1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermovetime = 30
ignorehitpause = 1

[State 6075, NoBg]
type = AssertSpecial
trigger1 = Time = [5,28]
flag = noBg
flag2 = noFg

[State 6075, SuperPause]
type = SuperPause
trigger1 = Time = 2
pos = 15,-85
unhittable = 1
anim = -1
time = 28
darken = 0
movetime = 28
poweradd = -1000
ignorehitpause = 1

[State 6075, GrabAttempt]
type = HitDef
triggerall = var(13) < 10         ; Throw Limiter on basic attacks
triggerall = !var(14)             ; Throw Limiter on basic jump attacks
triggerall = !var(24)             ; Won't grab if opponent has just guarded a move.
triggerall = P2StateNo != [40,52] ; Can't throw when opponent is starting a jump / landing from a jump
trigger1 = AnimElem = 1 
id = 6000
attr = S, HT
hitflag = M
priority = 5, Dodge
sparkno = -1         
sprpriority = 2
p2facing = 1
p1stateno = 6076
p2stateno = 6010
numhits = 0

[State 6075, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------------------------
; Ultra Argentina Backbreaker Success - 1st throw
;------------------------------------------------
[Statedef 6076]
type = S
physics = S
movetype = A
anim = 6076
ctrl = 0
velset = 0,0

[State 6076, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6076, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6076, SuperPauseHelper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "SuperPauseHelper"
id = 6050
pos = 0,0
postype = p1
stateno = 6050
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 6076, Bind1]
type = TargetBind
trigger1 = AnimElem = 1,=0
pos = (Target,const(size.head.pos.x)) + 40,0

[State 6076, Bind2]
type = TargetBind
trigger1 = AnimElem = 2,=0
pos = (Target,const(size.head.pos.x)) + 44,0

[State 6076, Bind3]
type = TargetBind
trigger1 = AnimElem = 3,=0
pos = (Target,const(size.head.pos.x)) + 16,0

[State 6076, Bind4]
type = TargetBind
trigger1 = AnimElem = 4,=0 
pos = 38,-88

[State 6076, Bind5]
type = TargetBind
trigger1 = AnimElem = 5,=0
pos = 16,-100

[State 6076, Bind6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -8,-202

[State 6076, GrabSpark]
type = Explod
trigger1 = AnimElem = 3
anim = 7020
pos = 48,-58
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 6076, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,9

[State 6076, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 5
value = ifelse(var(54),1000,0),9

[State 6076, SendToBack]
type = SprPriority
trigger1 = AnimElem = 5
value = -1

[State 6076, ReceptionDetection]
type = Hitdef
trigger1 = AnimElem = 11
id = 6001
chainid = 6000
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6077
p2stateno = 6012
numhits = 0

[State 6076, ImpactSound]
type = PlaySnd
trigger1 = AnimElem = 8
value = S2,2

[State 6076, ImpactSpark]
type = Explod
trigger1 = AnimElem = 8
anim = 7010
pos = 12,-96
postype = p1
sprpriority = 3

[State 6076, GoToStance]
type = ChangeState
trigger1 = Time = 142
value = 0
ctrl = 1

;--------------------------------------------
; Ultra Argentina Backbreaker - 1st Backbreak
;--------------------------------------------
[Statedef 6077]
type = S
physics = S
movetype = A
anim = 6002
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6077, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6077, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6077, Bind1]
type = TargetBind
trigger1 = !Time
pos = -4,-82

[State 6077, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 8,-102

[State 6077, Shake]
type = EnvShake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 6077, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6077, CollisionSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 4,-84
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6077, GroundWave]
type = Explod
trigger1 = !Time
anim = 7030
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 6077, BoneCrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,11

[State 6077, LandSound]
type = PlaySnd
trigger1 = !Time
value = S1,12

[State 6077, GoToSecondThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6078

;----------------------------------------
; Ultra Argentina Backbreaker - 2nd throw
;----------------------------------------
[Statedef 6078]
type = S
physics = S
movetype = A
anim = 6001
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6078, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6078, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6078, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42,-54

[State 6078, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 36,-88

[State 6078, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 12,-108

[State 6078, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -8,-202

[State 6078, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 6078, ReceptionDetection]
type = Hitdef
trigger1 = AnimElem = 6
id = 6003
chainid = 6001
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6079
p2stateno = 6015
numhits = 0

;--------------------------------------------
; Ultra Argentina Backbreaker - 2nd Backbreak
;--------------------------------------------
[Statedef 6079]
type = S
physics = S
movetype = A
anim = 6002
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6079, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6079, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6079, Bind1]
type = TargetBind
trigger1 = !Time
pos = -4,-82

[State 6079, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 8,-102

[State 6079, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 6079, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6079, CollisionSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 4,-84
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6079, GroundWave]
type = Explod
trigger1 = !Time
anim = 7030
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 6079, BoneCrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,11

[State 6079, LandSound]
type = PlaySnd
trigger1 = !Time
value = S1,12

[State 6079, GoToFinalThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6080

;---------------------------------------------
; Ultra Argentina Backbreaker - Last reception
;---------------------------------------------
[Statedef 6080]
type = S
physics = S
movetype = A
anim = 6001
ctrl = 0
velset = 0,0
sprpriority = 2

[State 6080, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6080, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6080, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42,-54

[State 6080, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 36,-88

[State 6080, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 12,-108

[State 6080, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -8,-202

[State 6080, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 6080, FinalReceptionDetection]
type = Hitdef
trigger1 = AnimElem = 6
id = 6005
chainid = 6003
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
ground.velocity = 4 * Facing ,-4
air.velocity = 4 * Facing ,-4
fall = 1
fall.recover = 0
fall.xvelocity = -2
fall.yvelocity = -3.777
yaccel = .5
sprpriority = 2
p2facing = 1
p1stateno = 6081
p2stateno = 6085
numhits = 0

;------------------------------------------
; Ultra Argentina Backbreaker - Final Throw
;------------------------------------------
[Statedef 6081]
type = S
physics = S
movetype = A
anim = 6081
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6081, Camera]
type = ScreenBound
trigger1 = 1
value = ifelse((AnimElem = 5,<0),1,0)

[State 6081, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6081, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 6,-84

[State 6081, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 0,-98

[State 6081, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -28,-128

[State 6081, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 22,-106

[State 6081, Bind5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 32,-68

[State 6081, CollisionSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 4,-84
postype = p1
bindtime = 1
ontop = 1
ownpal = 1
sprpriority = -2

[State 6081, GroundWave]
type = Explod
trigger1 = !Time
anim = 7030
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 6081, BoneCrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,11

[State 6081, LandSound]
type = PlaySnd
trigger1 = !Time
value = S1,12

[State 6081, BringToFront]
type = SprPriority
trigger1 = AnimElem = 3
value = 3

[State 6081, Shake]
type = Envshake
trigger1 = !Time
trigger2 = AnimElem = 5
time = 20
freq = 70
ampl = -8

[State 6081, Flash]
type = BGPalFX
triggerall = RoundState = 2
trigger1 = !Time
trigger2 = AnimElem = 5
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6081, SparkHit]
type = Explod
trigger1 = AnimElem = 5
anim = 7025
pos = 30,-42
postype = p1
bindtime = 1
ontop = 1
sprpriority = 3
ownpal = 1

[State 6081, GroundImpactSound]
type = PlaySnd
trigger1 = AnimElem = 5
value = S1,16

[State 6081, GroundImpactWave]
type = Explod
trigger1 = AnimElem = 5
anim = 7030
pos = 40,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 0
ownpal = 1

[State 6081, BoneCrush]
type = PlaySnd
trigger1 = AnimElem = 5
value = S1,11

[State 6081, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 9
value = ifelse(var(54),1000,0),8

[State 6081, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------
; Enemy Thrown by Ultra Argentina BackBreaker - Last backbreak
;-------------------------------------------------------------
[Statedef 6085]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 2

[State 6085, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6085, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6085

[State 6085, Damage]
type = LifeAdd
trigger1 = !Time
value = -88
kill = 0

[State 6085, GoToKneeHitBy]
type = ChangeState
trigger1 = !AnimTime
value = 6086

;---------------------------------------------------------
; Enemy Thrown by Ultra Argentina BackBreaker - Final grab
;---------------------------------------------------------
[Statedef 6086]
type = A
physics = N
movetype = H
ctrl = 0

[State 6086, Camera]
type = ScreenBound
trigger1 = AnimElem = 3,<19
value = 1

[State 6086, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6086

[State 6086, Damage]
type = LifeAdd
;trigger1 = Vel Y > 0
;trigger1 = Pos y + Vel Y > -20 ; KOF95'ish
trigger1 = AnimElem = 3 ; Post KOF95
value = -78

[State 6086, SetFallVel]
type =  VelSet
trigger1 = AnimElem = 3,=19
x = GetHitVar(xvel)
y = GetHitVar(yvel)

[State 6086, Gravity]
type =  VelAdd
trigger1 = Vel X
y = GetHitVar(yaccel)

[State 6086, GoToBounce]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos y + Vel Y > -30
value = 5100

;--------------------------------------------------------------------------
; Ultra Argentina Backbreaker (SDM)
;--------------------------------------------------------------------------

;--------------
; Grab Attempt
;--------------
[Statedef 6100]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 6246
facep2 = 1

[State 6100, FxSound]
type = PlaySnd
trigger1 = !Time
value = S1,17

[State 6100, BGPal]
type = BGPalFX
trigger1 = time = [0,4]
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6100, NoFg]
type = AssertSpecial
trigger1 = Time = [1,4]
flag = noFg

[State 6100, BgDMFx]
type = Explod
trigger1 = Time = 3
anim = 7062
pos = 14, -100
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
supermovetime = 30
ownpal = 1
ignorehitpause = 1

[State 6100, FgDMFx]
type = Explod
trigger1 = Time = 3
anim = 7061
pos = 14, -100
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermovetime = 30
ignorehitpause = 1

[State 6100, NoBg]
type = AssertSpecial
trigger1 = Time = [4,28]
flag = noBg
flag2 = noFg

[State 6100, Pause]
type = SuperPause
trigger1 = Time = 2
pos = 15,-85
unhittable = 1
anim = -1
time = 28
darken = 0
movetime = 28
poweradd = -2000
ignorehitpause = 1

[State 6100, GrabAttempt]
type = HitDef
triggerall = var(14) <= 0         ; Throw Limiter
triggerall = var(24) = 0          ; Won't grab if opponent has just guarded a move.
triggerall = P2StateNo != [40,52] ; Can't throw when opponent is starting a jump / landing from a jump
trigger1 = AnimElem = 1 
id = 6100
attr = S, HT
hitflag = M
priority = 5, Dodge
sparkno = -1         
sprpriority = 2
p2facing = 1
p1stateno = 6101
p2stateno = 6110
numhits = 0

[State 6100, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------------------------
; Ultra Argentina Backbreaker Success - 1st throw
;------------------------------------------------
[Statedef 6101]
type = S
physics = S
movetype = A
anim = 6000
ctrl = 0
velset = 0,0

[State 6101, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6101, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6101, SuperPauseHelper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "SuperPauseHelper"
id = 6150
pos = 0,0
postype = p1
stateno = 6150
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 6101, GrabSpark]
type = Explod
trigger1 = AnimElem = 3
anim = 7020
pos = 48,-58
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 6101, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,9

[State 6101, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 5
value = ifelse(var(54),1000,0),9

[State 6101, TBind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = (Target,const(size.head.pos.x)) + 40,0

[State 6101, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = (Target,const(size.head.pos.x)) + 44,0

[State 6101, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = (Target,const(size.head.pos.x)) + 16,0

[State 6101, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 38,-88

[State 6101, Bind5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 16,-100

[State 6101, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -8,-202

[State 6101, ReceptionDetection]
type = Hitdef
trigger1 = AnimElem = 8
id = 6101
chainid = 6100
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6102
p2stateno = 6112
numhits = 0

[State 6101, GoToStance]
type = ChangeState
trigger1 = Time = 142
value = 0
ctrl = 1

;-----------------------------------------------------------------
; Ultra Argentina Backbreaker Success - Success SuperPause helper
;-----------------------------------------------------------------
[Statedef 6150]
type = S
anim = 6150

[State 6150, Pause]
type = SuperPause
trigger1 = !Time
pos = 15,-85
unhittable = 1
anim = -1
time = 26
darken = 0
movetime = 26
poweradd = -2000
ignorehitpause = 1

[State 6150, BGPal]
type = BGPalFX
trigger1 = Time = [0,4]
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6150, NoFg]
type = AssertSpecial
trigger1 = Time = [1,4]
flag = noFg

[State 6150, BgDMFx]
type = Explod
trigger1 = Time = 1
anim = 7062
pos = 14, -100
postype = p1
bindtime = 1
sprpriority = -3
removeongethit = 1
ownpal = 1
supermovetime = 30
ignorehitpause = 1

[State 6150, FgDMFx]
type = Explod
trigger1 = Time = 1 
anim = 7061
pos = 14, -100
postype = p1
bindtime = 1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermovetime = 30
ignorehitpause = 1

[State 6150, NoBg]
type = AssertSpecial
trigger1 = Time = [5,26]
flag = noBg
flag2 = noFg

[State 6150, Delete]
type = DestroySelf
trigger1 = (Root,StateNo) != 6101

;--------------------------------------------
; Ultra Argentina Backbreaker - 1st Backbreak
;--------------------------------------------
[Statedef 6102]
type = S
physics = S
movetype = A
anim = 6002
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6102, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6102, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6102, Bind1]
type = TargetBind
trigger1 = !Time
pos = -4,-82

[State 6102, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 8,-102

[State 6102, Shake]
type = EnvShake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 6102, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6102, CollisionSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 4,-84
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6102, GroundWaveBG]
type = Explod
trigger1 = !Time
anim = 7035
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 6102, GroundWaveBG]
type = Explod
trigger1 = !Time
anim = 7036
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6102, BoneCrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,11

[State 6102, LandSound]
type = PlaySnd
trigger1 = !Time
value = S1,12

[State 6102, GoToSecondThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6103

;----------------------------------------
; Ultra Argentina Backbreaker - 2nd throw
;----------------------------------------
[Statedef 6103]
type = S
physics = S
movetype = A
anim = 6001
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6103, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6103, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6103, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42,-54

[State 6103, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 36,-88

[State 6103, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 12,-108

[State 6103, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -8,-202

[State 6103, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 6103, ReceptionDetection]
type = Hitdef
trigger1 = AnimElem = 6
id = 6102
chainid = 6101
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6104
p2stateno = 6115
numhits = 0

[State 6103, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = ifelse(var(54),1000,0),9

;--------------------------------------------
; Ultra Argentina Backbreaker - 2nd Backbreak
;--------------------------------------------
[Statedef 6104]
type = S
physics = S
movetype = A
anim = 6002
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6104, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6104, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6104, Bind1]
type = TargetBind
trigger1 = !Time
pos = -4,-82

[State 6104, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 8,-102

[State 6104, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 6104, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6104, CollisionSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 4,-84
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6104, GroundWaveBG]
type = Explod
trigger1 = !Time
anim = 7035
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 6104, GroundWaveFG]
type = Explod
trigger1 = !Time
anim = 7036
pos = 4,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6104, BoneCrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,11

[State 6104, LandSound]
type = PlaySnd
trigger1 = !Time
value = S1,12

[State 6104, GoToFinalThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6105

;------------------------------------------
; Ultra Argentina Backbreaker - Final Throw
;------------------------------------------
[Statedef 6105]
type = S
physics = N
movetype = A
anim = 6050
ctrl = 0
velset = 0,0
sprpriority = 2

[State 6105, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6105, MakeSpace]
type = Width
trigger1 = 1
edge = 52,24

[State 6105, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42,-54

[State 6105, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 36,-88

[State 6105, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 12,-108

[State 6105, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -8,-202

[State 6105, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 6105, StartVelY]
type = VelSet
trigger1 = AnimElem = 8
y = -11

[State 6105, Gravity]
type = VelAdd
trigger1 = AnimElem = 8,>0
y = .5

[State 6105, AirGrabReception]
type = Hitdef
trigger1 = AnimElem = 12
id = 6103
chainid = 6102
attr = A, HT
hitflag = A
animtype = diagup
priority = 7,Hit
sparkno = S7003
sparkxy = -8,-76
hitsound = S2,var(4)
pausetime = 1,0
ground.velocity = -4,-6
air.velocity = -4,-6
fall.recover = 0
fall.xvelocity = 2
fall.yvelocity = -3.777
sprpriority = 2
p1stateno = 6106
p2stateno = 6122
down.bounce = 1
givepower = 15,0
numhits = 0

[State 6105, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
value = ifelse(var(54),1000,0),9

[State 6105, GoToLand]
type = ChangeState
trigger1 = Vel Y
trigger1 = Pos Y + Vel Y > 0
value = 52

;----------------------------------------------
;Ultra Argentina Backbreaker SDM - Coming Down
;----------------------------------------------
[Statedef 6106]
type = A
physics = N
movetype = A
anim = 6051
ctrl = 0
velset = 0,0
sprpriority = 2

[State 6106, Flash]
type = BGPalFX
trigger1 = !Time
trigger1 = RoundState = 2
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6106, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 30,-54

[State 6106, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 28,-48

[State 6106, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -6,-42

[State 6106, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -10,-32

[State 6106, Bind5]
type = TargetBind
trigger1 = AnimElem = 5
pos = -4,-28

[State 6106, Bind6]
type = TargetBind
trigger1 = AnimElem = 6,>=0 && AnimElem = 7,<0
pos = 4,-28

[State 6106, Bind7]
type = TargetBind
trigger1 = AnimElem = 7,>=0 && AnimElem = 8,<0
pos = 4,-28

[State 6106, Bind8]
type = TargetBind
trigger1 = AnimElem = 8,>=0
pos = -2,-12

[State 6106, StartVelY]
type = VelSet
trigger1 = AnimElem = 6
y = -5.5

[State 6106, Gravity]
type = VelAdd
trigger1 = AnimElem = 6,>0
y = .5

[State 6106, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 6
value = ifelse(var(54),1000,0),20

[State 6106, GoToPressing]
type = ChangeState
trigger1 = Vel Y
trigger1 = Pos Y + Vel Y >=  0
value = 6107

;-------------------------------------------------------------------
; Ultra Argentina Backbreaker SDM - Pressing down opponent on ground
;-------------------------------------------------------------------
[Statedef 6107]
type = S
physics = N
movetype = A
anim = 6052
ctrl = 0
velset = 0,0

[State 6107, PosOnGround]
type = Posset
trigger1 = !Time
y = 0

[State 6107, SlamSound]
type = PlaySnd
trigger1 = !Time
value = 1,16

[State 6107, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 6107, Bind]
type = TargetBind
trigger1 = AnimElem = 1
pos = -4,0

[State 6107, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -4

[State 6107, GroundWaveBG]
type = Explod
trigger1 = !Time
anim = 7035
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 6107, GroundWaveFG]
type = Explod
trigger1 = !Time
anim = 7036
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6107, Damage]
type = TargetLifeAdd
trigger1 = !Time
value = -157

[State 6107, GoToJumpBack]
type = ChangeState
trigger1 = !AnimTime
value = 6108

;--------------------------------------------
; Ultra Argentina Backbreaker SDM - Jump Back
;--------------------------------------------
[Statedef 6108]
type = S
physics = N
movetype = I
anim = 6053
ctrl = 0
velset = 0,0

[State 6108, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6108, SetAir]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A

[State 6108, StartVels]
type = VelSet
trigger1 = AnimElem = 2
x = -2.5
y = -8

[State 6108, Gravity]
type = VelAdd
trigger1 = AnimElem = 2,>0
y = .5

[State 6108, Land]
type = ChangeState
trigger1 = Vel Y > 0 
trigger1 = Pos Y + Vel Y >= 0
value = 52

;-------------------------------------------------------------
; Ultra Argentina Backbreaker - Opponent grabbed in 1st throw
;-------------------------------------------------------------
[Statedef 6110]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6110, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6110, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6010

[State 6110, BringToFront]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 6110, StartVelY]
type = VelSet
trigger1 = AnimElem = 6,=0
y = -12.5

[State 6110, Gravity]
type = VelAdd
trigger1 = AnimElem = 6,>0
y = .5

[State 6110, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6110, GoToComingDown]
type = ChangeState
trigger1 = AnimElem = 6,>0 && !Vel Y
value = 6111

;--------------------------------------------------------------
; Enemy thrown by Ultra Argentina BackBreaker - 1st coming down
;--------------------------------------------------------------
[Statedef 6111]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = -1

[State 6111, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6111, Gravity]
type = VelAdd
trigger1 = Time > 1
y = .5

[State 6111, CanBeGrabbedOnly]
type = HitBy
trigger1 = 1
value = S, HT

;------------------------------------------------------------
; Enemy Thrown by Ultra Argentina BackBreaker - 1st backbreak
;------------------------------------------------------------
[Statedef 6112]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6112, Camera]
type = ScreenBound
trigger1 = 1
value = 1
sprpriority = 2

[State 6112, CollisionAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6012

[State 6112, Damage]
type = LifeAdd
trigger1 = !Time
value = -78
kill = 0

[State 6112, GoToSecondThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6113

;-----------------------------------------------------------
; Opponent thrown by Ultra Argentina Backbreaker - 2nd throw
;-----------------------------------------------------------
[Statedef 6113]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6113, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6113, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6113, ThrownAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6013

[State 6113, BringToFront]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 6113, StartVelY]
type = VelSet
trigger1 = AnimElem = 4
y = -12.5

[State 6113, Gravity]
type = VelAdd
trigger1 = AnimElem = 4,>0
y = .5

[State 6113, GoToComingDown]
type = ChangeState
trigger1 = AnimElem = 4,>0 && !Vel Y
value = 6114

;----------------------------------------------
; Ultra Argentina Backbreaker - 2nd Coming Down
;----------------------------------------------
[Statedef 6114]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6114, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6114, Gravity]
type = VelAdd
trigger1 = Time > 1
y = .5

[State 6114, CanBeGrabbedOnly]
type = Hitby
trigger1 = 1
value = S, HT

;---------------------------------------------------------------
; Opponent Thrown by Ultra Argentina Backbreaker - 2nd Backbreak
;---------------------------------------------------------------
[Statedef 6115]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6115, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6115, CollisionAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6012

[State 6115, Damage]
type = LifeAdd
trigger1 = !Time
value = -78
kill = 0

[State 6115, GoToFinalThrow]
type = ChangeState
trigger1 = !AnimTime
value = 6120

;-------------------------------------------
; Ultra Argentina Backbreaker - Final Thrown 
;-------------------------------------------
[Statedef 6120]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 6120, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6120, ThrownAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6013

[State 6120, Invicincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6120, BringToFront]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 6120, StartVelY]
type = Velset
trigger1 = AnimElem = 4
y = -12

[State 6120, Gravity]
type = VelAdd
trigger1 = AnimElem = 4,>0
y = .5

[State 6120, GoToComingDown]
type = ChangeState
trigger1 = AnimElem = 4,>0 && !Vel Y
value = 6121

;---------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker - 3rd come down
;---------------------------------------------------------------
[Statedef 6121]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6121, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6121, Gravity]
type = VelAdd
trigger1 = Time > 1
y = .5

[State 6121, CanBeGrabbedOnly]
type = HitBy
trigger1 = 1
value = S, HT

;------------------------------------------------------------------------
; Opponent Thrown by Ultra Argentina Backbreaker SDM - Falling with Clark
;------------------------------------------------------------------------
[Statedef 6122]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 2

[State 6122, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 6122, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 6122

[State 6122, Damage]
type = LifeAdd
trigger1 = !Time
value = -157
kill = 0

[State 6122, GoToSlamDown]
type = ChangeState
trigger1 = P2StateNo = 6107
value = 6123

;---------------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker SDM - Being slam down
;---------------------------------------------------------------------
[Statedef 6123]
type = A
physics = N
movetype = H
ctrl = 0

[State 6123, SmashedAnim]
type = ChangeAnim
trigger1 = !Time
value = ifelse(SelfAnimExist(5112),5112,ifelse(SelfAnimExist(5111),5111,5110))

[State 6123, Turn]
type = Turn
trigger1 = !Time
trigger1 = !SelfAnimExist(5112) && !SelfAnimExist(5111)

[State 6123, Camera]
type = ScreenBound
trigger1 = Anim = [5110,5112]
value = 1

[State 6123, BounceAnim]
type = ChangeAnim
trigger1 = Time = 22
value = ifelse(SelfAnimExist(5162),5162,ifelse(SelfAnimExist(5161),5161,5160))

[State 6123, SelectBounceFrame]
type = ChangeAnim
trigger1 = Anim = [5161,5162]
value = Anim
elem = ifelse((AnimElem=5,<0),5,ifelse((AnimElem=4,<0),4,ifelse((AnimElem=3,<0),3,ifelse((AnimElem=2,<0),2,1))))
persistent = 0

[State 6123, HitVelSet]
type = VelSet
trigger1 = Anim = [5160,5162]
x = GetHitVar(xvel) * facing
y = GetHitVar(yvel)
persistent = 0

[State 6123, PosOnGround]
type = PosSet
trigger1 = Anim = [5161,5162]
y = 20
persistent = 0

[State 6123, Gravity]
type = VelAdd
trigger1 = Anim = [5160,5162]
y = GetHitVar(yaccel)

[State 6123, GoToHitGround]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Vel Y + Pos Y >= 6
value = 6124

;-----------------------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker SDM - Hit ground from bounce
;-----------------------------------------------------------------------------
[Statedef 6124]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 6124, PosOnGround]
type = PosSet
trigger1 = !Time
y = 0

[State 6124, HitGroundAnim]
type = ChangeAnim
trigger1 = !Time
value = ifelse(SelfAnimExist(5112),5112,ifelse(SelfAnimExist(5111),5111,5110))

[State 6124, BounceAnim]
type = ChangeAnim
trigger1 = Time = 4
value = ifelse(SelfAnimExist(5162),5162,ifelse(SelfAnimExist(5161),5161,5160))

[State 6124, SelectBounceFrame]
type = ChangeAnim
trigger1 = Anim = [5161,5162]
value = Anim
elem = ifelse((AnimElem=4,<0),4,ifelse((AnimElem=3,<0),3,ifelse((AnimElem=2,<0),2,1)))
persistent = 0

[State 6124, StartVels]
type = VelSet
trigger1 = Anim = [5160,5162]
x = ifelse((!SelfAnimExist(5161) && !SelfAnimExist(5162)),GetHitVar(fall.xvel),-GetHitVar(fall.xvel))
y = GetHitVar(fall.yvel)
persistent = 0

[State 6124, PosOnGround]
type = PosSet
trigger1 = Anim = [5161,5162]
y = 20
persistent = 0

[State 6124, Gravity]
type = VelAdd
trigger1 = Anim = [5160,5162]
y = GetHitVar(yaccel)

; Disable to force ground wave and impact sound
[State 6124, GoToLieDown]
type = null ; ChangeState
trigger1 = Vel Y > 0
trigger1 = Vel Y + Pos Y >= 6
value = 6125

[State 6124, GoToLieDown]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Vel Y + Pos Y >= 6
value = 5110

;-----------------------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker SDM - Lie down
;-----------------------------------------------------------------------------
[Statedef 6125]
type = L
movetype = H
physics = N
velset = 0,0

[State 6125, Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 6125, LieDownAnim]
type = ChangeAnim
trigger1 = !Time
value = ifelse(SelfAnimExist(5112),5112,ifelse(SelfAnimExist(5111),5111,5110))

[State 6125, GoToGetUp]
type = SelfState
trigger1 = Alive
trigger1 = Time = 13
value = 5120

[State 6125, GoToLieDead]
type = SelfState
trigger1 = !Alive
value = 5150

;--------------------------------------------------------------------------
; Running Three (KOF98/02 DM) (Retro Mode)
;--------------------------------------------------------------------------

;--------------
; Grab Attempt
;--------------
[Statedef 3000]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3000
sprpriority = 2
facep2 = 1

[State 3000, SetGrabOnly]
type = NotHitBy
trigger1 = AnimTime
value = ,AA,AP

[State 3000, FxSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,13

[State 3000, BGPal]
type = BGPalFX
trigger1 = Time = [5,8]
time = 1
add = 248,248,248
ignorehitpause = 1

[State 3000, NoFg]
type = AssertSpecial
trigger1 = Time = [6,9]
flag = noFg

[State 3000, BgDMFx]
type = Explod
trigger1 = AnimElem = 3,=2
anim = 7051
pos = 14, -90
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
supermovetime = 30
ownpal = 1

[State 3000, FgDMFx]
type = Explod
trigger1 = AnimElem = 3,=2
anim = 7050
pos = 14, -90
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermovetime = 30

[State 3000, NoBg]
type = AssertSpecial
trigger1 = Time = [10,33]
flag = noBg
flag2 = noFg

[State 3000, Pause]
type = SuperPause
trigger1 = AnimElem = 2
unhittable = 1
anim = -1
time = 29
darken = 0
movetime = 29
poweradd = -1000
ignorehitpause = 1

[State 3000, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),21

[State 3000, GoToRun]
type = ChangeState
trigger1 = !AnimTime
value = 3001

;---------------------------------------
; Running Three - Running (obviously :P)
;---------------------------------------
[Statedef 3001]
type = S
movetype = A
physics = N
anim = 101
ctrl = 0
velset = 0
sprpriority = 2

[State 3001, SetRunVelX]
type = VelSet
trigger1 = !Time
x = 6.5

[State 3001, RunSound]
type = PlaySnd
trigger1 = !Time
value = S1,2
channel = 3
loop = 1

[State 3001, AfterImages]
type = AfterImage
trigger1 = AnimElem = 1
palinvertall = 1
time = 33
length = 12
framegap = 3

[State 3001, Continue]
type = ChangeState
trigger1 = P2BodyDist X < 15
value = 3002

[State 3001, GoToGrabMiss]
type = ChangeState
trigger1 = Time > 23
value = 920
ctrl = 0

;--------------------------
; Running Three - Grab Miss
;--------------------------
[Statedef 920]
type = S
physics = S
movetype = I
anim = 920
ctrl = 0
velset = 0,0
sprpriority = 2

[State 920, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 920, FrictionSound]
type = PlaySnd
trigger1 = !Time
value = S1,14

[State 920, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------------
; Running Three - Grab Attempt
;-----------------------------
[Statedef 3002]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 3050
sprpriority = 2

[State 3002, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 3002, GrabAttempt]
type = HitDef
triggerall = var(13) < 10         ; Throw Limiter on basic attacks
triggerall = !var(14)             ; Throw Limiter on basic jump attacks
triggerall = !var(24)             ; Won't grab if opponent has just guarded a move.
triggerall = P2StateNo != [40,52] ; Can't throw when opponent is starting a jump / landing from a jump
trigger1 = AnimElem = 2
attr = S, HT
hitflag = M
priority = 5, Miss
sparkno = -1         
ground.velocity = 4,-6
fall = 1
fall.recover = 0
fall.xvelocity = -2
fall.yvelocity = -3.777
yaccel = .5
sprpriority = 1
p2facing = 1
p1stateno = 3003
p2stateno = 3013
numhits = 0

[State 3002, SlideSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,14

[State 3002, GoToGrabMiss]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------
; Running Three - Success 
;------------------------
[Statedef 3003]
type = S
physics = N
movetype = A
anim = 3001
ctrl = 0
sprpriority = 2

[State 3013, Camera]
type = ScreenBound
trigger1 = !Vel X && !Vel Y
value = 1

[State 3013, MakeSpace]
type = Width
trigger1 = 1
edge = 44,30

[State 3013, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 3013, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
add = 255,255,255
time = 1
ignorehitpause = 1

[State 3013, GrabSpark]
type = Explod
trigger1 = !Time
anim = 7020
pos = 58,-86
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 3013, GrabSound]
type = PlaySnd
trigger1 = !Time
value = S1,9

[State 3013, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3
value = 1

[State 3013, Turn]
type = Turn
trigger1 = AnimElem = 6

[State 3013, BringToFront]
type = SprPriority
trigger1 = AnimElem = 7
value = 2

[State 3013, GoBackwards]
type = PosAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
trigger3 = AnimElem = 10
x = -16

[State 3013, RunAcceleration]
type = VelAdd
trigger1 = AnimElem = 13,>1 && AnimElem = 19,<0
x = .25

[State 3013, RunSound]
type = PlaySnd
trigger1 = AnimElem = 14
value = S1,2
channel = 1

[State 3013, Bind01]
type = TargetBind
trigger1 = AnimElem = 1,=0
pos = (Target,const(size.head.pos.x)) + 48,0

[State 3013, Bind02]
type = TargetBind
trigger1 = AnimElem = 2
pos = (Target,const(size.head.pos.x)) + 24,0

[State 3013, Bind03]
type = TargetBind
trigger1 = AnimElem = 3
pos = 16,-76

[State 3013, Bind04]
type = TargetBind
trigger1 = AnimElem = 4
pos = 8,-80

[State 3013, Bind05]
type = TargetBind
trigger1 = AnimElem = 5
pos = -4,-96

[State 3013, Bind06]
type = TargetBind
trigger1 = AnimElem = 6
pos = 2,-116

[State 3013, Bind07]
type = TargetBind
trigger1 = AnimElem = 7
pos = 4,-116

[State 3013, Bind08]
type = TargetBind
trigger1 = AnimElem = 8
pos = 2,-116

[State 3013, Bind09]
type = TargetBind
trigger1 = AnimElem = 9
pos = 6,-112

[State 3013, Bind10]
type = TargetBind
trigger1 = AnimElem = 10
pos = 14,-102

[State 3013, Bind11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 6,-100

[State 3013, Bind12]
type = TargetBind
trigger1 = AnimElem = 12
pos = 6,-100

[State 3013, Bind13]
type = TargetBind
trigger1 = AnimElem = 13,>=0 && AnimElem = 14,<0
pos = 8,-110

[State 3013, Bind14]
type = TargetBind
trigger1 = AnimElem = 14,>=0 && AnimElem = 15,<0
pos = 0,-104

[State 3013, Bind15]
type = TargetBind
trigger1 = AnimElem = 15,>=0 && AnimElem = 16,<0
pos = 12,-98

[State 3013, Bind16]
type = TargetBind
trigger1 = AnimElem = 16,>=0 && AnimElem = 17,<0
pos = 20,-104

[State 3013, Bind17]
type = TargetBind
trigger1 = AnimElem = 17,>=0 && AnimElem = 18,<0
pos = 22,-104

[State 3013, Bind18]
type = TargetBind
trigger1 = AnimElem = 18,>=0 && AnimElem = 19,<0
pos = 16,-100

[State 3013, JumpSound]
type = PlaySnd
trigger1 = AnimElem = 19
value = S1,4
channel = 1

[State 3013, SetAir]
type = StateTypeSet
trigger1 = AnimElem = 19
statetype = A

[State 3013, JumpImpulsion]
type = PosAdd
trigger1 = AnimElem = 19
x = 7

[State 3013, StartJumpVel]
type = VelSet
trigger1 = AnimElem = 19
x = 7.25
y = -8

[State 3013, Gravity]
type = VelAdd
trigger1 = AnimElem = 19,>0
y = .5

[State 3013, Bind19]
type = TargetBind
trigger1 = AnimElem = 19,>=0 && AnimElem = 20,<0
pos = 20,-124

[State 3013, Bind20]
type = TargetBind
trigger1 = AnimElem = 20,>=0 && AnimElem = 21,<0
pos = 20,-122

[State 3013, Bind21]
type = TargetBind
trigger1 = AnimElem = 21,>=0
pos = 16,-95

[State 3013, GoToLand]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3004

;-----------------------------
; Running Three - Reach ground
;-----------------------------
[Statedef 3004]
type = S
physics = N
movetype = A
anim = 3002
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3004, MakeSpace]
type = Width
trigger1 = 1
edge = 44,0

[State 3004, PosToGround]
type = Posset
trigger1 = !Time
y = 0

[State 3004, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 3004, Damage]
type = TargetLifeAdd
trigger1 = !Time
value = ifelse(PrevStateNo = 3105,-114,-343)

[State 3004, CrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,16

[State 3004, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 3004, GroundWaveBG]
type = Explod
trigger1 = !Time
anim = 7035
pos = 56,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 3004, GroundWaveFG]
type = Explod
trigger1 = !Time
anim = 7036
pos = 56,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 3004, Bind]
type = TargetBind
trigger1 = AnimElem = 2,<0
pos = 56,-5

[State 3004, GroundWave]
type = Explod
trigger1 = P2StateNo = 5100
anim = 7030
pos = 0,0
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
persistent = 0
sprpriority = -2

[State 3004, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------
; Enemy thrown by Running Three
;------------------------------
[Statedef 3013]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 3013, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3013, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 3013

[State 3013, BringToFront]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 3013, SendToBack]
type = SprPriority
trigger1 = AnimElem = 7
value = 1

[State 3013, ChangeState]
type = ChangeState
trigger1 = P2StateNo = 3004
value = 3014

;-------------------------------------------
; Throw by Running Three - Smashed on ground
;-------------------------------------------
[Statedef 3014]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = -1

[State 3014, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3014, SmashedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 3014

[State 3014, FacingChange]
type = Turn
trigger1 = !AnimTime

[State 3014, GoToBounce]
type = ChangeState
trigger1 = !AnimTime
value = 3015

;-------------------------------------------
; Throw by Running Three - Bounce
;-------------------------------------------
[Statedef 3015]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = -1

[State 3015, BounceAnim]
type = ChangeAnim2
trigger1 = !Time
value = 3015

[State 3015, PosOnGround]
type = PosSet
trigger1 = !Time
y = 0

[State 3015, StartVels]
type = VelSet
trigger1 = !Time
x = GetHitVar(xvel) * Facing
y = GetHitVar(yvel)

[State 3015, Gravity]
type = VelAdd
trigger1 = Time
y = GetHitVar(yaccel)

[State 3015, GoToBounce]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Vel Y + Pos Y >= 0
value = 5100


;--------------------------------------------------------------------------
; Running Three (KOF01 SDM/KOF02UM DM version) (KOF98 mode)
;--------------------------------------------------------------------------

;-------------
; Grab Attempt
;-------------
[Statedef 3100]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 15
anim = 3000
sprpriority = 2
facep2 = 1

[State 3100, SetGrabOnly]
type = NotHitBy
trigger1 = AnimTime
value = ,AA,AP

[State 3100, FxSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,13

[State 3100, BGPal]
type = BGPalFX
trigger1 = Time = [5,8]
time = 1
add = 248,248,248
ignorehitpause = 1

[State 3100, NoFg]
type = AssertSpecial
trigger1 = Time = [6,9]
flag = noFg

[State 3100, BgDMFx]
type = Explod
trigger1 = AnimElem = 3,=2
anim = 7051
pos = 14, -90
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
supermovetime = 30
ownpal = 1

[State 3100, FgDMFx]
type = Explod
trigger1 = AnimElem = 3,=2
anim = 7050
pos = 14, -90
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermovetime = 30

[State 3100, NoBg]
type = AssertSpecial
trigger1 = Time = [10,33]
flag = noBg
flag2 = noFg

[State 3100, Pause]
type = SuperPause
trigger1 = AnimElem = 2
unhittable = 1
anim = -1
time = 29
darken = 0
movetime = 29
poweradd = -1000
ignorehitpause = 1

[State 3100, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),21

[State 3100, GoToFirstRun]
type = ChangeState
trigger1 = !AnimTime
value = 3101
ctrl = 1

;-------------------------------------------
; Running Three SDM - Running (obviously :P)
;-------------------------------------------
[Statedef 3101]
type = S
movetype = A
physics = N
anim = 101
ctrl = 0
velset = 0

[State 3101, SetRunVelX]
type = VelSet
trigger1 = !Time
x = 6.5

[State 3101, RunSound]
type = PlaySnd
trigger1 = !Time
value = S1,2
channel = 3
loop = 1

[State 3101, AfterImages]
type = AfterImage
trigger1 = !Time
palinvertall = 1
time = 33
length = 12
framegap = 3

[State 3101, Continue]
type = ChangeState
trigger1 = P2BodyDist X < 15
value = 3102

[State 3101, GoToGrabMiss]
type = ChangeState
trigger1 = Time > 23
value = 920
ctrl = 0

;---------------------------------
; Running Three SDM - Grab Attempt
;---------------------------------
[Statedef 3102]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 3050
sprpriority = 2

[State 3102, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 3102, GrabAttempt]
type = HitDef
triggerall = var(13) < 10         ; Throw Limiter on basic attacks
triggerall = !var(14)             ; Throw Limiter on basic jump attacks
triggerall = !var(24)             ; Won't grab if opponent has just guarded a move.
triggerall = P2StateNo != [40,52] ; Can't throw when opponent is starting a jump / landing from a jump
trigger1 = AnimElem = 2 
attr = S, HT
hitflag = M
priority = 5, Miss
sparkno = -1         
ground.velocity = 4,-6
fall = 1
fall.recover = 0
fall.xvelocity = -3.5
fall.yvelocity = -3.6
yaccel = .5
sprpriority = 1
p2facing = 1
p1stateno = 3103
p2stateno = 3113
numhits = 0

[State 3102, SlideSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,14

[State 3102, GoToGrabMiss]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------
; Running Three SDM - Grab & Run
;-------------------------------
[Statedef 3103]
type = S
physics = N
movetype = A
anim = 3001
ctrl = 0
sprpriority = 2

[State 3103, Camera]
type = ScreenBound
trigger1 = !Vel X && !Vel Y
value = 1

[State 3103, MakeSpace]
type = Width
trigger1 = 1
edge = 44,30

[State 3103, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 3103, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 3103, GrabSpark]
type = Explod
trigger1 = !Time
anim = 7020
pos = 58,-86
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 3103, GrabSound]
type = PlaySnd
trigger1 = !Time
value = S1,9

[State 3103, SendToBack]
type = SprPriority
trigger1 = AnimElem = 3
value = 1

[State 3103, Turn]
type = Turn
trigger1 = AnimElem = 6

[State 3103, BringToFront]
type = SprPriority
trigger1 = AnimElem = 7
value = 2

[State 3103, GoBackwards]
type = PosAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
trigger3 = AnimElem = 10
x = -16

[State 3103, RunAcceleration]
type = VelAdd
trigger1 = AnimElem = 13,>1 && AnimElem = 19,<0
x = .5

[State 3103, RunSound]
type = PlaySnd
trigger1 = AnimElem = 14
value = S1,2
channel = 1

[State 3103, Bind01]
type = TargetBind
trigger1 = AnimElem = 1,=0
pos = (Target,const(size.head.pos.x)) + 48,0

[State 3103, Bind02]
type = TargetBind
trigger1 = AnimElem = 2
pos = (Target,const(size.head.pos.x)) + 24,0

[State 3103, Bind03]
type = TargetBind
trigger1 = AnimElem = 3
pos = 16,-76

[State 3103, Bind04]
type = TargetBind
trigger1 = AnimElem = 4
pos = 8,-80

[State 3103, Bind05]
type = TargetBind
trigger1 = AnimElem = 5
pos = -4,-96

[State 3103, Bind06]
type = TargetBind
trigger1 = AnimElem = 6
pos = 2,-116

[State 3103, Bind07]
type = TargetBind
trigger1 = AnimElem = 7
pos = 4,-116

[State 3103, Bind08]
type = TargetBind
trigger1 = AnimElem = 8
pos = 2,-116

[State 3103, Bind09]
type = TargetBind
trigger1 = AnimElem = 9
pos = 6,-112

[State 3103, Bind10]
type = TargetBind
trigger1 = AnimElem = 10
pos = 14,-102

[State 3103, Bind11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 6,-100

[State 3103, Bind12]
type = TargetBind
trigger1 = AnimElem = 12
pos = 6,-100

[State 3103, Bind13]
type = TargetBind
trigger1 = AnimElem = 13,>=0 && AnimElem = 14,<0
pos = 8,-110

[State 3103, Bind14]
type = TargetBind
trigger1 = AnimElem = 14,>=0 && AnimElem = 15,<0
pos = 0,-104

[State 3103, Bind15]
type = TargetBind
trigger1 = AnimElem = 15,>=0 && AnimElem = 16,<0
pos = 12,-98

[State 3103, Bind16]
type = TargetBind
trigger1 = AnimElem = 16,>=0 && AnimElem = 17,<0
pos = 20,-104

[State 3103, Bind17]
type = TargetBind
trigger1 = AnimElem = 17,>=0 && AnimElem = 18,<0
pos = 22,-104

[State 3103, Bind18]
type = TargetBind
trigger1 = AnimElem = 18,>=0 && AnimElem = 19,<0
pos = 16,-100

[State 3103, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 19
value = ifelse(var(54),1000,0),9

[State 3103, JumpSound]
type = PlaySnd
trigger1 = AnimElem = 19
value = S1,4
channel = 1

[State 3103, SetAir]
type = StateTypeSet
trigger1 = AnimElem = 19
statetype = A

[State 3103, JumpImpulsion]
type = PosAdd
trigger1 = AnimElem = 19
x = 14

[State 3103, StartJumpsVels]
type = VelSet
trigger1 = AnimElem = 19
x = 14.25
y = -8

[State 3103, SecondVelYJump]
type = VelSet
trigger1 = AnimElem = 19,=3
x = 10

[State 3103, ThirdVelYJump]
type = VelSet
trigger1 = AnimElem = 19,=4
x = 8

[State 3103, Gravity]
type = VelAdd
trigger1 = AnimElem = 19,>0
y = .5

[State 3103, Bind19]
type = TargetBind
trigger1 = AnimElem = 19,>=0 && AnimElem = 20,<0
pos = 20,-124

[State 3103, Bind20]
type = TargetBind
trigger1 = AnimElem = 20,>=0 && AnimElem = 21,<0
pos = 20,-122

[State 3103, Bind21]
type = TargetBind
trigger1 = AnimElem = 21,>=0
pos = 16,-95

[State 3103, GoToLand]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3104

;---------------------------------------------
; Running Three SDM - 1st Touch Down - 2nd Run
;---------------------------------------------
[Statedef 3104]
type = S
physics = N
movetype = A
anim = 3100
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3104, MakeSpace]
type = Width
trigger1 = 1
edge = 44,30

[State 3104, PosOnGround]
type = PosSet
trigger1 = !Time
y = 0

[State 3104, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 3104, CrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,16

[State 3104, GroundWaveBG]
type = Explod
trigger1 = !Time
anim = 7035
pos = 62,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 3104, GroundWaveFG]
type = Explod
trigger1 = !Time
anim = 7036
pos = 62,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 3104, SendToBack]
type = SprPriority
trigger1 = AnimElem = 8
value = -1

[State 3104, Turn]
type = Turn
trigger1 = AnimElem = 11

[State 3104, BringToFront]
type = SprPriority
trigger1 = AnimElem = 12
value = 2

[State 3104, GoBackwards]
type = PosAdd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
x = -16

[State 3104, RunAcceleration]
type = VelAdd
trigger1 = AnimElem = 18,>1 && AnimElem = 24,<0
x = .5

[State 3104, RunSound]
type = PlaySnd
trigger1 = AnimElem = 18
value = S1,2
channel = 1

[State 3104, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 23,=5
value = ifelse(var(54),1000,0),9

[State 3104, Bind01]
type = TargetBind
trigger1 = AnimElem = 1
pos = 52,-8

[State 3104, Bind02]
type = TargetBind
trigger1 = AnimElem = 2
pos = 52,-8

[State 3104, Bind03]
type = TargetBind
trigger1 = AnimElem = 3
pos = 32,-16

[State 3104, Bind04]
type = TargetBind
trigger1 = AnimElem = 4
pos = 32,-16

[State 3104, Bind05]
type = TargetBind
trigger1 = AnimElem = 5
pos = 32,-16

[State 3104, Bind06]
type = TargetBind
trigger1 = AnimElem = 6
pos = 36,-40

[State 3104, Bind07]
type = TargetBind
trigger1 = AnimElem = 7
pos = (Target,const(size.head.pos.x)) + 24,0

[State 3104, Bind08]
type = TargetBind
trigger1 = AnimElem = 8
pos = 16,-72

[State 3104, Bind09]
type = TargetBind
trigger1 = AnimElem = 9
pos = 4,-72

[State 3104, Bind10]
type = TargetBind
trigger1 = AnimElem = 10
pos = -4,-96

[State 3104, Bind11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 2,-120

[State 3104, Bind12]
type = TargetBind
trigger1 = AnimElem = 12
pos = -4,-118

[State 3104, Bind13]
type = TargetBind
trigger1 = AnimElem = 13
pos = 0,-114

[State 3104, Bind14]
type = TargetBind
trigger1 = AnimElem = 14
pos = 6,-110

[State 3104, Bind15]
type = TargetBind
trigger1 = AnimElem = 15
pos = 16,-102

[State 3104, Bind16]
type = TargetBind
trigger1 = AnimElem = 16
pos = 6,-102

[State 3104, Bind17]
type = TargetBind
trigger1 = AnimElem = 17
pos = 6,-102

[State 3104, Bind18]
type = TargetBind
trigger1 = AnimElem = 18,>=0 && AnimElem = 19,<0
pos = 8,-110

[State 3104, Bind19]
type = TargetBind
trigger1 = AnimElem = 19,>=0 && AnimElem = 20,<0
pos = 0,-104

[State 3104, Bind20]
type = TargetBind
trigger1 = AnimElem = 20,>=0 && AnimElem = 21,<0
pos = 8,-100

[State 3104, Bind21]
type = TargetBind
trigger1 = AnimElem = 21,>=0 && AnimElem = 22,<0
pos = 20,-104

[State 3104, Bind22]
type = TargetBind
trigger1 = AnimElem = 22,>=0 && AnimElem = 23,<0
pos = 20,-102

[State 3104, Bind23]
type = TargetBind
trigger1 = AnimElem = 23,>=0 && AnimElem = 24,<0
pos = 18,-102

[State 3104, JumpSound]
type = PlaySnd
trigger1 = AnimElem = 24
value = 1,4
channel = 1

[State 3104, SetAir]
type = StateTypeSet
trigger1 = AnimElem = 24
statetype = A

[State 3104, JumpImpulsion]
type = PosAdd
trigger1 = AnimElem = 24
x = 14

[State 3104, StartJumpVel]
type = VelSet
trigger1 = AnimElem = 24
x = 14.5
y = -8

[State 3104, SecondVelYJump]
type = VelSet
trigger1 = AnimElem = 24,=3
x = 10

[State 3104, ThirdVelYJump]
type = VelSet
trigger1 = AnimElem = 24,=4
x = 8

[State 3104, Gravity]
type = VelAdd
trigger1 = AnimElem = 24,>0
y = .5

[State 3104, Bind24]
type = TargetBind
trigger1 = AnimElem = 24,>=0 && AnimElem = 25,<0
pos = 20,-126

[State 3104, Bind25]
type = TargetBind
trigger1 = AnimElem = 25,>=0 && AnimElem = 26,<0
pos = 18,-122

[State 3104, Bind26]
type = TargetBind
trigger1 = AnimElem = 26,>=0
pos = 18,-98

[State 3104, Change]
type = ChangeState
trigger1 = AnimElem = 24,>0
trigger1 = Vel Y > 0
trigger1 = Pos Y >=  0
value = 3105

;---------------------------------------------
; Running Three SDM - 2nd Touch Down - 3rd Run
;---------------------------------------------
[Statedef 3105]
type = S
physics = N
movetype = A
anim = 3100
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3105, MakeSpace]
type = Width
trigger1 = 1
edge = 44,30

[State 3105, PosOnGround]
type = PosSet
trigger1 = !Time
y = 0

[State 3105, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 3105, CrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,16

[State 3105, GroundWaveBG]
type = Explod
trigger1 = !Time
anim = 7035
pos = 62,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 3105, GroundWaveFG]
type = Explod
trigger1 = !Time
anim = 7036
pos = 62,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 3105, SendToBack]
type = SprPriority
trigger1 = AnimElem = 8
value = -1

[State 3105, Turn]
type = Turn
trigger1 = AnimElem = 11

[State 3105, BringToFront]
type = SprPriority
trigger1 = AnimElem = 12
value = 2

[State 3105, GoBackwards]
type = PosAdd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
x = -16

[State 3105, RunAcceleration]
type = VelAdd
trigger1 = AnimElem = 18,>1 && AnimElem = 24,<0
x = .5

[State 3105,RunSound]
type = PlaySnd
trigger1 = AnimElem = 18
value = S1,2
channel = 1

[State 3105, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 23,=5
value = ifelse(var(54),1000,0),9

[State 3105, Bind01]
type = TargetBind
trigger1 = AnimElem = 1
pos = 52,-8

[State 3105, Bind02]
type = TargetBind
trigger1 = AnimElem = 2
pos = 52,-8

[State 3105, Bind03]
type = TargetBind
trigger1 = AnimElem = 3
pos = 32,-16

[State 3105, Bind04]
type = TargetBind
trigger1 = AnimElem = 4
pos = 32,-16

[State 3105, Bind05]
type = TargetBind
trigger1 = AnimElem = 5
pos = 32,-16

[State 3105, Bind06]
type = TargetBind
trigger1 = AnimElem = 6
pos = 36,-40

[State 3105, Bind07]
type = TargetBind
trigger1 = AnimElem = 7
pos = (Target,const(size.head.pos.x)) + 24,0

[State 3105, Bind08]
type = TargetBind
trigger1 = AnimElem = 8
pos = 16,-72

[State 3105, Bind09]
type = TargetBind
trigger1 = AnimElem = 9
pos = 4,-72

[State 3105, Bind10]
type = TargetBind
trigger1 = AnimElem = 10
pos = -4,-96

[State 3105, Bind11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 2,-120

[State 3105, Bind12]
type = TargetBind
trigger1 = AnimElem = 12
pos = -4,-118

[State 3105, Bind13]
type = TargetBind
trigger1 = AnimElem = 13
pos = 0,-114

[State 3105, Bind14]
type = TargetBind
trigger1 = AnimElem = 14
pos = 6,-110

[State 3105, Bind15]
type = TargetBind
trigger1 = AnimElem = 15
pos = 16,-102

[State 3105, Bind16]
type = TargetBind
trigger1 = AnimElem = 16
pos = 6,-102

[State 3105, Bind17]
type = TargetBind
trigger1 = AnimElem = 17
pos = 6,-102

[State 3105, Bind18]
type = TargetBind
trigger1 = AnimElem = 18,>=0 && AnimElem = 19,<0
pos = 8,-110

[State 3105, Bind19]
type = TargetBind
trigger1 = AnimElem = 19,>=0 && AnimElem = 20,<0
pos = 0,-104

[State 3105, Bind20]
type = TargetBind
trigger1 = AnimElem = 20,>=0 && AnimElem = 21,<0
pos = 8,-100

[State 3105, Bind21]
type = TargetBind
trigger1 = AnimElem = 21,>=0 && AnimElem = 22,<0
pos = 20,-104

[State 3105, Bind22]
type = TargetBind
trigger1 = AnimElem = 22,>=0 && AnimElem = 23,<0
pos = 20,-102

[State 3105, Bind23]
type = TargetBind
trigger1 = AnimElem = 23,>=0 && AnimElem = 24,<0
pos = 18,-102

[State 3105, JumpSound]
type = PlaySnd
trigger1 = AnimElem = 24
value = 1,4
channel = 1

[State 3105, SetAir]
type = StateTypeSet
trigger1 = AnimElem = 24
statetype = A

[State 3105, JumpImpulsion]
type = PosAdd
trigger1 = AnimElem = 24
x = 14

[State 3105, StartJumpVel]
type = VelSet
trigger1 = AnimElem = 24
x = 14.5
y = -8

[State 3105, SecondVelYJump]
type = VelSet
trigger1 = AnimElem = 24,=3
x = 10

[State 3105, ThirdVelYJump]
type = VelSet
trigger1 = AnimElem = 24,=4
x = 8

[State 3105, Gravity]
type = VelAdd
trigger1 = AnimElem = 24,>0
y = .5

[State 3105, Bind24]
type = TargetBind
trigger1 = AnimElem = 24,>=0 && AnimElem = 25,<0
pos = 20,-126

[State 3105, Bind25]
type = TargetBind
trigger1 = AnimElem = 25,>=0 && AnimElem = 26,<0
pos = 18,-122

[State 3105, Bind26]
type = TargetBind
trigger1 = AnimElem = 26,>=0
pos = 18,-98

[State 3105, Change]
type = ChangeState
trigger1 = AnimElem = 24,>0
trigger1 = Vel Y > 0
trigger1 = Pos Y >=  0
value = 3004

;----------------------------------
; Enemy thrown by Running Three SDM
;----------------------------------
[Statedef 3113]
type = S
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 3113, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3113, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 3013

[State 3113, Flash]
type = BGPalFX
trigger1 = RoundState = 2
trigger1 = !Time
time = 1
add = 248,248,248
ignorehitpause = 1

[State 3113, BringToFront]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 3113, SendToBakc]
type = SprPriority
trigger1 = AnimElem = 7
value = 1

[State 3113, GoToSmashed]
type = ChangeState
trigger1 = P2StateNo = 3104
value = 3114

;---------------------------------------------
; Throw by Running Three - 1st Smash on ground
;---------------------------------------------
[Statedef 3114]
type = S
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 3114, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3114, Turn]
type = Turn
trigger1 = !Time

[State 3114, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 3114

[State 3114, Damage]
type = LifeAdd
trigger1 = !Time
value = -114
kill = 0

[State 3114, Shake]
type = EnvShake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 3114, BringToFront]
type = SprPriority
trigger1 = AnimElem = 8
value = 2

[State 3114, SendToBack]
type = SprPriority
trigger1 = AnimElem = 12
value = -1

[State 3114, ChangeState]
type = ChangeState
trigger1 = P2StateNo = 3105
value = 3115

;---------------------------------------------
; Throw by Running Three - 2nd Smash on ground
;---------------------------------------------
[Statedef 3115]
type = S
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 3115, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3115, Turn]
type = Turn
trigger1 = !Time

[State 3115, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 3114

[State 3115, Damage]
type = LifeAdd
trigger1 = !Time
value = -114
kill = 0

[State 3115, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 3115, BringToFront]
type = SprPriority
trigger1 = AnimElem = 8
value = 2

[State 3115, SendToBack]
type = SprPriority
trigger1 = AnimElem = 12
value = -1

[State 3115, ChangeState]
type = ChangeState
trigger1 = P2StateNo = 3004
value = 3014

;--------------------------------------------------------------------------------------------------------------------------
; Mega Running Spark (HSDM)
;--------------------------------------------------------------------------------------------------------------------------

;---------------
; Prepare to run
;---------------
[Statedef 4500]
type = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
ctrl = 0
anim = 4500
facep2 = 1

[State 4500, Shadow]
type = AfterImage
trigger1 = !Time
palinvertall = 1
time = 33
length = 12
FrameGap = 3

[State 4500, SetGrabOnly]
type = NotHitBy
trigger1 = AnimElem = 10,>=0 && AnimTime
value = ,AA,AP

[State 4500, BGPal]
type = BGPalFX
trigger1 = Time = [8,13]
time = 1
add = 248,248,248
ignorehitpause = 1

[State 4500, NoFg]
type = AssertSpecial
trigger1 = Time = [9,13]
flag = noFg

[State 4500, BgDMFx]
type = Explod
trigger1 = AnimElem =3,=2
anim = 7072
pos = -16, -84
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
supermovetime = 30
ownpal = 1

[State 4500, FgDMFx]
type = Explod
trigger1 = AnimElem =3,=2
anim = 7071
pos = -16, -84
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermovetime = 30

[State 4500, NoBg]
type = AssertSpecial
trigger1 = Time = [13,36]
flag = noBg
flag2 = noFg

[State 4500, FXSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,18

[State 4500, Pause]
type = SuperPause
trigger1 = AnimElem = 3
unhittable = 1
anim = 4500
time = 29
movetime = 29
darken = 0
poweradd = -3000
ignorehitpause = 1

[State 4500, KOF02UMGreenScreenBg]
type = Helper
triggerall = !NumHelper(40001)
trigger1 = var(50)
trigger1 = Time = 35
helpertype = normal
name = "KOF02UMGreenScreenBg"
ID = 40001
stateno = 7450
pos = 160,120
postype = Left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 4500, KOF02UMPortrait]
type = Helper
triggerall = !NumHelper(40003)
trigger1 = var(50)
trigger1 = Time = 9
helpertype = normal
name = "KOF02UMPortrait"
ID = 40003
stateno = 7460
pos = 160,120
postype = Left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 2700, Helper]
type = Helper
triggerall = !NumHelper(40004)
trigger1 = var(50)
trigger1 = Time = 1
helpertype = normal
name = "???"
ID = 40004
stateno = 7470
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 4500, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0,15

[State 4500, GoToRun]
type = ChangeState
trigger1 = !AnimTime
value = 4501

;--------------------------------------------
; Mega Running Spark - Running (obviously :P)
;--------------------------------------------
[Statedef 4501]
type = S
movetype= A
physics = N
anim = 101
ctrl = 0
velset = 0
sprpriority = 2

[State 4501, RunSound]
type = PlaySnd
trigger1 = !Time
value = S1,2
channel = 3
loop = 1

[State 4501, SetRunVelX]
type = VelSet
trigger1 = !Time
x = 6.5

[State 4501, Shadow]
type = AfterImage
trigger1 = !Time
palinvertall = 1
time = 33
length = 12
FrameGap = 3

[State 4501, GoToGrabAttempt]
type = ChangeState
trigger1 = P2BodyDist X < 15
value = 4502

[State 4501, GoToGrabMiss]
type = ChangeState
trigger1 = Time > 23
value = 920
ctrl = 0

;----------------------------------
; Mega Running Spark - Grab Attempt
;----------------------------------
[Statedef 4502]
type = S
movetype= A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3050

[State 4502, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 4502, GrabAttempt]
type = HitDef
triggerall = !var(14)             ; Throw Limiter on basic jump attacks
triggerall = !var(24)             ; Won't grab if opponent has just guarded a move.
triggerall = P2StateNo != [40,52] ; Can't throw when opponent is starting a jump / landing from a jump
trigger1 = AnimElem = 2 
attr = S, HT
hitflag = MA
priority = 5, Miss
sparkno = -1         
sprpriority = 2
p2facing = 1
p1stateno = 4503
p2stateno = 4513
animtype = DiagUp
ground.velocity = 4, -6
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.xvelocity = 2
fall.yvelocity = -3.777
yaccel = .5
numhits = 0

[State 4502, Shadow]
type = AfterImage
trigger1 = !Time
time = 50
timegap = 1
framegap = 3
length = 9
palinvertall = 1

[State 4502, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;----------------------------------
; Mega Running Spark - Grab Success
;----------------------------------
[Statedef 4503]
type = S
movetype= A
physics = N
ctrl = 0
anim = 4501
sprpriority = 2

[State 4503, NoBGNoFG]
type = AssertSpecial
trigger1 = 1
flag = noBg
flag2 = noFg

[State 4503, MakeSpace]
type = Width
trigger1 = !Time
edge = 42,0

[State 4503, HSDMBG]
type = Explod
trigger1 = !var(50)
trigger1 = !NumExplod(4503)
trigger1 = !Time
scale = 1.075, 1.075
anim = 7200
postype = back
pos = 0,0
bindtime = -1
sprpriority = -3
supermovetime = 30
ownpal = 1
removetime = -1
id = 4503
removeongethit = 1

[State 4503, Shadow]
type = AfterImage
trigger1 = !Time
time = 180
palinvertall = 1
timegap = 1
framegap = 3
length = 9

[State 4503, GrabSpark]
type = Explod
trigger1 = AnimElem = 1
anim = 7020
pos = 61,-85
postype = p1
bindtime = 1
sprpriority = 2
ownpal = 1

[State 4503, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1,9

[State 4503, RunSound]
type = PlaySnd
trigger1 = AnimElem = 13
value = S1,2
channel = 3
loop = 1

[State 4503, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 10,=0
value = ifelse(var(54),1000,0),17

[State 4503, SendToBack]
type = SprPriority
trigger1 = AnimElem = 4
value = 1 

[State 4503, BringToFront]
type = SprPriority
trigger1 = AnimElem = 8
value = 2

[State 4503, GoBackwards]
type = PosAdd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
x = -16

[State 4503, StartRunVelX]
type = VelAdd
trigger1 = AnimElem = 11,>=0
trigger1 = Vel X < 6.5
x = .5

[State 4503, Bind01]
type = TargetBind
trigger1 = AnimElem = 1
pos = (Target,const(size.head.pos.x)) + 48,0

[State 4503, Bind02]
type = TargetBind
trigger1 = AnimElem = 3
pos = (Target,const(size.head.pos.x)) + 24,0

[State 4503, Bind03]
type = TargetBind
trigger1 = AnimElem = 4
pos = 16,-75

[State 4503, Bind04]
type = TargetBind
trigger1 = AnimElem = 5
pos = 8,-80

[State 4503, Bind05]
type = TargetBind
trigger1 = AnimElem = 6
pos = -4,-96

[State 4503, Turn]
type = Turn
trigger1 = AnimElem = 7

[State 4503, Bind06]
type = TargetBind
trigger1 = AnimElem = 7
pos = 2,-117

[State 4503, Bind07]
type = TargetBind
trigger1 = AnimElem = 8
pos = 4,-117

[State 4503, Bind08]
type = TargetBind
trigger1 = AnimElem = 9
pos = 8,-113

[State 4503, Bind09]
type = TargetBind
trigger1 = AnimElem = 10
pos = 8,-115

[State 4503, Bind10]
type = TargetBind
trigger1 = AnimElem = 11,>=0 && AnimElem = 12,<0
pos = -1,-114

[State 4503, Bind11]
type = TargetBind
trigger1 = AnimElem = 12,>=0 && AnimElem = 13,<0
pos = -1,-111 

[State 4503, Bind12]
type = TargetBind
trigger1 = AnimElem = 13,>=0 && AnimElem = 14,<0
pos = 16,-97

[State 4503, Bind13]
type = TargetBind
trigger1 = AnimElem = 14,>=0 && AnimElem = 15,<0
pos = 13,-100

[State 4503, Bind14]
type = TargetBind
trigger1 = AnimElem = 15,>=0 && AnimElem = 16,<0
pos = 8,-102

[State 4503, Bind15]
type = TargetBind
trigger1 = AnimElem = 16,>=0 && AnimElem = 17,<0
pos = 20,-97

[State 4503, Bind16]
type = TargetBind
trigger1 = AnimElem = 17,>=0 && AnimElem = 18,<0
pos = 12,-97

[State 4503, Bind17]
type = TargetBind
trigger1 = AnimElem = 18,>=0 && AnimElem = 19,<0
pos = 10,-97

[State 4503, Bind18]
type = TargetBind
trigger1 = AnimElem = 19,>=0 && AnimElem = 20,<0
pos = 10,-97

[State 4503, Bind19]
type = TargetBind
trigger1 = AnimElem = 20,>=0
pos = 20,-102

[State 4503, PreventLoopStages]
type = Helper
trigger1 = Time > 140
trigger1 = !NumHelper(4510)
helpertype = normal
name = "ScrollStop"
ID = 4510
postype = p1
pos = 0,0
facing = 1
stateno = 4510
keyctrl = 0

[State 4503, ChangeState]
type = ChangeState
trigger1 = AnimElem = 13,>=0
trigger1 = FrontEdgeBodyDist <= 12
value = 4504

;------------------------------------
; Mega Running Spark - 1st Wall Press
;------------------------------------
[Statedef 4504]
type = S
movetype= A
physics = N
ctrl = 0
anim = 4502
sprpriority = 2
velset = 0,0

[State 4504, NoBGNoFG]
type = AssertSpecial
trigger1 = 1
flag = noBg
flag2 = noFg

[State 4504, MakeSpace]
type = Width
trigger1 = !Time
edge = 12,0

[State 4504, Shadow]
type = AfterImage
trigger1 = !Time
time = 50
timegap = 1
framegap = 3
length = 9
palinvertall = 1

[State 4504, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 4504, ImpactSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 40,-85
postype = p1
bindtime = -1
ontop = 1
ownpal = 1

[State 4504, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,10
channel = 0

[State 4504, ImpactSound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,8
channel = 1

[State 4504, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 24,-88

[State 4504, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 16,-88

[State 4504, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 18,-88

[State 4504, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 4505

;-----------------------------
; Mega Running Spark - 2nd Run
;-----------------------------
[Statedef 4505]
type = S
movetype= A
physics = N
ctrl = 0
anim = 4503
sprpriority = 2

[State 4505, NoBGNoFG]
type = AssertSpecial
trigger1 = 1
flag = noBg
flag2 = noFg

[State 4505, Shadow]
type = AfterImage
trigger1 = !Time
time = 180
timegap = 1
framegap = 3
length = 9
palinvertall = 1

[State 4505, Turn]
type = Turn
trigger1 = !Time

[State 4505, RunSound]
type = PlaySnd
trigger1 = AnimElem = 7
value = S1,2
channel = 3
loop = 1

[State 4505, GoBackwards]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = -16

[State 4505, StartRunVelX]
type = VelAdd
trigger1 = AnimElem = 5,>=0
trigger1 = Vel X < 6.5
x = .5

[State 4505, Bind01]
type = TargetBind
trigger1 = AnimElem = 1
pos = -8,-112

[State 4505, Bind02]
type = TargetBind
trigger1 = AnimElem = 2
pos = -8,-114

[State 4505, Bind03]
type = TargetBind
trigger1 = AnimElem = 3,>=0 && AnimElem = 4,<0
pos = 4,-114

[State 4505, Bind04]
type = TargetBind
trigger1 = AnimElem = 4,>=0 && AnimElem = 5,<0
pos = 10,-114

[State 4505, Bind05]
type = TargetBind
trigger1 = AnimElem = 5,>=0 && AnimElem = 6,<0
pos = 0,-112

[State 4505, Bind06]
type = TargetBind
trigger1 = AnimElem = 6,>=0 && AnimElem = 7,<0
pos = -2,-110

[State 4505, Bind07]
type = TargetBind
trigger1 = AnimElem = 7,>=0 && AnimElem = 8,<0
pos = 16,-98

[State 4505, Bind08]
type = TargetBind
trigger1 = AnimElem = 8,>=0 && AnimElem = 9,<0
pos = 14,-100

[State 4505, Bind09]
type = TargetBind
trigger1 = AnimElem = 9,>=0 && AnimElem = 10,<0
pos = 10,-100

[State 4505, Bind10]
type = TargetBind
trigger1 = AnimElem = 10,>=0 && AnimElem = 11,<0
pos = 20,-97

[State 4505, Bind11]
type = TargetBind
trigger1 = AnimElem = 11,>=0 && AnimElem = 12,<0
pos = 12,-97

[State 4505, Bind12]
type = TargetBind
trigger1 = AnimElem = 12,>=0 && AnimElem = 13,<0
pos = 10,-97

[State 4505, Bind13]
type = TargetBind
trigger1 = AnimElem = 13,>=0 && AnimElem = 14,<0
pos = 10,-97

[State 4505, Bind14]
type = TargetBind
trigger1 = AnimElem = 14,>=0
pos = 18,-103

[State 4505, RunSound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,2
channel = 3
loop = 1

[State 4505, PreventLoopStages]
type = Helper
trigger1 = Time > 140
trigger1 = !NumHelper(4510)
helpertype = normal
name = "ScrollStop"
ID = 4510
postype = p1
pos = 0,0
facing = 1
stateno = 4510
keyctrl = 0

[State 4505, ChangeState]
type = ChangeState
trigger1 = AnimElem = 7,>=0
trigger1 = FrontEdgeBodyDist <= 12
value = 4506

;------------------------------------
; Mega Running Spark - 2nd Wall Press
;------------------------------------
[Statedef 4506]
type = S
movetype= A
physics = N
anim = 4502
sprpriority = 2
velset = 0,0
ctrl = 0

[State 4506, NoBGNoFG]
type = AssertSpecial
trigger1 = 1
flag = noBg
flag2 = noFg

[State 4506, MakeSpace]
type = Width
trigger1 = !Time
edge = 12,0

[State 4506, Shadow]
type = AfterImage
trigger1 = !Time
time = 50
timegap = 1
framegap = 3
length = 9
palinvertall = 1

[State 4506, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 4506, ImpactSpark]
type = Explod
trigger1 = !Time
anim = 7025
pos = 40,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 4506, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 1,=1
value = S0,10

[State 4506, ImpactSound]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1,8

[State 4506, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 24,-88

[State 4506, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 16,-88

[State 4506, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 18,-88

[State 4506, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 4507

;--------------------------------------
; Mega Running Spark - Final Run & Jump
;--------------------------------------
[Statedef 4507]
type = S
movetype= A
physics = N
anim = 4504
sprpriority = 2
ctrl = 0

[State 4507, NoBGNoFG]
type = AssertSpecial
trigger1 = 1
flag = noBg
flag2 = noFg

[State 4507, MakeSpace]
type = Width
trigger1 = 1
edge = 42,0

[State 4507, Shadow]
type = AfterImage
trigger1 = !Time
time = 200
timegap = 1
framegap = 3
length = 9
palinvertall = 1

[State 4507, Turn]
type = Turn
trigger1 = !Time

[State 4507, RunSound]
type = PlaySnd
trigger1 = AnimElem = 7
value = S1,2
channel = 3
loop = 1

[State 4507, GoBackwards]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = -16

[State 4507, StartRunVelX]
type = VelAdd
trigger1 = AnimElem = 5,>=0
trigger1 = Vel X < 7.15
x = .25

[State 4507, JumpSound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1,4
channel = 3

[State 4507, Setair]
type = StateTypeSet
trigger1 = AnimElem = 11
statetype = A
physics = N

[State 4507, JumpImpulsion]
type = PosAdd
trigger1 = AnimElem = 11
x = 7

[State 4507, StartJumpVelY]
type = VelSet
trigger1 = AnimElem = 11
y = -8

[State 4507, Gravity]
type = VelAdd
trigger1 = AnimElem = 11,>0
y = .5

[State 4507, Bind01]
type = TargetBind
trigger1 = AnimElem = 1
pos = -8,-110

[State 4507, Bind02]
type = TargetBind
trigger1 = AnimElem = 2
pos = -8,-113

[State 4507, Bind03]
type = TargetBind
trigger1 = AnimElem = 3,>=0 && AnimElem = 4,<0
pos = 1,-113

[State 4507, Bind04]
type = TargetBind
trigger1 = AnimElem = 4,>=0 && AnimElem = 5,<0
pos = 9,-113

[State 4507, Bind05]
type = TargetBind
trigger1 = AnimElem = 5,>=0 && AnimElem = 6,<0
pos = -1,-113

[State 4507, Bind06]
type = TargetBind
trigger1 = AnimElem = 6,>=0 && AnimElem = 7,<0
pos = -2,-110

[State 4507, Bind07]
type = TargetBind
trigger1 = AnimElem = 7,>=0 && AnimElem = 8,<0
pos = 10,-100

[State 4507, Bind08]
type = TargetBind
trigger1 = AnimElem = 8,>=0 && AnimElem = 9,<0
pos = 24,-103

[State 4507, Bind09]
type = TargetBind
trigger1 = AnimElem = 9,>=0 && AnimElem = 10,<0
pos = 22,-98

[State 4507, Bind10]
type = TargetBind
trigger1 = AnimElem = 10,>=0 && AnimElem = 11,<0
pos = 16,-102

[State 4507, Bind11]
type = TargetBind
trigger1 = AnimElem = 11,>=0 && AnimElem = 12,<0
pos = 16,-128

[State 4507, Bind12]
type = TargetBind
trigger1 = AnimElem = 12,>=0 && AnimElem = 13,<0
pos = 14,-122

[State 4507, Bind13]
type = TargetBind
trigger1 = AnimElem = 13,>=0 && AnimElem = 14,<0
pos = 24,-114

[State 4507, Bind14]
type = TargetBind
trigger1 = AnimElem = 14,>=0
pos = 34,-78

[State 4507, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 4508

;---------------------------------
; Mega Running Spark - Pile Driver
;---------------------------------
[Statedef 4508]
type = S
movetype= A
physics = N
anim = 4505
sprpriority = 2
velset = 0,0
ctrl = 0

[State 4508, NoBGNoFG]
type = AssertSpecial
trigger1 = 1
flag = noBg
flag2 = noFg

[State 4508, PosToGround]
type = PosSet
trigger1 = !Time
y = 0

[State 4508, Shadow]
type = AfterImage
trigger1 = !Time
time = 50
timegap = 1
framegap = 3
length = 9
palinvertall = 1

[State 4508, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = S0,18

[State 4508, CrushSound]
type = PlaySnd
trigger1 = !Time
value = S1,8

[State 4508, BgWave]
type = Explod
trigger1 = !Time
anim = 7035
pos = 40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 4508, FgWave]
type = Explod
trigger1 = !Time
anim = 7036
pos = 40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 4508, Bind]
type = TargetBind
trigger1 = !Time
pos = 52,0

[State 4508, Screen Shaking]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 4508, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 4509

;--------------------------
; Mega Running Spark - Roll
;--------------------------
[Statedef 4509]
type = S
physics = N
movetype= A
anim = 4509
sprpriority = 2
velset = 0,0
ctrl = 0

[State 4509, DeleteHSDMBg]
type = RemoveExplod
trigger1 = NumExplod(4503)
trigger1 = AnimElem = 2
id = 4503
ignorehitpause = 1

[State 4509, NoBGNoFG]
type = AssertSpecial
trigger1 = AnimElem = 2,<0
flag = noBg
flag2 = noFg

[State 4509, GroundWave]
type = Explod
trigger1 = P2StateNo = 4520
anim = 7030
pos = 0,0
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2
persistent = 0

[State 4509, HitGroundSound]
type = PlaySnd
trigger1 = P2StateNo = 4520
value = S5110,0
persistent = 0

[State 4509, GoToStance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------
; Mega Running Spark - Prevent for infinite loop stages
;-------------------------------------------------------
[StateDef 4510]
type = S
movetype = I
physics = N
anim = 179
ctrl = 0

[State 4510, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4510, Bound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4510, Delete]
type = DestroySelf
trigger1 = Parent,StateNo != 4503
trigger1 = Parent,StateNo != 4505

;-----------------------------------
; Enemy thrown by Mega Running Spark
;-----------------------------------
[Statedef 4513]
type = S
physics = N
movetype= H
ctrl = 0
sprpriority = -1

[State 4513, NoWidth]
type = Width
trigger1 = 1
value = 0,0

[State 4513, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 4513, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 4513

[State 4513, BringToFront]
type = SprPriority
trigger1 = AnimElem = 2
value = 2

[State 4513, SendToBack]
type = SprPriority
trigger1 = AnimElem = 6
value = 1

[State 4513, ChangeState]
type = ChangeState
trigger1 = p2stateno = 4504
value = 4514

;-----------------------------------------------------
; Enemy Thrown by Mega Running Spark - Pressed on Wall
;-----------------------------------------------------
[Statedef 4514]
type = S
physics = N
movetype= H
ctrl = 0
sprpriority = 1

[State 4514, NoWidth]
type = Width
trigger1 = 1
value = 0,0

[State 4514, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 4514, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 4514

[State 4514, Damage]
type = LifeAdd
trigger1 = !Time
value = -137
kill = 0

[State 4514, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 4514, ChangeState]
type = ChangeState
trigger1 = P2StateNo = 4505
value = 4515

;---------------------------------------------
; Enemy Thrown by Mega Running Spark - 2nd Run
;---------------------------------------------
[Statedef 4515]
type = S
physics = N
movetype= H
ctrl = 0
sprpriority = 1
velset = 0,0

[State 4515, NoWidth]
type = Width
trigger1 = 1
value = 0,0

[State 4515, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 4515, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 4515

[State 4515, Turn]
type = Turn
trigger1 = !Time

[State 4515, GoToSecondPress]
type = ChangeState
trigger1 = P2StateNo = 4506
value = 4516

;------------------------------------------------------------------
; Enemy Thrown by Mega Running Spark - Pressed on Wall Another Time
;------------------------------------------------------------------
[Statedef 4516]
type = S
physics = N
movetype= H
ctrl = 0
sprpriority = 1
velset = 0,0

[State 4516, NoWidth]
type = Width
trigger1 = 1
value = 0,0

[State 4516, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 4516, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 4516

[State 4516, Damage]
type = LifeAdd
trigger1 = !Time
value = -137
kill = 0

[State 4516, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 4516, ChangeState]
type = ChangeState
trigger1 = P2StateNo = 4507
value = 4517

;--------------------------------------------------------
; Enemy Thrown by Mega Running Spark - Final Run and Jump
;--------------------------------------------------------
[Statedef 4517]
type = S
physics = N
movetype= H
ctrl = 0
sprpriority = 1
velset = 0,0

[State 4517, NoWidth]
type = Width
trigger1 = 1
value = 0,0

[State 4517, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 4517, GrabbedAnim]
type = ChangeAnim2
trigger1 = !Time
value = 4517

[State 4517, GoToSmashed]
type = ChangeState
trigger1 = p2stateno = 4508
value = 4518

;---------------------------------------------------
; Enemy thrown by Mega Running Spark - "Pile Drived"
;---------------------------------------------------
[Statedef 4518]
type = S
physics = N
movetype= H
sprpriority = 1
ctrl = 0
velset = 0,0

[State 4518, DiagUpAnim]
type = ChangeAnim
trigger1 = Time < 8
trigger1 = SelfAnimExist(5101)
value = 5101

[State 4518, Back]
type = ChangeAnim2
trigger1 = !Time
trigger1 = !SelfAnimExist(5101)
value = 4518

[State 4518, Turn]
type = Turn
trigger1 = !Time
trigger1 = !SelfAnimExist(5101)

[State 4518, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 4518, Damage]
type = Lifeadd
trigger1 = !Time
value = -147

[State 4518, NearGround]
type = PosSet
trigger1 = SelfAnimExist(5101)
trigger1 = Time = 8
y = 20

[State 4518, GoToDiaUpBounce]
type = ChangeState
trigger1 = SelfAnimExist(5101)
trigger1 = Time = 8
value = 4519

[State 4518, NearGround]
type = PosAdd
trigger1 = !SelfAnimExist(5101)
trigger1 = !AnimTime
x = 50

[State 4518, NearGround]
type = PosSet
trigger1 = !SelfAnimExist(5101)
trigger1 = !AnimTime
y = 30

[State 4518, GoToBackBounce]
type = SelfState
trigger1 = !SelfAnimExist(5101)
trigger1 = !AnimTime
value = 5030

;--------------------------------------------
; Enemy thrown by Mega Running Spark - Bounce
;--------------------------------------------
[Statedef 4519]
type = A
physics = N
movetype= H
sprpriority = 1
ctrl = 0
velset = 0,0

[State 4519, DiagUpAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5161)
value = 5161

[State 4519, BackAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = !SelfAnimExist(5161)
value = 5160

[State 4519, StartVels]
type = VelSet
trigger1 = !Time
x = GetHitVar(xvel) * Facing
y = GetHitVar(yvel)

[State 4519, Gravity]
type = VelAdd
trigger1 = Time
y = GetHitVar(yaccel)

[State 4519, GoToHitGround]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 10
value = 4520

;----------------------------------------------------
; Enemy thrown by Mega Running Spark - Hit the ground
;----------------------------------------------------
[Statedef 4520]
type = L
movetype= H
physics = N
sprpriority = 1
ctrl = 0
velset = 0,0

[State 4520, PosToGround]
type = PosSet
trigger1 = !Time
y = 0

[State 4520, DiagUpAnim]
type = ChangeAnim
trigger1 = Time < 5
trigger1 = SelfAnimExist(5171)
value = 5171

[State 4520, BackAnim]
type = ChangeAnim
trigger1 = Time < 5
trigger1 = !SelfAnimExist(5171)
value = 5170

[State 4520, GoToBounce]
type = ChangeState
trigger1 = Time = 4
value = 4521

;--------------------------------------------
; Enemy thrown by Mega Running Spark - Bounce
;--------------------------------------------
[Statedef 4521]
type = A
physics = N
movetype= H
sprpriority = 1
ctrl = 0
velset = 0,0

[State 4521, PosToGround]
type = PosSet
trigger1 = !Time
y = 0

[State 4521, DiagUpAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5161)
value = 5161

[State 4521, SelectBounceFrame]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5161)
value = Anim
elem = ifelse((AnimElem=5,<0),5,ifelse((AnimElem=4,<0),4,ifelse((AnimElem=3,<0),3,ifelse((AnimElem=2,<0),2,1))))

[State 4521, BackAnim]
type = ChangeAnim
trigger1 = Time < 5
trigger1 = !SelfAnimExist(5161)
value = 5160

[State 4521, StartVels]
type = VelSet
trigger1 = !Time
x = -GetHitVar(fall.xvel)
y = GetHitVar(fall.yvel)

[State 4521, Gravity]
type = VelAdd
trigger1 = Time
y = GetHitVar(yaccel)

[State 4521, StopVelX]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
x = 0

[State 4521, GoToHitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 5110

;---------------------------------------------------------------------------
; KOF02 HSDM green screen (by Vans)
;---------------------------------------------------------------------------
; var(1): start display green background
; var(2): gethit root flag
[Statedef 7450]
anim = 1234

[State 7450, HideStage]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

[State 7450, ResetDisplayVar]
type = VarSet
trigger1 = !Time
var(1) = 0

[State 7450, SetDisplayVar]
type = VarSet
trigger1 = Root, Stateno = 4500
trigger1 = Root, Time = 36
var(1) = 1

[State 7450, ResetGetHitRoot]
type = VarSet
trigger1 = !Time
var(2) = 0

[State 7450, SetGetHitRoot]
type = VarSet
trigger1 = Root, MoveType = H
var(2) = 1

[State 7450, Tile1-7#1]
type = Explod
triggerall = !NumExplod(7450)
trigger1 = !Time
anim = 7450
ID = 7450
pos = 0,0
postype = Left
removeTime = 10
pausemoveTime = -1
supermoveTime = -1
scale = 1,1
sprpriority = -20
ignorehitpause = 1
bindTime = -1
persistent = 0

[State 7450, Tile1-7#2]
type = Explod
triggerall = !NumExplod(7451) < 2
trigger1 = !Time
trigger2 = !(Time%10)
anim = 7450
ID = 7451
pos = 320,0
postype = Left
removeTime = 20
pausemoveTime = -1
supermoveTime = -1
scale = 1,1
sprpriority = -20
ignorehitpause = 1
bindTime = -1

[State 7450, Tile2-6#1]
type = Explod
triggerall = !NumExplod(74510)
trigger1 = !Time
anim = 7451
ID = 74510
pos = 0,0
postype = Left
removeTime = 20
pausemoveTime = -1
supermoveTime = -1
scale = 1,1
sprpriority = -20
ignorehitpause = 1
persistent = 0
bindTime = -1

[State 7450, Tile2-6#2]
type = Explod
triggerall = !NumExplod(74511) < 2
trigger1 = !Time
trigger2 = !(Time%20)
anim = 7451
ID = 74511
pos = 320,0
postype = Left
removeTime = 40
pausemoveTime = -1
supermoveTime = -1
scale = 1,1
sprpriority = -20
ignorehitpause = 1
bindTime = -1

[State 7450, Tile3-5#1]
type = Explod
triggerall = !NumExplod(74520)
trigger1 = !Time
anim = 7452
ID = 74520
pos = 0,0
postype = Left
removeTime = 40
pausemoveTime = -1
supermoveTime = -1
scale = 1,1
sprpriority = -20
ignorehitpause = 1
persistent = 0
bindTime = -1

[State 7450, Tile3-5#2]
type = Explod
triggerall = !NumExplod(74521) < 2
trigger1 = !Time
trigger2 = !(Time%40)
anim = 7452
ID = 74521
pos = 320,0
postype = Left
removeTime = 80
pausemoveTime = -1
supermoveTime = -1
scale = 1,1
sprpriority = -20
ignorehitpause = 1
bindTime = -1

[State 7450, Tile4#1]
type = Explod
triggerall = !NumExplod(74530)
trigger1 = !Time
anim = 7453
ID = 74530
pos = 0,0
postype = Left
removeTime = 80
pausemoveTime = -1
supermoveTime = -1
scale = 1,1
sprpriority = -20
ignorehitpause = 1
persistent = 0
bindTime = -1

[State 7450, Tile4#2]
type = Explod
triggerall = !NumExplod(74531) < 2
trigger1 = !Time
trigger2 = !(Time%80)
anim = 7453
ID = 74531
pos = 320,0
postype = Left
removeTime = 160
pausemoveTime = -1
supermoveTime = -1
scale = 1,1
sprpriority = -20
ignorehitpause = 1
bindTime = -1

[State 7450, HideTile7-1#1]
type = ModifyExplod
trigger1 = !var(1)
ID = 7450
scale = 0,0

[State 7450, HideTile7-1#2]
type = ModifyExplod
trigger1 = !var(1)
id = 7451
scale = 0,0

[State 7450, HideTile6-2#1]
type = ModifyExplod
trigger1 = !var(1)
id = 74510
scale = 0,0

[State 7450, HideTile6-2#2]
type = ModifyExplod
trigger1 = !var(1)
id = 74511
scale = 0,0

[State 7450, HideTile5-3#1]
type = ModifyExplod
trigger1 = !var(1)
id = 74520
scale = 0,0

[State 7450, HideTile5-3#2]
type = ModifyExplod
trigger1 = !var(1)
id = 74521
scale = 0,0

[State 7450, HideTile4#1]
type = ModifyExplod
trigger1 = !var(1)
id = 74530
scale = 0,0

[State 7450, HideTile4#2]
type = ModifyExplod
trigger1 = !var(1)
id = 74531
scale = 0,0

[State 7450, ShowTile7-1#2]
type = ModifyExplod
trigger1 = var(1)
id = 7451
scale = 1,1

[State 7450, ShowTile6-2#1]
type = ModifyExplod
trigger1 = var(1)
id = 74510
scale = 1,1

[State 7450, ShowTile6-2#2]
type = ModifyExplod
trigger1 = var(1)
id = 74511
scale = 1,1

[State 7450, ShowTile5-3#1]
type = ModifyExplod
trigger1 = var(1)
id = 74520
scale = 1,1

[State 7450, ShowTile5-3#1]
type = ModifyExplod
trigger1 = var(1)
id = 74521
scale = 1,1

[State 7450, ShowTile4#1]
type = ModifyExplod
trigger1 = var(1)
id = 74530
scale = 1,1

[State 7450, ShowTile4#2]
type = ModifyExplod
trigger1 = var(1)
id = 74531
scale = 1,1

[State 7450, GoToGlassBreak]
type = ChangeState
trigger1 = var(2) && Time > 34
trigger2 = Root, PrevStateNo = 4502 && Root, StateNo = 0
trigger3 = Root, PrevStateNo = 4509 && Root, StateNo = 0
trigger4 = Root, PrevStateNo = 920 && Root, StateNo = 0
value = 7455

; Glass Break
[Statedef 7455]
anim = 1234

[State 7455, HideStage]
type = AssertSpecial
trigger1 = Time < 2
flag = noFG

[State 7455, Flash]
type = EnvColor
trigger1 = !Time
value = 255,255,255
time = 2
under = 1

[State 7455, RemoveTile7-1#1]
type = RemoveExplod
trigger1 = !Time
id = 7450

[State 7455, RemoveTile7-1#2]
type = RemoveExplod
trigger1 = !Time
id = 7451

[State 7455, RemoveTile6-2#1]
type = RemoveExplod
trigger1 = !Time
id = 74510

[State 7455, RemoveTile6-2#2]
type = RemoveExplod
trigger1 = !Time
id = 74511

[State 7455, RemoveTile5-3#1]
type = RemoveExplod
trigger1 = !Time
id = 74520

[State 7455, RemoveTile5-3#2]
type = RemoveExplod
trigger1 = !Time
id = 74521

[State 7455, RemoveTile4#1]
type = RemoveExplod
trigger1 = !Time
id = 74530

[State 7455, RemoveTile4#2]
type = RemoveExplod
trigger1 = !Time
id = 74531

[State 7455, BreakSound]
type = PlaySnd
trigger1 = Time = 2
value = S7455,0

[State 7455, GlassBreakAnimation]
type = Explod
triggerall = !NumExplod(7455)
trigger1 = Time = 2
anim = 7455
ID = 7455
pos = 0,0
postype = Left
pausemoveTime = -1
supermoveTime = -1
removeTime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindTime = -1
ignorehitpause = 1

[State 7455, Delete]
type = DestroySelf
trigger1 = Time = 2

; Portrait BG
; var(1): Compliance detection
[Statedef 7460]
anim = 1234

[State 7460, VarSet]
type = VarSet
triggerall = Enemy, NumHelper(40003)
triggerall = !Enemy, NumHelper(40004)
trigger1 = Enemy, authorname = "Vans"
trigger2 = Enemy, authorname = "K.O.D"
trigger3 = Enemy, authorname = "K.O.D & Vans"
trigger4 = Enemy, authorname = "OrochiKOF97"
trigger5 = Enemy, authorname = "David Demianoff"
trigger6 = Enemy, authorname = "Scal"
trigger7 = Enemy, authorname = "Kung Fu Man"
trigger8 = Enemy, authorname = "KoopaKoot"
trigger9 = Enemy, authorname = "Anjel"
trigger10 = Enemy, authorname = "David Demianoff & Kung Fu Man"
var(1) = 1

[State 7460, VarSet]
type = VarSet
triggerall = TeamSide = 2
triggerall = Enemy, NumHelper(40004)
trigger1 = Enemy, authorname = "Vans"
trigger2 = Enemy, authorname = "K.O.D"
trigger3 = Enemy, authorname = "K.O.D & Vans"
trigger4 = Enemy, authorname = "OrochiKOF97"
trigger5 = Enemy, authorname = "David Demianoff"
trigger6 = Enemy, authorname = "Scal"
trigger7 = Enemy, authorname = "Kung Fu Man"
trigger8 = Enemy, authorname = "KoopaKoot"
trigger9 = Enemy, authorname = "Anjel"
trigger10 = Enemy, authorname = "David Demianoff & Kung Fu Man"
var(1) = 1

[State 7460, P1PortraitBG]
type = Explod
triggerall = !NumExplod(7460)
triggerall = TeamSide = 1
trigger1 = !Time
anim = 7460
ID = 7460
pos = 0,abs((240*var(1))-81)
postype = Left
pausemoveTime = -1
supermoveTime = -1
removeTime = -2
bindTime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 7460, P2PortraitBG]
type = Explod
triggerall = !NumExplod(7465)
triggerall = TeamSide = 2
trigger1 = !Time
anim = 7465
ID = 7465
pos = 0,abs((240*var(1))-81)
postype = Right
pausemoveTime = -1
supermoveTime = -1
removeTime = -2
bindTime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 7460, P1Portrait]
type = Explod
triggerall = !NumExplod(74701)
triggerall = TeamSide = 1
trigger1 = !Time
anim = 7470
ID = 74701
pos = 0,abs((240*var(1))-81)
postype = Left
pausemoveTime = -1
supermoveTime = -1
removeTime = -2
bindTime = -1
scale = 1,1
sprpriority = -18
ownpal = 1
ignorehitpause = 1

[State 7460, P2Portrait]
type = Explod
triggerall = !NumExplod(74702)
triggerall = TeamSide = 2
trigger1 = !Time
anim = 7470
ID = 74702
pos = 0,abs((240*var(1))-81)
postype = Right
pausemoveTime = -1
supermoveTime = -1
removeTime = -2
bindTime = -1
scale = 1,1
facing = -1
sprpriority = -18
ownpal = 1
ignorehitpause = 1

[State 7460, ResizeP1PortraitBG1]
type = ModifyExplod
trigger1 = Time = 2
ID = 7460
scale = 1,0.3

[State 7460, ResizeP1PortraitBG2]
type = ModifyExplod
trigger1 = Time = 4
ID = 7460
scale = 1,0.54

[State 7460, ResizeP1PortraitBG3]
type = ModifyExplod
trigger1 = Time = 6
ID = 7460
scale = 1,0.77

[State 7460, ResizeP1PortraitBG4]
type = ModifyExplod
trigger1 = Time = 8
ID = 7460
scale = 1,1

[State 7460, ResizeP1PortraitBG5]
type = ModifyExplod
trigger1 = Time = 56
ID = 7460
scale = 1,0.77

[State 7460, ResizeP1PortraitBG6]
type = ModifyExplod
trigger1 = Time = 57
ID = 7460
scale = 1,0.54

[State 7460, ResizeP1PortraitBG7]
type = ModifyExplod
trigger1 = Time = 58
ID = 7460
scale = 1,0.3

[State 7460, ResizeP1PortraitBG8]
type = ModifyExplod
trigger1 = Time = 59
ID = 7460
scale = 1,1

[State 7460, ResizeP2PortraitBG1]
type = ModifyExplod
trigger1 = Time = 2
ID = 7465
scale = 1,0.3

[State 7460, ResizeP2PortraitBG2]
type = ModifyExplod
trigger1 = Time = 4
ID = 7465
scale = 1,0.54

[State 7460, ResizeP2PortraitBG3]
type = ModifyExplod
trigger1 = Time = 6
ID = 7465
scale = 1,0.77

[State 7460, ResizeP2PortraitBG4]
type = ModifyExplod
trigger1 = Time = 8
ID = 7465
scale = 1,1

[State 7460, ResizeP2PortraitBG5]
type = ModifyExplod
trigger1 = Time = 56
ID = 7465
scale = 1,0.77

[State 7460, ResizeP2PortraitBG6]
type = ModifyExplod
trigger1 = Time = 57
ID = 7465
scale = 1,0.54

[State 7460, ResizeP2PortraitBG7]
type = ModifyExplod
trigger1 = Time = 58
ID = 7465
scale = 1,0.3

[State 7460, ResizeP2PortraitBG8]
type = ModifyExplod
trigger1 = Time = 59
ID = 7465
scale = 1,1

[State 7460, ResizeP1Portrait1]
type = ModifyExplod
trigger1 = Time = 2
ID = 74701
scale = 1,0.3

[State 7460, ResizeP1Portrait2]
type = ModifyExplod
trigger1 = Time = 4
ID = 74701
scale = 1,0.54

[State 7460, ResizeP1Portrait3]
type = ModifyExplod
trigger1 = Time = 6
ID = 74701
scale = 1,0.77

[State 7460, ResizeP1Portrait4]
type = ModifyExplod
trigger1 = Time = 8
ID = 74701
scale = 1,1

[State 7460, ResizeP1Portrait5]
type = ModifyExplod
trigger1 = Time = 56
ID = 74701
scale = 1,0.77

[State 7460, ResizeP1Portrait6]
type = ModifyExplod
trigger1 = Time = 57
ID = 74701
scale = 1,0.54

[State 7460, ResizeP1Portrait7]
type = ModifyExplod
trigger1 = Time = 58
ID = 74701
scale = 1,0.3

[State 7460, ResizeP1Portrait8]
type = ModifyExplod
trigger1 = Time = 59
ID = 74701
scale = 1,1

[State 7460, ResizeP2Portrait1]
type = ModifyExplod
trigger1 = Time = 2
ID = 74702
scale = 1,0.3

[State 7460, ResizeP2Portrait2]
type = ModifyExplod
trigger1 = Time = 4
ID = 74702
scale = 1,0.54

[State 7460, ResizeP2Portrait3]
type = ModifyExplod
trigger1 = Time = 6
ID = 74702
scale = 1,0.77

[State 7460, ResizeP2Portrait4]
type = ModifyExplod
trigger1 = Time = 8
ID = 74702
scale = 1,1

[State 7460, ResizeP2Portrait5]
type = ModifyExplod
trigger1 = Time = 56
ID = 74702
scale = 1,0.77

[State 7460, ResizeP2Portrait6]
type = ModifyExplod
trigger1 = Time = 57
ID = 74702
scale = 1,0.54

[State 7460, ResizeP2Portrait7]
type = ModifyExplod
trigger1 = Time = 58
ID = 74702
scale = 1,0.3

[State 7460, ResizeP2Portrait8]
type = ModifyExplod
trigger1 = Time = 59
ID = 74702
scale = 1,1

[State 7460, Delete]
type = DestroySelf
trigger1 = Time = 60

; ????
[Statedef 7470]
anim = 1234

[State 7470, Delete]
type = DestroySelf
trigger1 = Time = 1
