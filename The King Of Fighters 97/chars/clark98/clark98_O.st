;-=========================================================================-
; * Character:          Clark Steel
; * From :              The King of Fighters 98 (c) SNK/SNK Playmore
; * Mugen converter:    OrochiKOF97 & Scal
; * Contents:           Overrides
;-=========================================================================-

;---------------------------------------------------------------------------
; Variables:
;   * Integers:
;       1       KOF jump system
;       2 to 5  KOF02 hit sound system
;       6       Run time
;       7       Flash Elbow command detection
;       8       Mout Tackle followup selection
;       9 & 10  Counter Hit system
;       11      Guard Crush system
;       12      Flash Elbow connection limiter
;       13 & 14 Throw limiters
;       15      KOF damage scaling system
;       16      Throw limiter - Running Backbreaker and Rolling Cradle
;       17      Throw limiter - Running Tree
;       18      Mutual facing flag
;       19      Instant jumping normal attacks
;       20      Twisted Wrestle SDM finisher choice
;       21      Gethit sound decider
;       22      HitDef handler
;       24      Opponent guard checker
;       25      Throw Escape detection
;       26      Normal moves auto recover system
;       27      Hit identification
;       28      Juglle system
;       29      Dodge attack buffering
;       30      Gatling cornerpush.veloff hack
;       31 & 32 Juggle system inifinite fix
;       33      Randomizer

;   * Persistent integers
;       50      HSDM screen effect (from config.txt)
;       51      Charge activation (from config.txt)
;       52      Dodge activation (from config.txt)
;       53      Toggle game mode flag (from config.txt)
;       54      Sounds flag
;       58      Mode definition (Retro / KOF98) (from config.txt)
;       59      Practice mode detection

;---------------------------------------------------------------------------

;-=========================================================================-
;-=========================================================================-

;---------------------------------------------------------------------------
; Stance
;---------------------------------------------------------------------------
; Modified to :
; - Allow different stance animations, Retro and KOF98
; - Set Vel X to 0
; - Reset var(6) value
[Statedef 0]
type = S
physics = S
sprpriority = 0
velset = 0,0

[State 0, JuggleDebug]
type = null ; StateTypeSet
trigger1 = !Time && TeamSide = 2
;statetype = A
movetype = A

[State 0, RunVar] ; *
type = VarSet
trigger1 = Time = 2
var(6) = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim !=0 && !var(58) && Anim != 5
trigger2 = Anim !=1 && var(58) && Anim != 5
trigger3 = Anim = 5 && !AnimTime
value = ifelse(var(58),1,0)

[State 0, 2]
type = null ; VelSet
trigger1 = Time = 0
y = 0

[State 0, 3]
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

;---------------------------------------------------------------------------
; Stand to Crouch
;---------------------------------------------------------------------------
; Modified to:
; - Set vel to 0,0 at start
; - Simulate the no crouch if opponent is dead
[Statedef 10]
type = C
physics = C
velset = 0,0

[State 10, CrouchAnim]
type = ChangeAnim
trigger1 = Anim != 10 && Anim != 15 && RoundState < 3
value = 10

[State 10, NoCrouchAnim]
type = ChangeAnim
trigger1 = RoundState > 2
trigger1 = Anim != 0
value = ifelse(var(58),1,0)

[State 10, SetStandState]
type = StateTypeSet
trigger1 = Anim != 10
statetype = S
physics = S

[State 10, GoToCrouch]
type = ChangeState
trigger1 = Anim = 10
trigger1 = !AnimTime
value = 11

;---------------------------------------------------------------------------
; Crouch
;---------------------------------------------------------------------------
[Statedef 11]
type    = C
physics = C
anim = ifelse(var(58),14,11)
sprpriority = 0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = ifelse(var(58),14,11)

;---------------------------------------------------------------------------
; Run to Crouch
;---------------------------------------------------------------------------
[Statedef 15]
type = C
physics = C
anim = 15
velset = 0,0
ctrl = 0

[State 15, GoToCrouch]
type = ChangeState
trigger1 = !AnimTime
value = ifelse(Command = "holddown",11,0)
ctrl = 1

;---------------------------------------------------------------------------
; Walk
;---------------------------------------------------------------------------
; Modified to allow walks animation switch (Retro -> 98)
[Statedef 20]
type = S
physics = S
sprpriority = 0

[State 20, WalkF Velocity]
type = VelSet
trigger1 = Command = "holdfwd"
x = Const(velocity.walk.fwd.x)

[State 20, WalkB Velocity]
type = VelSet
trigger1 = Command = "holdback"
x = Const(velocity.walk.back.x)

[State 20, Walk Forward Anim]
type = ChangeAnim
triggerall = Vel x > 0
trigger1 = Anim !=  20 && Anim != 25 && Anim !=  5 
trigger2 = Anim = 5 && AnimTime = 0 
value = ifelse(var(58),25,20)

[State 20, Walk Backward Anim]
type = ChangeAnim
triggerall = Vel x < 0
trigger1 = Anim !=  21 && Anim != 26 && Anim !=  5
trigger2 = Anim = 5 && AnimTime = 0
value = ifelse(var(58),26,21)

;---------------------------------------------------------------------------
; KOF Style Jumps
; Contains code by Sander71113 (sander71113@yahoo.com) used with permission from its author. 
;---------------------------------------------------------------------------

[Statedef 40]
type = S
physics = S
anim = 40
ctrl = 0
velset = 0,0
facep2 = 1

[State 211, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 40, Invincible]
type = NotHitBy
trigger1 = Time = 0
value = SC,NT

[State 40, 4]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 40, 5]
type = VarSet
trigger1 = Command = "holdfwd"
trigger1 = var(1) !=  2
var(1) = 1

[State 40, 6]
type = VarSet
trigger1 = Command = "holdback"
trigger1 = var(1) !=  -2
var(1) = -1

[State 40, 7]
type = VarSet
triggerall = Time = 0
triggerall = Command = "holdfwd"
trigger1 = Command = "longjump"
trigger2 = PrevStateNo = 100
trigger3 = Prevstateno = [10,12]
var(1) = 2

[State 40, 8]
type = VarSet
triggerall = Time = 0
triggerall = Command = "holdback"
trigger1 = Command = "longjump"
trigger2 = Prevstateno = [10,12]
var(1) = -2

[State 40, 9]
type = StopSnd
trigger1 = Time = 0
channel = 1

[State 40, 10]
type = ChangeState
triggerall = AnimTime = 0 
trigger1 = Command !=  "holdup"
value = 243

[State 40, 11]
type = VelSet
trigger1 = AnimTime = 0
x = IfElse(var(1) = 0, Const(velocity.jump.neu.x), IfElse(var(1)>0, Const(velocity.jump.fwd.x),  Const(velocity.jump.back.x)))
y = Const(velocity.jump.y)

[State 40, ResetBasicMovesDetection]
type = VarSet
trigger1 = !Time
var(19) = 0

[State 40, CDDetection]
type = VarSet
trigger1 = Command = "knockdown"
trigger2 = Command = "y" && Command = "b" 
var(19) = 5

[State 40, FiercePunchDetection]
type = VarSet
trigger1 = var(19) = 0
trigger1 = Command = "y"
var(19) = 3

[State 40, FierceKickDetection]
type = VarSet
trigger1 = var(19) = 0
trigger1 = Command = "b"
var(19) = 4

[State 40, WeakPunchDetection]
type = VarSet
trigger1 = var(19) = 0
trigger1 = Command = "x"
var(19) = 1

[State 40, WeakKickDetection]
type = VarSet
trigger1 = var(19) = 0
trigger1 = Command = "a"
var(19) = 2

[State 40, 13]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;-------------------
[Statedef 50]
type = A
physics = A

[State 50, StartLongJumpFwdVelX]
type = VelSet
trigger1 = !Time
trigger1 = Var(1) = 2
x = const(velocity.airjump.back.x)

[State 50, StartLongJumpBackVelY]
type = VelSet
trigger1 = !Time
trigger1 = Var(1) = -2
x = -(const(velocity.airjump.back.x))

[State 50, Transition]
type = PosAdd
trigger1 = Vel Y > 0
x = Vel X
persistent = 0

[State 50, RegularMoveSound]
type = PlaySnd
trigger1 = !Time
trigger1 = abs(var(1)) = 1 || !var(1)
value = 1,3

[State 50, LongMoveSound]
type = PlaySnd
triggerall = !Time
trigger1 = abs(var(1)) = 2
value = 1,4

[State 50, AfterImage]
type = AfterImage
trigger1 = !Time && Vel X && abs(var(1)) = 2
time = 11
length = 5
palbright = 0,0,0
palcontrast = 256,256,256
paladd = -16,-16,-16
palmul = 1,1,1
trans = add1
timegap = 2
framegap = 1
persistent = 1

[State 50, Control Limiter]
type = CtrlSet
trigger1 = Time = 0
trigger1 = prevstateno = 5040
trigger1 = prevstateno = 5210
value = 0

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x) = 0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;---------------------------------------------------------------------------
; Short jumps
;---------------------------------------------------------------------------
[Statedef 243]
type = A
physics = A
anim = 41
velset = 0,const(velocity.airjump.fwd.x)
ctrl = 1

[State 243, StartRegularVels]
type = VelSet
trigger1 = !Time && abs(Var(1)) = 1
x = const(velocity.jump.fwd.x) * (var(1))

[State 243, StartLongFwdVels]
type = VelSet
trigger1 = !Time && Var(1) = 2
x = const(velocity.airjump.back.x)

[State 243, StartLongBackVels]
type = VelSet
trigger1 = !Time && Var(1) = -2
x = -const(velocity.airjump.back.x)

[State 243, Transition]
type = PosAdd
trigger1 = Vel Y > 0
x = Vel X
persistent = 0

[State 243, Control Limiter] 
type = CtrlSet
trigger1 = Time = 0
trigger1 = prevstateno = 5040
trigger1 = prevstateno = 5210
value = 0

[State 243, RegularMoveSound]
type = PlaySnd
triggerall = !Time
trigger1 = abs(var(1)) = 1
trigger2 = !var(1)
value = 1,3

[State 243, LongMoveSound]
type = PlaySnd
triggerall = Time = 0
trigger1 = abs(var(1)) = 2
value = 1,4

[State 243, AfterImage]
type = AfterImage
trigger1 = !Time && Vel X && abs(var(1)) = 2
time = 11
length = 5
palbright = 0,0,0
palcontrast = 256,256,256
paladd = -16,-16,-16
palmul = 1,1,1
trans = add1
timegap = 2
framegap = 1
persistent = 1

[State 243, 15]
type = Changestate
trigger1 = Time && Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 52
ctrl = 0

;---------------------------
[Statedef 52]
type = S
physics = S
anim = 47
ctrl = 1
velset = 0,0

[State 52, 2]
type = PosSet
trigger1 = !Time
y = 0

[State 52, 3]
type = PlaySnd
trigger1 = !Time
value = 1,5

[State 52, 4]
type = null ; CtrlSet
trigger1 = time = 1
value = 1

[State 52, 5]
type = Turn
triggerall = time = 1 && P2Dist x < 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"

[State 52, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Run
;---------------------------------------------------------------------------
; Part 1: Fixed and mandatory
[Statedef 100]
type = S
physics = N
anim = 100
ctrl = 0

[State 100, InitializeCounter]
type = VarSet
trigger1 = !Time
var(6) = 0

[State 100, IncreaseCounter]
type = VarAdd
trigger1 = Vel X
var(6) = 1

[State 100, RunSound]
type = PlaySnd
trigger1 = time = 0
value = 1,2
channel = 3
loop = 1

[State 100, StopRunSound]
type = StopSnd
trigger1 = AnimElem = 2, >=  0
trigger1 = stateno !=  100 && command !=  "holdfwd"
channel = 3

[State 100, VELSET]
type = VelSet
trigger1 = AnimElem = 2
x = const(velocity.run.fwd.x)

[State 100, SetControl]
type = CtrlSet
trigger1 = command = "holdup" 
value = 1 

[State 100, SPECIAL]
type = AssertSpecial
trigger1 = 1
flag = NoWalk 

[State 100, ResetRunAgain]
type = VarSet
trigger1 = Time < 10 && command != "holdfwd"
var(6) = 0

[State 100, GoToCrouch]
type = ChangeState
trigger1 = Time > 9
trigger1 = Command = "holddown" && Command != "holdfwd"
value = 15

[State 100, Change State]
type = ChangeState
triggerall = Time > 9
trigger1 = Command != "holdfwd"
value = 101
ctrl = 1

;-------
; Run (basic)
[Statedef 101]
type = S
physics = S
velset = 0,0
ctrl = 0
anim = 102

[State 101, StopRunSound]
type = StopSnd
trigger1 = !Time
channel = 3

[State 101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0 ; Returns to standing animation
ctrl = 1

;---------------------------------------------------------------------------
; Dash Back
;---------------------------------------------------------------------------
; Start Dash Back
[Statedef 105]
type = S
physics = S
anim = 47
velset = 0
ctrl = 0

[State 105, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SC, AT ; Can't be grabbed while dashing back

[State 105, GoToDashBack]
type = ChangeState
trigger1 = !AnimTime
value = 106

; Dash Back
[Statedef 106]
type = A
physics = N
anim = ifelse(var(58),106,105)

[State 106, StartVels]
type = VelSet
trigger1 = !Time
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 106, MoveSound]
type = PlaySnd
trigger1 = !Time
value = S1,6

[State 106, Friction]
type = VelMul
trigger1 = 1
x = const(velocity.runjump.fwd.x)

[State 106, Gravity]
type = VelAdd
trigger1 = Time
y = const(velocity.runjump.back.x)

[State 106, GoToLand]
type = ChangeState
trigger1 = Vel Y > 0 
trigger1 = Pos Y + Vel Y >= 0
value = 107

; Land Dash Back
[Statedef 107]
type = S
physics = N
anim = 107
velset = Vel X, 0

[State 107, StopVelX]
type = VelSet
trigger1 = Time = 1
x = 0

[State 107, 1]
type = PosSet
trigger1 = !Time
y = 0

[State 107, 2]
type = PlaySnd
trigger1 = !Time
value = 1,5

[State 107, 3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sweep Fall
;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
; Modified to:
; - Allow recovering 
; - Avoid sinking
; - Bounce into air
[Statedef 5071]
type = A
movetype = H
physics = N

[State 5071, Bounce]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, Accel]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, Recover]
type = ChangeState
triggerall = Vel Y > 0 && Pos Y >=  -30
triggerall = alive && CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 5071, Bounce]
type = ChangeState
;trigger1 = Vel Y > 0 && Pos Y >=  0
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel y >= 0
value = 5100

;---------------------------------------------------------------------------
; Fall Recovery (on ground)
;---------------------------------------------------------------------------

[Statedef 5201]
type = S
movetype = H
physics = S
anim = 5200
ctrl = 0

[State 5201, VoiceSound]
type = PlaySnd
trigger1 = Time = 0
value = 0,22
channel = 0

[State 5201, Turn]
type = Turn
trigger1 = Time = 0
trigger1 = P2Dist X < -5

[State 5201, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5201, Roll Back Vel]
type = VelSet
trigger1 = Time = [0,12]
x = -4

[State 5201, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; GetHit states
;---------------------------------------------------------------------------
; HITG_SHAKE
; Modified to :
; - Allow KO sound selection
; - Allow Cheese KO
[Statedef 5000]
type = S
movetype = H
physics = N
velset = 0,0

[State 5000, NoSlowOnCheese]
type = AssertSpecial
trigger1 = !Time && (PrevStateNo = [130,152])
flag = NoKOSlow
ignorehitpause = 1

[State 5000, GoToCheese]
type = ChangeState
trigger1 = !Pos Y && PrevStateNo = [130,152]
trigger1 = !Alive && !Movehit
value = 5130
ignorehitpause = 1

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = !Time
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = PrevStateNo != [130,152]
trigger1 = !Time
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
ttrigger1 = PrevStateNo != [130,152]
rigger1 = !Time
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = !Time && PrevStateNo != [130,152]
trigger1 = GetHitVar(yvel) !=  0 && GetHitVar(fall)
trigger2 = Pos Y !=  0
type = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type = S
movetype = H
physics = S

[State 5000, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype) = 2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >=  GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type = C
movetype = H
physics = N
velset = 0,0

[State 5010, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) !=  [3,5]
value = 5020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5011 ;HITC_SLIDE

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type = C
movetype = H
physics = C

[State 5011, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >=  GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type = A
movetype = H
physics = N
velset = 0,0

[State 5020, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) !=  [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type = A
movetype = H
physics = N
ctrl = 0

[State 5030, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >=  10  ;.
value = 5040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >=  10  ;.
value = 5050 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim !=  [5051,5059] ;Not if in hit up anim
trigger1 = Anim !=  5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >=  10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim !=  5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >=  10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim !=  5035 ;.
value = 5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type = A
movetype = H
physics = N
ctrl = 0

[State 5040, Run]
type = StopSnd
trigger1 = time = 0
channel = 3

[State 5040, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim !=  5040
trigger2 = Time = 0
trigger2 = Anim !=  5035
value = 5040

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >=  0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type = A
movetype = H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim !=  5035
trigger2 = (Anim !=  [5051, 5059]) && (Anim !=  [5061, 5069])
trigger2 = Anim !=  5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >=  ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >=  -30
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
;trigger1 = Pos Y >=  ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
trigger1 = Pos Y + Vel Y >= 0
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 5070]
type = A
movetype = H
physics = N
velset = 0,0

[State 5070, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5070, 1]
type = ChangeAnim 
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 50710]
type = A
movetype = H
physics = N

[State 50710, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >=  15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type = L
movetype = H
physics = N
velset = 0,0

[State 5080, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) !=  0
value = 5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type = L
movetype = H
physics = C

[State 5081, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
; Modified to:
; - add a HitBy to counter invicibility produced by a low liedown.time (bug?)
; - use custom hit ground sound / spark
[Statedef 5100]
type = L
movetype = H
physics = N

[State 5100, HitByFix]
type = HitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT

[State 5100, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim !=  [5051,5059]) && (anim !=  [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = null ; GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <=  10

[State 5100, 8]
type = Explod
trigger1 = Time = 1 && sysvar(1) > 5 && sysvar(1) <= 14
anim = 7030
pos = 0,0
postype = p1
removetime = -2
sprpriority = -3
ownpal = 1
ignorehitpause = 1

[State 5100, 8]
type = Explod
trigger1 = Time = 1 && sysvar(1) > 14
anim = 7035
pos = 0,0
postype = p1
removetime = -2
sprpriority = -3
ownpal = 1
ignorehitpause = 1

[State 5100, 8]
type = Explod
trigger1 = Time = 1 && sysvar(1) > 14
anim = 7036
pos = 0,0
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
value = S5110,0
channel = 1

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type = L
movetype = H
physics = N

[State 5101, StopRunSound]
type = StopSnd
trigger1 = 1
channel = 3

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim !=  [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >=  12
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
; Modified to:
; - add a HitBy to counter invicibility produced by a low liedown.time (bug?)
; - remove gamemakeanim
; - reset vel x if previous state was not custom
; - use custom hit ground sound
[Statedef 5110]
type = L
movetype = H
physics = N

[State 5110, ResetVelX]
type = VelSet
trigger1 = !Time && PrevStateNo = 5101
x = 0

[State 5110, HitByFix]
type = HitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT

[State 5150, 1] ;Collapse fix
type = PosAdd
trigger1 = PrevStateNo = 5130
trigger1 = Anim = 5112
x = 80
persistent = 0

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim !=  [5110,5119] ;Not already changed anim
trigger1 = anim !=  [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim !=  [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) !=  0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
;value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
value = S5110,0
channel = 1

[State 5110, 7]
type = null ; GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <=  10

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim !=  [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
; Modified to: 
; - reduce the anti throw timings (from 12 to 3)
; - add a HitBy to counter invicibility produced by a low liedown.time (bug?)
[Statedef 5120]
type = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = !Time
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = !Time
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = !Time
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = !AnimTime
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = !AnimTime
value = , NT,ST,HT
time = 3 ; (*)

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = !AnimTime
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Cheese Kill
;---------------------------------------------------------------------------
[Statedef 5130]
type = S
physics = S
anim = 5130
poweradd = 0
sprpriority = -1
velset = 0,0
ctrl = 0

[State 5130, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = ifelse(var(54),1011,11),2

[State 5130, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5130, SetLieDeadAnim]
type = ChangeAnim
trigger1 = Anim = 5130 && !AnimTime
value = 5111

[State 5130, 2]
type = ChangeState
trigger1 = Anim != 5130
value = 5150
ctrl = 1

;---------------------------------------------------------------------------
; Custom non cheese KO sound helper
;---------------------------------------------------------------------------
[Statedef 5131]
type = S
physics = S
anim = 1234
ctrl = 0

[State 5131, PlayCustomKOSound]
type = PlaySnd
trigger1 = Time = 1
trigger1 = !(Parent, StateNo = 5130)
value = ifelse((Parent,var(54)),1011,11),1
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type = L
movetype = H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = !Time && PrevStateNo != 5130
triggerall = SelfAnimExist(5140)
trigger1 = (anim !=  [5111,5119]) && (anim !=  [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
triggerall = !Time && PrevStateNo != 5130
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
triggerall = PrevStateNo != 5130
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
triggerall = !Time && PrevStateNo != 5130
trigger1 = Anim !=  [5140,5159]
trigger1 = Anim !=  [5110,5119]
value = 5110

[State 5150, 1] ;Collapse
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 5130
value = 5111

[State 5150, 1] ;Collapse
type = PosAdd
trigger1 = !Time && PrevStateNo = 5130
x = 16

[State 5150, Cheese] ;Cheese KO anim
type = CtrlSet
trigger1 = !Time && PrevStateNo = 5130
value = 1

[State 5150, 6] ;Friction
type = VelMul
trigger1 = PrevStateNo != 5130
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = PrevStateNo != 5130 && Vel x < .05
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Variables Reset
;---------------------------------------------------------------------------

[Statedef 5901]
type = S

[State 5901, 2]
type = VarRangeSet
trigger1 = roundno = 1
fvalue = 0

[State 5901, Turns Mode Intro]
type = ChangeState
trigger1 = teammode = turns
trigger1 = roundno > 1
trigger1 = roundsexisted <=  0
trigger1 = roundstate = 0
value = 191

[State 5901, 3]
type = ChangeState
trigger1 = roundno = 1
value = 190
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lose by Time Over
;---------------------------------------------------------------------------

[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win states
;---------------------------------------------------------------------------

; Win states decider
;--------------------
[Statedef 180]
type = S

[State 180, PerfectHelper]
type = null ; Helper
trigger1 = !Time && WinPerfect
id = 179
anim = 179
postype = p1
pos = 0,-100
stateno = 179

[State 180, InitDecider]
type = null; VarSet
trigger1 = !Time
var(17) = -1

[State 180, RandomDecider]
type = null ; VarSet
triggerall = !Time && var(17) = -1
trigger1 = Command != "holda" && Command != "holdb"
trigger1 = Command != "holdc" && Command != "holdd"
trigger2 =  var(58)
var(17) = Random

[State 180, null ; InputDecider]
type = VarSet
trigger1 = !Time && var(17) = -1
trigger1 = !var(58)
var(17) = ifelse(Command = "holda",0,ifelse(Command = "holdc",250,ifelse(Command = "holdb",500,999)))

[State 180, DefineRandomWinPose]
type = VarSet
trigger1 = !Time
var(33) = Random

; KOF98 win pose 1 - "Hey"
[State 180, GoTo98WinPose1]
type = ChangeState
triggerall = !var(58)
trigger1 = Command = "holda"
trigger2 = Command != "holda" 
trigger2 = Command != "holdb"
trigger2 = Command != "holdc"
trigger2 = Command != "holdd"
trigger2 = var(33) < 250
value = 183

; KOF98 win pose 2 - Silent
[State 180, GoTo98WinPose2]
type = ChangeState
triggerall = !var(58)
trigger1 = Command = "holdb"
trigger2 = Command != "holda" 
trigger2 = Command != "holdb"
trigger2 = Command != "holdc"
trigger2 = Command != "holdd"
trigger2 = var(33) < 500
value = 184

; KOF98 win pose 3 - "Nurui, yo...na?"
[State 180, GoTo98WinPose3]
type = ChangeState
triggerall = !var(58)
trigger1 = Command = "holdc"
trigger2 = Command != "holda" 
trigger2 = Command != "holdb"
trigger2 = Command != "holdc"
trigger2 = Command != "holdd"
trigger2 = var(33) < 750
value = 181

; KOF98 win pose 4 - "Ninmu Kanryo"
[State 180, GoTo98WinPose4]
type = ChangeState
triggerall = !var(58)
trigger1 = Command = "holdd"
trigger2 = Command != "holda" 
trigger2 = Command != "holdb"
trigger2 = Command != "holdc"
trigger2 = Command != "holdd"
trigger2 = var(33) < 1000
value = 182

; KOF95 win pose 1
[State 181, GoToRetroWinPose1]
type = ChangeState
triggerall = var(58)
trigger1 = Command = "holda"
trigger2 = Command != "holda" 
trigger2 = Command != "holdb"
trigger2 = Command != "holdc"
trigger2 = Command != "holdd"
trigger2 = var(33) < 333
value = 185

; KOF95 win pose 2
[State 181, GoToRetroWinPose2]
type = ChangeState
triggerall = var(58)
trigger1 = Command = "holdb"
trigger2 = Command != "holda" 
trigger2 = Command != "holdb"
trigger2 = Command != "holdc"
trigger2 = Command != "holdd"
trigger2 = var(33) < 666
value = 186

; KOF97 win pose
[State 181, GoToRetroWinPose2]
type = ChangeState
triggerall = var(58)
trigger1 = Command = "holdc"
trigger2 = Command != "holda" 
trigger2 = Command != "holdb"
trigger2 = Command != "holdc"
trigger2 = Command != "holdd"
trigger2 = var(33) < 1000
value = 187

; "Perfect" message
;-------------------
[Statedef 179]
type = S

[State 179, Explod(P1)]
type = Explod
trigger1 = Time = 20 && teamside = 1
anim = 7300
pos = 15,40
postype = Left
sprpriority = 5
bindtime = -1
removetime = 99999999999999
ontop = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1
pausemovetime = 99999999999999
Supermovetime = 99999999999999

[State 179, Explod2(P2)]
type = Explod
triggerall = WinPerfect
trigger1 = Time = 20 && teamside = 2
anim = 7300
pos = -140,40
postype = Right
sprpriority = 5
bindtime = -1
removetime = 99999999999999
ontop = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1
pausemovetime = 99999999999999
Supermovetime = 99999999999999

[State 179, PerfectSound]
type = PlaySnd
triggerall = WinPerfect
trigger1 = time = 20
value = 1,25
channel = 1

; KOF98 win pose 1 - "Hey"
;-------------------------
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 183, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 183, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 4
value = ifelse(var(54),10183,183),0

; KOF98 win pose 2 - Silent
;--------------------------
[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 184, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

; KOF98 win pose 3 - "Nurui, yo...na?" ("Pathetic...aren't you?")
;----------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 181, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 19
value = 181,0

; KOF98 win pose 4 - "Ninmu Kanryo" ("Mission Complete")
;-------------------------------------------------------
[Statedef 182]
type = S
ctrl = 0
anim = 181

[State 182, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 182, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 182,0

; KOF95 win pose 1 - "Hey"
;-------------------------
[Statedef 185]
type = S
ctrl = 0
anim = 184

[State 185, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 185, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 4
value = ifelse(var(54),10183,183),0

; KOF95 win pose 2 - Silent
;--------------------------
[Statedef 186]
type = S
ctrl = 0
anim = 185

[State 186, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

; KOF97 win pose - "Nurui, yo...na?" ("Pathetic...aren't you?")
;--------------------------------------------------------------
[Statedef 187]
type = S
ctrl = 0
anim = 186

[State 187, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 181,0

[State 187, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA


;---------------------------------------------------------------------------
; Intro states
;---------------------------------------------------------------------------

; Intro state decider
;---------------------
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, IkariWarriorIntro] ; 2nd intro (KOF98 mode) - Ikari Warrior
type = ChangeState
trigger1 = P2Name = "Ralf" || P4Name = "Ralf"
trigger2 = P2Name = "Ralf Jones" || P4Name = "Ralf Jones"
trigger3 = P2Name = "Ralf_WLS" || P4Name = "Ralf_WLS"
trigger4 = P2Name = "Ralf99_WLS" || P4Name = "Ralf99_WLS"
trigger5 = P2Name = "Leona" || P4Name = "Leona"
trigger6 = P2Name = "Tin's Leona" || P4Name = "Tin's Leona"
trigger7 = P2Name = "Leona by Edo Impact" || P4Name = "Leona by Edo Impact"
trigger8 = P2Name = "Whip" || P4Name = "Whip"
trigger9 = P2Name = "Heidern" || P4Name = "Heidern"
trigger10 = P2Name = "HeidernEx" || P4Name = "HeidernEx" 
value = 192

[State 190, GoToRalf98Intro] ; 3rd intro (KOF98 mode) - Clark Vs Ralf'98
type = ChangeState
trigger1 = P2Name = "Ralf98" || P4Name = "Ralf98"
value = 193

[State 190, RetroModeIntro]; 4th Intro (Retro mode)
type = ChangeState
trigger1 = var(58)
value = 194

[State 190, GenericIntro] ; Generic intro (KOF98 mode)
type = ChangeState
trigger1 = !var(58)
value = 191

; Generic intros (KOF98 mode)
;-----------------------------
[Statedef 191]
type = S
anim = ifelse(Random < 500,190,193)
ctrl = 0
velset = 0,0

[State 191, IntroMode]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0

; Intro against Ikari Warriors (KOF98 mode)
;-------------------------------------------
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 192, IntroMode]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0

; 3rd Intro (Clark VS Ralf '98 Intro)
;-------------------------------------
[Statedef 193]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 193, IntroMode]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, VoiceSound1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,29

[State 193, VoiceSound2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,30

[State 193, FxSnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,26

[State 0, FxExplod]
type = Explod
trigger1 = AnimElem = 9
anim = 7065
pos = -16,-90
postype = p1
sprpriority = 3
ontop = 1
shadow = 0,0,0

[State 193, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0

; 4th Intro (Retro mode)
;------------------------
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, IntroMode]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, ImpactSound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 2,2

[State 194, ImpactSpark]
type = Explod
trigger1 = AnimElem = 12
anim = 7010
pos = 12,-96
postype = p1
sprpriority = 2

[State 194, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Taunt - "Hey ! Come On !"
;---------------------------------------------------------------------------

[Statedef 195]
type = S
ctrl = 0
anim = ifelse(var(58),196,195)
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 1,=1
value = ifelse(var(54),1000,0),8

[State 195, EnableControl]
type = CtrlSet
triggerall = Time > 32
trigger1 = Command = "holdfwd"
trigger2 = Command = "holdback"
trigger3 = Command = "holdup"
trigger4 = Command = "holddown"
value = 1

[State 195, P2state]
type = Helper
trigger1 = var(59) < 0
trigger1 = !Time && !NumHelper(198)
stateno = 198
id = 198
postype = p1
pos = 0,0

[State 195, ToggleGameMode]
type = VarSet
trigger1 = var(53)
trigger1 = Time > 2 && Command = "start"
var(58) = !var(58)

[State 195, GameModeSoundDecider]
type = VarSet
trigger1 = var(53)
trigger1 = Time > 2 && Command = "start" && var(55) = -1
var(54) = ifelse(var(58),1000,0)
persistent = 0

[State 195, ToggleGameModeSound]
type = PlaySnd
trigger1 = var(53)
trigger1 = Time > 2 && Command = "start"
value = S57,var(58)
persistent = 0

[State 195, GoToStandOrCrouch]
type = ChangeState
trigger1 = !AnimTime
value = ifelse(command = "holddown", 10,0)
ctrl = 1

; Helper managing P2 reaction (Training Mode only)
;-----------------------------
[Statedef 198]
movetype = A
anim = 198

[State 198, P2state]
type = HitDef
trigger1 = P2StateType = S && P2MoveType !=A
attr = S,NA
hitflag = MAF
guardflag = M
sparkno = -1
guard.sparkno = -1
p2stateno = 199

[State 198, Unguardable]
type = AssertSpecial
trigger1 = 1
flag = Unguardable

[State 198, StateTypeSet]
type = StateTypeSet
trigger1 = MoveContact && MoveType = A
movetype = I

[State 198, End]
type = DestroySelf
trigger1 = NumHelper(198)
trigger1 = Parent, StateNo != 195
id = 198

; P2 reaction: walking forward while opponent is taunting
;---------------------------------------------------------
[Statedef 199]
type    = S
physics = S
sprpriority = 0
facep2 = 1
ctrl = 0

[State 199, 1]
type = VelSet
trigger1 = 1
x = const(velocity.walk.fwd.x)

[State 199, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 20

[State 199, 3]
type = SelfState
trigger1 = NumEnemy
trigger1 = !(Enemy, NumHelper(198))
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling); by Vans
[Statedef 8400]
type    = A
movetype= H
physics = N

[State 5040, GoToDeath]
type = SelfState
trigger1 = !Alive
value = 5050

[State 5040, GoToRecover]
type = SelfState
trigger1 = 1
value = 5040

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
; Modified to:
; - add Turns ChangeState controller
; - force stance at the end of intro
[Statedef 5900]
type = S

[State 5900, ClearIntVariables]
type = VarRangeSet
trigger1 = !RoundsExisted && PrevStateNo != 5910
value = 0
last = 50

[State 5900, ClearFloatVariables]
type = VarRangeSet
trigger1 = !RoundsExisted && PrevStateNo != 5910
fvalue = 0

[State 5900, ReadConfigFile]
type = ChangeState
trigger1 = !RoundsExisted && PrevStateNo != 5910
value = 5910
ctrl = 0
    
[State 5900, GameModeDetection]
type = VarSet
trigger1 = var(58) = -1
trigger1 = RoundsExisted <= 0
trigger1 = !RoundState
var(58) = PalNo > 6
    
[State 5900, SoundSetDetection]
type = VarSet
trigger1 = RoundsExisted <= 0
trigger1 = !RoundState
var(54) = ifelse(var(55)=1,1000,ifelse(var(55)=-1&&var(58),1000,0))

[State 5900, TurnsModeIntro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = RoundNo > 1
trigger1 = RoundsExisted <= 0
trigger1 = RoundState = 0
value = 191

[State 5900, CommonIntros]
type = ChangeState
trigger1 = RoundNo = 1
value = 190

[State 5900, 4]
type = ChangeState
trigger1 = RoundNo != 1
value = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef -2]
;---------------------------------------------------------------------------
; Miscellaneous
; Author: Scal
;---------------------------------------------------------------------------
; Disable air guard
[State -2, NoAirGuard]
type = AssertSpecial
trigger1 = 1
flag = noAirGuard
ignorehitpause = 1

; Reset run variable detection
[State -2, RunVariable]
type = VarSet
trigger1 = StateNo != [100,102]			; Not in run state
trigger1 = StateNo != 0 && StateNo != 20; Not in stance and not walking
trigger1 = var(6)						; Run detected
var(6) = 0

; Stop Run sound
[State -2, StopSounds]
type = StopSnd
trigger1 = StateNo != 100 ; (run basic)
trigger1 = StateNo != 950 && StateNo != 2600 && StateNo != 2700 ; (run specials)
trigger1 = StateNo != 1600 && StateNo != 1650 ; (specials: vulcan punch)
trigger1 = StateNo != 3001 && StateNo != 3101 ; (Running Three DM & SDM)
trigger1 = StateNo != 4501 && StateNo != 4503  && StateNo != 4505 && StateNo != 4507 ; (HSDM)
channel = 3

;---------------------------------------------------------------------------
; Cross up preventer
; Author: Vans
; Description: Prevent to cross up a cornered opponent.
;---------------------------------------------------------------------------
[State -2, NoCrossUp]
type = Width
trigger1 = Movetype != H
trigger1 = var(18) = 1
edge = 8,0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Throw Limiter - Running Backbreaker and Rolling Cradle
; Author: Scal
; Description: Limit Running Backbreaker and Rolling Cradle grab attempt
;              during an amount of time after chained hits (guarded or not)
; Variables:
;	- var(16): 0 = limitation is off, > 0 = limitation is on
;---------------------------------------------------------------------------
[State -2, InitVar]
type = VarSet
trigger1 = PrevStateNo = 211 && StateNo = 203 && MoveContact && !var(16)
var(16) = 40

[State -2, DecVar]
type = VarAdd
trigger1 = var(16) > 0
var(16) = -1

;---------------------------------------------------------------------------
; Throw Limiter - Running Tree
; Author: Scal
; Description: Limit Running Tree grab attempt during an amout of time after 
;              chained hits (guarded or not)
; Variables:
;	- var(17): 0 = limitation is off, > 0 = limitation is on
;---------------------------------------------------------------------------
[State -2, InitVar]
type = VarSet
trigger1 = StateNo = 203 && MoveContact && !var(17)
var(17) = 40

[State -2, InitVar2]
type = VarAdd
trigger1 = StateNo = 3000 && AnimElem = 2 && var(17)
var(17) = 30

[State -2, DecVar]
type = VarAdd
trigger1 = var(17) > 0
var(17) = -1

;---------------------------------------------------------------------------
; Bar display handler
; Author: OrochiKOF97
; Description:  Disable life and power bars display when the round is not 
;               started yet or over.
;---------------------------------------------------------------------------
[State -2, BarDisplay]
type = AssertSpecial
trigger1 = RoundState = [0,1]                  ; Match not yet started
trigger2 = RoundState = 4                      ; Match over
trigger3 = !Ctrl && !StateNo && MoveType != H  ; Root has no control, is in stance and is not in gethit state
flag = NoBarDisplay
ignorehitpause = 1

;---------------------------------------------------------------------------
; Counter Hit detection
; Author: Based on OrochiKOF97 method, slightly adapted by Scal
; Description: When a Counter Hit is perfomed and a free juggle time is 
;              enabled.
; Variables:	
;	- var(9): 0 = enemy is not in attack state, 1 = Enemy is in attack state
;	- var(10): > 0 = Counter Hit has been performed and free juggle 
;                   is enabled
;---------------------------------------------------------------------------
[State -2, DetectCounterHitConditions]
type = VarSet
trigger1 = NumEnemy
trigger1 = Enemy, MoveType = A					  ; Enemy is in attack state
var(9) = 1
ignorehitpause = 1

[State -2, ResetCounterHitScaling]
type = AttackMulSet
trigger1 = 1                                      ; No Counter Hit scaling by default
value = 1
ignorehitpause = 1

[State -2, SetCounterHitScaling]
type = AttackMulSet
triggerall = var(9)                               ; Enemy is in attack state
trigger1 = StateNo != 440                         ; And not from trip attack
trigger1 = StateNo != 704                         ; And not from Guard Cancel CD
trigger1 = Anim != 800                            ; Basic throws (KOF98 & Retro mode)
trigger1 = StateNo != 1050                        ; Basic air throws (KOF98 & Retro mode)
trigger1 = StateNo != [999,1001]                  ; Frankensteiner
trigger1 = StateNo != [900,1055]                  ; Super Argentina Backbreaker, Flash Elbow, Frankensteiner, Napalm Stretch
trigger1 = StateNo != [2600,2603]                 ; Running Backbreaker
trigger1 = StateNo != [2700,2704]                 ; Rolling Cradle
trigger1 = StateNo != [3000,3110]                 ; Running Three (KOF98 & Retro mode)
trigger1 = StateNo != [6000,6199]                 ; Ultra Argentina Backbreaker DM & SDM
trigger1 = StateNo != [4500,4509]                 ; Running Mega Running Spark HSDM
value = 1.25
ignorehitpause = 1

[State -2, ResetCounterHitConditions]
type = VarSet
triggerall = NumEnemy
trigger1 = Enemy, Movetype = I || var(10) >=  1	 ; Enemy has recovered or Counter Hit performed
trigger2 = StateNo = 704                         ; Not from Guard Cancel CD
trigger3 = var(10) > 8 && Enemy, Movetype = H    ; Counter is enabled for at least 8 ticks and opponent is in gethit state
var(9) = 0
ignorehitpause = 1

[State -2, DetectCounterHit]
type = VarSet
triggerall = var(9) = 1                           ; Counter Hit can be performed
trigger1 = MoveHit								  ; Root has hit
trigger1 = StateNo != 440                         ; And not from trip attack
trigger1 = StateNo != 704                         ; And not from Guard Cancel CD
trigger1 = Anim != 800                            ; Basic throws (KOF98 & Retro mode)
trigger1 = StateNo != 1050                        ; Basic air throws (KOF98 & Retro mode)
trigger1 = StateNo != [999,1001]                  ; Frankensteiner
trigger1 = StateNo != [900,1055]                  ; Super Argentina Backbreaker, Flash Elbow, Frankensteiner, Napalm Stretch
trigger1 = StateNo != [2600,2603]                 ; Running Backbreaker
trigger1 = StateNo != [2700,2704]                 ; Rolling Cradle
trigger1 = StateNo != [3000,3110]                 ; Running Three (KOF98 & Retro mode)
trigger1 = StateNo != [6000,6199]                 ; Ultra Argentina Backbreaker DM & SDM
trigger1 = StateNo != [4500,4509]                 ; Running Mega Running Spark HSDM
var(10) = 1
ignorehitpause = 1

[State -2, CounterHitTime]
type = VarAdd
trigger1 = var(10) >= 1							  ; Enable free juggle
trigger1 = !((StateNo = 6000 || StateNo = 6075) && Time < 30) ; Not during Ultra Argentina Backbreaker (DM)
trigger1 = !(StateNo = 6100 && Time < 30)         ; Not during Ultra Argentina Backbreaker (SDM)
trigger1 = !((StateNo = 3000 || StateNo = 3100) && Time < 30) ; Running Three
trigger1 = !(StateNo = 4500 && Time < 30)         ; Not during Mega Running Spark
ignorehitpause = 1
var(10) = 1

[State -2, EndCounterHit]
type = VarSet
trigger1 = var(10) >= 43						  ; Free juggle period run out of time
trigger2 = P2MoveType != H						  ; Opponent is no more in gethit state
trigger3 = MoveType = H							  ; Root has been hit
trigger4 = var(10) > 20                           ; Counter Hit performed for at least 20 ticks
trigger4 = MoveHit = 1                            ; And root has hit
var(10) = 0
ignorehitpause = 1

[State -2, Flash]
type = BGPalFX
triggerall = NumEnemy
triggerall = Enemy, MoveType = H				  ; Enemy is in gethit state
triggerall = var(9)								  ; Counter Hit performed and free juggle enabled
;triggerall = MoveType != H                        ; Root not in gethit state
trigger1 = MoveHit = 1						      ; Root has hit
trigger1 = StateNo != 440                         ; And not from trip attack
trigger1 = StateNo != 704                         ; And not from Guard Cancel CD
trigger1 = Anim != 800                            ; Basic throws (KOF98 & Retro mode)
trigger1 = StateNo != 1050                        ; Basic air throws (KOF98 & Retro mode)
trigger1 = StateNo != [999,1001]                  ; Frankensteiner
trigger1 = StateNo != [900,1055]                  ; Super Argentina Backbreaker, Flash Elbow, Frankensteiner, Napalm Stretch
trigger1 = StateNo != [2600,2603]                 ; Running Backbreaker
trigger1 = StateNo != [2700,2704]                 ; Rolling Cradle
trigger1 = StateNo != [3000,3110]                 ; Running Three (KOF98 & Retro mode)
trigger1 = StateNo != [6000,6199]                 ; Ultra Argentina Backbreaker DM & SDM
trigger1 = StateNo != [4500,4509]                 ; Running Mega Running Spark HSDM
add = 255,255,255
time = 1
ignorehitpause = 1

[State -2, DisplayP1Message]
type = Explod
triggerall = !NumExplod(7150) && TeamSide = 1 	; Not yet diplsayed for P1
triggerall = var(9) = 1 					    ; Counter is enabled
trigger1 = MoveHit = 1	                        ; Root has just hit
trigger1 = StateNo != 440                       ; And not from trip attack
trigger1 = StateNo != 704                       ; And not from Guard Cancel CD
trigger1 = Anim != 800                          ; Basic throws (KOF98 & Retro mode)
trigger1 = StateNo != 1050                      ; Basic air throws (KOF98 & Retro mode)
trigger1 = StateNo != [999,1001]                ; Frankensteiner
trigger1 = StateNo != [900,1055]                ; Super Argentina Backbreaker, Flash Elbow, Frankensteiner, Napalm Stretch
trigger1 = StateNo != [2600,2603]               ; Running Backbreaker
trigger1 = StateNo != [2700,2704]               ; Rolling Cradle
trigger1 = StateNo != [3000,3110]               ; Running Three (KOF98 & Retro mode)
trigger1 = StateNo != [6000,6199]               ; Ultra Argentina Backbreaker DM & SDM
trigger1 = StateNo != [4500,4509]               ; Running Mega Running Spark HSDM
anim = 7150
id = 7150
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

[State -2, DisplayP2Message]
type = Explod
triggerall = !NumExplod(7151) && TeamSide = 2 	; Not yet diplsayed for P1
triggerall = var(9) = 1 					    ; Counter is enabled
trigger1 = MoveHit = 1	                        ; Root has just hit
trigger1 = StateNo != 440                       ; And not from trip attack
trigger1 = StateNo != 704                       ; And not from Guard Cancel CD
trigger1 = Anim != 800                          ; Basic throws (KOF98 & Retro mode)
trigger1 = StateNo != 1050                      ; Basic air throws (KOF98 & Retro mode)
trigger1 = StateNo != [999,1001]                ; Frankensteiner
trigger1 = StateNo != [900,1055]                ; Super Argentina Backbreaker, Flash Elbow, Frankensteiner, Napalm Stretch
trigger1 = StateNo != [2600,2603]               ; Running Backbreaker
trigger1 = StateNo != [2700,2704]               ; Rolling Cradle
trigger1 = StateNo != [3000,3110]               ; Running Three (KOF98 & Retro mode)
trigger1 = StateNo != [6000,6199]               ; Ultra Argentina Backbreaker DM & SDM
trigger1 = StateNo != [4500,4509]               ; Running Mega Running Spark HSDM
anim = 7151
id = 7151
pos = -67,90
postype = right
bindtime = -1
sprpriority = 2
supermove = 1
facing = 1
ontop = 0
ownpal = 1
ignorehitpause = 1 
persistent = 0

;---------------------------------------------------------------------------
; Juggle system 
; Author: Scal, inspired on Vans method
; Description: Handle basic juggle: Detect if opponent is falling does not 
;              detect exceptions (free juggles).
; Variables: 
;	- var(28): 0 = disable juggle, 1 = enable juggle
;---------------------------------------------------------------------------
[State -2, Juggle]
type = VarSet
trigger1 = P2MoveType != H                           ; Opponent not in gethit state
trigger2 = P2StateType != A && !NumTarget(250)       ; Opponent not in air and not hit by CD
trigger3 = P2Stateno = 5040                          ; Opponent air recovering
trigger4 = var(10)                                   ; Counter Hit performed and free juggle enabled
var(28) = 1
ignorehitpause = 1

[State -2, NoJuggleRootHit]
type = VarSet
triggerall = !var(10)                               ; Free juggle of Counter Hit disabled
triggerall = P2MoveType = H && MoveHit              ; Opponent hit
triggerall = P2StateType = A || NumTarget(250)      ; Opponent in air or hit by CD
triggerall = P2Stateno != 5040                      ; Opponent not air recovering
trigger1 = StateNo = [200,899]                      ; Basic moves
trigger2 = StateNo = [900,5999]                     ; Special moves
trigger2 = StateNo != [1850,1851]                   ; Not Death Lake Drive (Air throw)
trigger3 = StateNo = [6000,7000]                    ; Desperation moves
var(28) = 0
ignorehitpause = 1
 
; Not used with Clark
[State -2, NoJuggleHelperHits]
type = VarSet
triggerall = !var(10)                               ; Free juggle of counter hit disabled
triggerall = P2MoveType = H                         ; Opponent hit
triggerall = P2StateType = A && P2Stateno != 5040   ; Opponent in air without recovering
trigger1 = NumHelper(3002)                          ; Random example for projectile with ID 3002
trigger1 = Helper(3002), MoveHit
var(28) = 1
ignorehitpause = 1

[State -2, EndOfRound]
type = VarSet
trigger1 = RoundState > 2                          ; Someone is dead
var(24) = 0

[State -2, DisableMugenJuggle]
type = AssertSpecial
trigger1 = 1
flag = noJuggleCheck

;---------------------------------------------------------------------------
; Hit identification ; TODO
; Author: Scal
; Description: Save the last state number that has hit opponent.
; Variables:
;	- var(27):	Last StateNo that has hit opponent
;---------------------------------------------------------------------------
; No StateNo by default
[State -2, NoHit]
type = VarSet
trigger1 = P2MoveType != H                          ; Opponent not in gethit state
trigger1 = !MoveHit                                 ; Root has not hit recently
var(27) = 0
ignorehitpause = 1

; Root hits
[State -2, RootHit]
type = VarSet
triggerall = MoveHit
trigger1 = StateNo = [200,899]                      ; Normal moves
trigger2 = StateNo = [900,5999]                     ; Special moves
trigger2 = StateNo != [1850,1851]                   ; Not Death Lake Drive (Air throw)
trigger3 = StateNo = [6000,7000]                    ; Desperation moves
var(27) = StateNo
ignorehitpause = 1

;---------------------------------------------------------------------------
; HitDef handler
; Author: Scal
; Description: Enable or disable HitDef controllers according to KOF rules.
;              Require to add a trigger on var(22) in HitDef controllers.
; Variables:
;	- var(22): 0 = disable HitDef, 1 = enable HitDef
;---------------------------------------------------------------------------
[State -2, InitializeVar]
type = VarSet
trigger1 = 1
var(22) = 0
ignorehitpause = 1

[State -2, SetVar]
type = VarSet
triggerall = RoundState > 1					; Match has begin 
triggerall = var(28)						; Juggle enabled
trigger1 = P2Stateno != [5020,5040]         ; Opponent not hit in air
trigger1 = P2Stateno != [154,155]           ; Opponent not in air guard
trigger1 = var(10) = 0                      ; Free juggle of counter hit disabled
trigger2 = var(10) > 0                      ; Counter Hit performed and free juggle enabled
var(22) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Juggle limiter
; Author: Scal
; Description: Allow an occurence on a move to hit more than once.
;              Require an attack move to be code in one state.
; Variables: 
;   - var(31)): 0 = not in the same move, 1 = still in the same move 
;	               that has hit
;   - var(32): 0 = limit juggle, 1 = do nothing
;---------------------------------------------------------------------------
[State -2, NoLimitationByDefault]
type = VarSet
trigger1 = MoveType != A
var(31) = 1

[State -2, SameStateDetection]
type = VarSet
trigger1 = MoveType = A
trigger1 = !var(22)                     ; Cannot hit opponent
trigger1 = var(27) = StateNo            ; Last state number that hit is same than current
trigger1 = var(31)                      ; Limitation is disabled
var(31) = ifelse((AnimElem = 1,=1),0,1) ; If start of state enable the limitation, disable otherwise

[State -2, DifferentStateDetection]
type = VarSet
trigger1 = MoveType = A
trigger1 = !var(22)                     ; Cannot hit opponent
trigger1 = var(27) != StateNo           ; Last state number that hit is same than current
trigger1 = var(31)                      ; Limitation is disabled
var(31) = 0                             ; Enable limitation

[State -2, KillInfinite]
type = VarSet
trigger1 = 1
var(32) = ifelse((!var(22) && var(31)),1,0) ; If cannot hit opponent and limitation disabled
                                            ; disable limitation, limit juggle otherwise
;---------------------------------------------------------------------------
; Guard Crush system 
; Author: Based on OrochiKOF97 method, adapted by Scal
; Description: Decrease gauge only. See state -3 for the rest of the system.
; Variables: 
;	- var(11) Guard Crush gauge value
;---------------------------------------------------------------------------
[State -2, DecreaseGauge]
type = VarAdd
trigger1 = var(11) > 0 && !(Time%34)
var(11) = -1
ignorehitpause = 1 

;---------------------------------------------------------------------------
; Mutual facing flag
; Author: Scal
; Description: Check if root and opponent are facing each other.
; Variables: 
;	- var(18): -1 = not facing, 1 = facing
;---------------------------------------------------------------------------
[State -2, MutualFace]
type = VarSet
trigger1 = NumEnemy
var(18) = ifelse((Facing != (Enemy, Facing)), 1, -1)

;---------------------------------------------------------------------------
; Pratice Mode detection
; Author: Winane
; Desription: Detect Pratice mode in DOS, Lin and WinMugen. Fails with 1.0.
; Variables: 
;	- var(59): No description available
;	- var(7): Power value save
;---------------------------------------------------------------------------
[State -2, Increment]
type = VarAdd
trigger1 = var(59)=[0,33]
trigger1 = StateNo!=5900
var(59) = 1
IgnoreHitPause = 1

[State -2, Training Mode?]
type = VarSet
trigger1 = power=const(data.power) && !var(7)
trigger1 = var(59)=31 || var(59)=1
trigger1 = NumEnemy<2 && !NumPartner
trigger1 = RoundNo=1 && MatchNo=1 && ID=[32,33]
trigger1 = life=[const(data.life)-1,const(data.life)]
trigger1 = RoundState<3
var(59) = -2147483648
IgnoreHitPause = 1

[State -2, Not Training Mode?]
type = VarSet
triggerall = var(59)<31
trigger1 = NumEnemy>1 || NumPartner
trigger2 = MatchNo>1 || RoundNo>1
trigger3 = RoundState>2 || ID!=[32,33]
var(59) = 31
IgnoreHitPause = 1

[State -2, PrevPower]
type = VarSet
trigger1 = var(59)=[1,30]
var(7) = power
IgnoreHitPause = 1

; ONLY if desired:
[State -2, Start Full]
type = null ; PowerSet
triggerall = RoundNo=1; or !RoundsExisted, if you want to be a little cheaper in turns mode; (or omit this line entirely, if player starts every round with full power)
trigger1 = var(59)=31
trigger2 = StateNo=5900
trigger2 = var(59)=34
value = const(data.power)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Corner push method 
; Author: YongMing 
; Description: Apply a custom cornerpush value to root.
; Variables: 
;	- fvar(17) > 0 =  Vel X to apply to root
;---------------------------------------------------------------------------
[State -2, CheckVelPart1]
type = Varset
triggerall = NumTarget 
triggerall = (Target, BackEdgeBodyDist <= 0) || (Target, FrontEdgeBodyDist <= 0)
triggerall = Target, MoveType = H
triggerall = Target, GetHitVar(yvel) = 0
trigger1 = Target, StateType = S
trigger2 = Target, StateType = C
fvar(17) = ifelse(Target, BackEdgeBodyDist <= 0,(Target, Vel X),-(Target, Vel x))
ignorehitpause = 1

[State -2, CheckVelPart2]
type = Varset
triggerall = NumTarget
triggerall = (Target, BackEdgeBodyDist <= 0) || (Target, FrontEdgeBodyDist <= 0)
triggerall = Target, MoveType = H
triggerall = Target, GetHitVar(HitShakeTime) = 0
triggerall = Target, GetHitVar(yvel) = 0
triggerall = fvar(17) = 0
trigger1 = Target, StateNo = 5000
trigger2 = Target, StateNo = 5010
trigger3 = Target, StateNo = 150
trigger4 = Target, StateNo = 152
fvar(17) = ifelse(Facing = -1 && Target, BackEdgeBodyDist <= 0, Target, GetHitVar(XVel),- Target, GetHitVar(XVel))
ignorehitpause = 1

[State -2, ApplyCornerPush]
type = PosAdd
triggerall = fvar(17) != 0 && Vel Y = 0
trigger1 = !((StateNo = 6000 || StateNo = 6001) && Time < 30)       ; Ultra Argentina Backbreaker (KOF02 mode)
trigger1 = !((StateNo = 6075 || StateNo = 6076) && Time < 30)       ; Ultra Argentina Backbreaker (Retro mode)
trigger1 = !((StateNo = 6100 || StateNo = 6101) && Time < 30)       ; Ultra Argentina Backbreaker (SDM)
trigger1 = !(StateNo = 3000 && AnimElem = 3,>=0 && AnimElem = 4,<0) ; Running Tree (KOF02 mode)
trigger1 = !(StateNo = 3100 && AnimElem = 3,>=0 && AnimElem = 4,<0) ; Running Tree (Retro mode)
trigger1 = !(StateNo = 4500 && AnimElem = 3,>=0 && AnimElem = 7,<4) ; Mega Running Spark
x = fvar(17)

[State -2, ResetCornerPush]
type = Varset
trigger1 = 1
fvar(17) = 0

;---------------------------------------------------------------------------
; Custom KO voice sound system
; Author: Scal
; Description: Create a helper that handles the right KO voice sound.
;              Require not to put default KO sound at 11,0.
;---------------------------------------------------------------------------
[State -2, HelperKOSound]
type = Helper
trigger1 = !Alive				; Not alive
trigger1 = !NumHelper(5131)		; Not in cheese KO
helpertype = normal
name = "HelperKOSound"
ID = 5131
pos = 0,0
postype = p1
stateno = 5131
keyctrl = 0
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

;---------------------------------------------------------------------------
; Debug display
; Author: Scal
; Description: Define several var sets to display in order to debug.
;---------------------------------------------------------------------------
[State -2, DebugDisplayMain]
type = DisplayToClipBoard
trigger1 = 0
text= "[Main] P2Dist= %3.3f, %3.6f - ScreenPos: %3.3f, %3.3f - Misc: %d"
params = (P2Dist X), (P2BodyDist Y), (ScreenPos X), (Pos Y), (var(9))
ignorehitpause = 1

[State -2, DebugDisplayVelocities]
type = AppendToClipBoard
trigger1 = 0
text= "\n[Velocities] Values=%03.6f, %03.6f"
params = (Vel X), (Vel Y)
ignorehitpause = 1

[State -2, DebugDisplayConfig]
type = AppendToClipBoard
trigger1 = 0
text= "\n[Config] Game=%d, ToggleGame=%d, Char=%d, Sounds=%d, SoundSet=%d"
params = (var(58)), (var(53)), (var(58)), (var(55)), (var(54))
ignorehitpause = 1

[State -2, DebugDisplayJuggleSystem1]
type = AppendToClipBoard
trigger1 = 1
text= "\n[Juggle System] Juggle=%d, Counter=%02d, P2Hit=%d, LastHit=%04d, NoInfinite=%d"
params = (var(28)), (var(10)), (var(22)), (var(27)), (var(31))
ignorehitpause = 1

[State -2, DebugDisplayJuggleSystem2]
type = AppendToClipBoard
trigger1 = 1
text= "\nLASTHIT=%d"
params = (var(27))
ignorehitpause = 1

[State -2, ProductionDisplay]
type = DisplayToClipBoard
trigger1 = 1
text= "by OrochiKOF97 & Scal, Version 1.0.0.0"
ignorehitpause = 1

;---------------------------------------------------------------------------
; Drop Sounds ; TODOS
;---------------------------------------------------------------------------
[State -2, DropSound]
type = PlaySnd
triggerall = NumEnemy
trigger1 = P2StateNo = 964
trigger1 = Enemy, Time = 1 ; Flash Elbow
trigger2 = P2StateNo = 6124
trigger2 = Enemy, Time = 1 ; UAB SDM
value = S1,19
channel = 2
persistent = 0

[State -2, GroundWave] ; on UAB SDM finisher
type = Explod
triggerall = NumEnemy 
triggerall = Enemy, Time = 1
trigger1 = P2StateNo = 6124
anim = 7030
pos = 2,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1

;---------------------------------------------------------------------------
; Flashing Elbow variables handler
; Author: OrochiKOF97
; Description: Reset Flashing Elbow variables, detection and limitation
; 	- var(7): 0 = do nothing, 1 = Go to Flashing Elbow
; 	- var(12): 0 = do nothing, > 0 = limit Flashing Elbow
;---------------------------------------------------------------------------
[State -2, ResetElbowDetection]
type = VarSet
trigger1 = P2StateNo = 964
trigger2 = StateNo = 0 ; KOF 2002 : if launched late, Clark will simply run & stop.
var(7) = 0

[State -2, ResetElbowLimiter] 
type = VarSet
trigger1 = StateNo = 0
var(12) = 0

;---------------------------------------------------------------------------
; Throw Guard Limitation after guarded move
; Author: OrochiKOF97
; Description: Disable throw after a moveguarded normal move.
; Variables:
;	- var(24): 0 = no throw limitation, > 0 = throw limitation
;---------------------------------------------------------------------------
[State -2, DetectGuardedNormalMove]
type = VarSet
trigger1 = MoveGuarded			; If a move has been guarded
trigger1 = Stateno = [200,700]  ; From basic moves
var(24) = 30
ignorehitpause = 1

[State -2, DecreaseVar]
type = VarAdd
trigger1 = var(24) > 0
var(24) = -1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Throw Limiter
; Author: Sorrow Edge
; Description: Disable throw after:
;             	- a normal move that has hit opponent
;             	- a special move that has been in contact with opponent
; Variables:
;	- var(13): 0 = no throw limitation from normal moves , > 0 = limitation
;	- var(14): 0 = no throw limitation from special moves , > 0 = limitation
;---------------------------------------------------------------------------
; No basic attack to normal throw combo
[State -2, NormalMoves]
type = VarSet
trigger1 = HitDefAttr = SCA, NA, AP && MoveContact
var(13) = 23
ignorehitpause = 1 

[State -2, NormalMovesDecrease]
type = VarAdd
trigger1 = var(13) > 0
var(13) = -1
ignorehitpause = 1 

; No jump attack to special grab combo, KOF02 style.
[State -2, SpecialThrow]
type = VarSet
trigger1 = MoveGuarded
trigger2 = StateType = A && MoveType = A && MoveContact 
var(14) = 15
ignorehitpause = 1 

[State -2, SpecialThrowDecrease]
type = VarAdd
trigger1 = var(14) > 0
var(14) = -1
ignorehitpause = 1

;---------------------------------------------------------------------------
; KOF Damage Scaling System
; Author: OrochiKOF97
; Description: Damage dampener (disable)
; Variables:
;	- var(15):	< 5 = no damage scale, >= 5 = damage scaling
;---------------------------------------------------------------------------
[State -2, ComboVariable]
type = null ; Varadd
trigger1 = Hitcount && MoveHit
var(15) = movehit
persistent = 0

[State -2, NoScaleDamages]
type = AttackMulSet
trigger1 = !var(9)
trigger1 = var(15) < 5
value = 1

[State -2, ScaleDamages]
type = AttackMulSet
trigger1 = !var(9)
trigger1 = var(15) >=  5
value = .9

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
[Statedef -3]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; KOF 2002 Hit Sound System
; Author: OrochiKOF97
; Description: Randomize the sound number
; Variables:
;	- var(2): Random sound for weak punch moves
;	- var(3): Random sound for weak kick moves
;	- var(4): Random sound for fierce punch moves
;	- var(5): Random sound for fierce kick moves
;---------------------------------------------------------------------------
[State -3, WeakPunchHitSound]
type = VarRandom
trigger1 = 1
v = 2
range = 0,2

[State -3, WeakKickHitSound]
type = VarRandom
trigger1 = 1
v = 3
range = 3,5

[State -3, FiercePunchHitSound]
type = VarRandom
trigger1 = 1
v = 4
range = 6,8

[State -3, FierceKickHitSound]
type = VarRandom
trigger1 = 1
v = 5
range = 9,11

;---------------------------------------------------------------------------
; Get Up Invincibility
; Author: OrochiKOF97
; Description: The tick invincibility is a workaround for a KOF feature 
;              where characters performing a throw move right after getting 
;              up would not make them enter their stance (like a direct 
;              shortcut). The tick makes up for the stance entrance & exit.
;---------------------------------------------------------------------------
[State -3, Invincibility]
type = NotHitBy
trigger1 = StateNo = 5120
trigger2 = PrevStateNo = 5120
trigger2 = StateNo = 0 && Time < 2
value = SCA

;---------------------------------------------------------------------------
; Get Hit Sounds
; Author: Based on OrochiKOF97 method, adapted by Scal.
; Description: Play gehit sounds
; Variables:
;	- var(21): Store the move specification that has hit the root
;---------------------------------------------------------------------------
; Reset detection
[State -3, GetEnnemyMoveType]
type = VarSet
trigger1 = !Alive
var(21) = 0
ignorehitpause = 1

; Get ennemy move type (normal, special or hyper)
[State -3, GetEnnemyMoveType]
type = VarSet
trigger1 = NumEnemy
trigger1 = Alive
trigger1 = StateNo = 5000 || StateNo = 5020 || StateNo = 5070
trigger1 = !Time 
var(21) = ifelse((Enemy, hitdefattr = SCA, NA, NP), 1, ifelse((Enemy, hitdefattr = SCA, SA, SP),2,0))
ignorehitpause = 1

; Normal / basic moves
;----------------------
; Non fall, weak
[State -3, LightGetHitNormalSound]
type = PlaySnd
triggerall = var(21) = 1 && Time = 1
triggerall = !(Random % 3)
trigger1 = StateNo = 5001 && Anim = 5000
trigger2 = StateNo = 5001 && Anim = 5010
trigger3 = StateNo = 5011 && Anim = 5020 
trigger4 = StateNo = 5020 && Anim = 5030
value = ifelse(var(54),1000,0),4
channel = 1
ignorehitpause = 1

; Non fall, medium
[State -3, MediumGetHitNormalSound]
type = PlaySnd
triggerall = var(21) = 1 && Time = 1
triggerall = !(Random % 3)
trigger1 = StateNo = 5001 && Anim = 5001
trigger2 = StateNo = 5001 && Anim = 5011
trigger3 = StateNo = 5011 && Anim = 5021 
trigger4 = StateNo = 5020 && Anim = 5030
value = ifelse(var(54),1000,0),5
channel = 1
ignorehitpause = 1

; Non fall, hard
[State -3, HardGetHitNormalSound]
type = PlaySnd
triggerall = var(21) = 1 && Time = 1
triggerall = !(Random % 3)
trigger1 = StateNo = 5001 && Anim = 5002
trigger2 = StateNo = 5001 && Anim = 5012
trigger3 = StateNo = 5011 && Anim = 5022 
trigger4 = StateNo = 5020 && Anim = 5030
value = ifelse(var(54),1000,0),5
channel = 1
ignorehitpause = 1

; Fall or tripped
[State -3, FallOrTrippedGetHitNormalSound]
type = PlaySnd
triggerall = var(21) = 1 && Time = 1
triggerall = (Random % 2)
trigger1 = StateNo = 5000 && Anim = 5030
trigger2 = StateNo = 5000 && Anim = [5051,5052]
trigger3 = StateNo = 5070
trigger4 = StateNo = 5020 && Anim = 5030
value = ifelse(var(54),1000,0),5
channel = 1
ignorehitpause = 1

; Special moves
;---------------
; Non fall
[State -3, NonFallGetHitSpecialSound]
type = PlaySnd
triggerall = var(21) = 2 && Time = 1
triggerall = !(Random % 3)
trigger1 = StateNo = 5001
trigger2 = StateNo = 5001
trigger3 = StateNo = 5011
trigger4 = StateNo = 5020 && Anim = 5030
value = ifelse(var(54),1000,0),ifelse(var(54),5,6)
channel = 1
ignorehitpause = 1

; Fall or tripped
[State -3, FallOrTrippedGetHitSpecialSound]
type = PlaySnd
triggerall = var(21) = 2 && Time = 1
triggerall = (Random % 2)
trigger1 = StateNo = 5000 && Anim = 5030
trigger2 = StateNo = 5000 && Anim = [5051,5052]
trigger3 = StateNo = 5070
trigger4 = StateNo = 5020 && Anim = 5030
value = ifelse(var(54),1000,0),ifelse(var(54),5,6)
channel = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Shadow Removal If Hit (AfterImages on Running Three)
;---------------------------------------------------------------------------
[State -3, Shadows]
type = AfterImageTime
triggerall = Time = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
time = 0

;---------------------------------------------------------------------------
; Guard Crush System 
; Author: Based on OrochiKOF97 method, adapted by Scal
; Description: Calculate the Guard Crush gauge value
; Variables: 
;	- var(11) Guard Crush gauge value
;---------------------------------------------------------------------------
[State -3, StandingWeakAndMediumNormalMoves]
type = VarAdd
triggerall = NumEnemy
triggerall = !(Enemy,StateType = A)
triggerall = !(Enemy, HitDefAttr = SCA, HA, HP)
triggerall = !(Enemy, HitDefAttr = SCA, SA, SP)
triggerall = (GetHitVar(slidetime) = [1,16]) && (GetHitVar(hittime) = [1,16])
triggerall = !Time && var(11) < 102
trigger1 = (StateNo = 150 || StateNo = 152)
var(11) = ifelse((Gethitvar(slidetime) = [1,9]),5,7)
persistent = 0
ignorehitpause = 1 

[State -3, StandingFierceNormalMoves]
type = VarAdd
triggerall = NumEnemy
triggerall = !(Enemy,StateType = A)
triggerall = !(Enemy, HitDefAttr = SCA, HA, HP)
triggerall = !(Enemy, HitDefAttr = SCA, SA, SP)
triggerall = GetHitVar(slidetime) >=  17 && GetHitVar(hittime) >=  17
triggerall = !Time && var(11) < 102
trigger1 = (StateNo = 150 || StateNo = 152)
var(11) = ifelse((PrevStateNo = [150,156]),5,9)
persistent = 0
ignorehitpause = 1

[State -3, JumpingWeakAndMediumNormalMoves]
type = VarAdd
triggerall = NumEnemy
triggerall = Enemy,StateType = A
triggerall = !(Enemy, HitDefAttr = SCA, HA, HP)
triggerall = !(Enemy, HitDefAttr = SCA, SA, SP)
triggerall = (GetHitVar(slidetime) = [1,16]) && (GetHitVar(hittime) = [1,16])
triggerall = !Time && var(11) < 102
trigger1 = (StateNo = 150 || StateNo = 152)
var(11) = ifelse((Gethitvar(slidetime) = [1,9]),6,9)
persistent = 0
ignorehitpause = 1 

[State -3, JumpingFierceNormalMoves]
type = VarAdd
triggerall = NumEnemy
triggerall = Enemy,StateType = A
triggerall = !(Enemy, HitDefAttr = SCA, HA, HP)
triggerall = !(Enemy, HitDefAttr = SCA, SA, SP)
triggerall = GetHitVar(slidetime) >=  17 && GetHitVar(hittime) >=  17
triggerall = !Time && var(11) < 102
trigger1 = (StateNo = 150 || StateNo = 152)
var(11) = 11
persistent = 0
ignorehitpause = 1

[State -3, SpecialMoves] ; Arranged... this is MUGEN...
type = VarAdd
triggerall = NumEnemy
triggerall = (Enemy, HitDefAttr = SCA, SA, SP)
triggerall = !Time && var(11) < 102
triggerall = !(Random%3)
trigger1 = (StateNo = 150 || StateNo = 152)
var(11) = ifelse((PrevStateNo = [150,156]),6,10)
persistent = 0
ignorehitpause = 1

[State -3, GoToGuardCrush]
type = ChangeState
trigger1 = !Time && var(11) >=  102
trigger1 = (StateNo = 150 || StateNo = 152) 
value = 950
ctrl = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Vulcano Punch detection
; Author: Scal
; Description: Detect vulcano punch button commands.
;---------------------------------------------------------------------------
[State -3, VulcanPunchDetection]
type = Explod
triggerall = !(Command = "roll" || Command = "knockdown")
trigger1 = Command = "vpunch_x" || Command = "vpunch_y"
id = 1605
anim = 1605

;---------------------------------------------------------------------------
; Walk disabler
; Description: Disable walk one opponent is dying.
; Author: Scal
;---------------------------------------------------------------------------
[State -3, NoWalk]
type = AssertSpecial
trigger1 = RoundState > 2
flag = noWalk

;---------------------------------------------------------------------------
; Normal moves auto recover system
; Author: Vans
; Description: Force the opponent to recover when hits by a basic move.
; Variables:
;	- var(26): 0 = do not force opponent recovery, 1= force opponent 
;	               recovery
;---------------------------------------------------------------------------
[State -3, SetRecoverFlag]
type = VarSet
triggerall = P2MoveType = H && P2StateType = A
triggerall = MoveHit = 1
trigger1 = (StateNo = [200,799])        ; From basic attacks
trigger1 = StateNo != 203               ; Not from Stomping
trigger1 = StateNo != [250,251]         ; Not form Standing CD (both modes)
trigger1 = Stateno != [704,705]         ; Not from Guard Cancel CDs (both modes)
trigger1 = StateNo != [255,256]         ; Not form Dodge Attack
trigger1 = Stateno != 440               ; Not from Crouching fierce kick
trigger1 = Stateno != [300,301]         ; Not from Jumping CDs (both modes)
var(26) = 1
ignorehitpause = 1

[State -3, SendTargetToRecover]
type = TargetState
triggerall = NumTarget
triggerall = var(26)
trigger1 = (Target, StateNo) = 5050
trigger1 = (Target, Alive)
value =  8400

[State -3, ResetRecoverFlag]
type = VarSet
triggerall = var(26)
trigger1 = NumTarget
trigger1 = (Target, StateNo) = 5040
trigger2 = !NumTarget
var(26) = 0
