;-=========================================================================-
; * Character:          Clark Steel
; * From :              The King of Fighters 98 (c) SNK/SNK Playmore
; * Mugen converter:    OrochiKOF97 & Scal
; * Contents:           Basic/Normal moves
;-=========================================================================-

;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
; Standing moves
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------

;--------------------------------------------------------------------------
; Standing weak punch
;--------------------------------------------------------------------------
[Statedef 200]
type = S                      
movetype = A                      
physics = S                      
juggle = 8
velset = 0,0                     
ctrl = 0                         
anim = 200                       
sprpriority = 2 
facep2 = 1

[State 200, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 200, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),0

[State 200, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = S,NA
guardflag = M
hitflag = MAF
priority = 6,Hit
sparkno = S7010
guard.sparkno = S7000
sparkxy = -16,-96
hitsound = S2, var(2)
guardsound = S1,7
animtype = Light
ground.type = High
pausetime = 8, 9
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 8,7
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 49,0

[State 200, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 200, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing weak punch (Close) (Retro mode) 
;--------------------------------------------------------------------------
[Statedef 204]
type = S                      
movetype = A                      
physics = S                      
juggle = 8
velset = 0,0                     
ctrl = 0                         
anim = 204                       
sprpriority = 2 
facep2 = 1

[State 204, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 204, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),0

[State 204, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = S,NA                     
guardflag = M                   
hitflag = MAF                    
priority = 6,Hit                
sparkno = S7010                  
guard.sparkno = S7000            
sparkxy = -20,-80
hitsound = S2, var(2)
guardsound = S1,7                               
pausetime = 8, 9                 
animtype = Medium                 
ground.type = High               
ground.slidetime = 9
ground.hittime = 9              
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 8,7
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back                  
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 39,0                   

[State 204, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 204, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing weak kick (KOF98 mode)
;--------------------------------------------------------------------------
[Statedef 201]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 201
sprpriority = 2
facep2 = 1

[State 201, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 201, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random % 2)
value = ifelse(var(54),1000,0),0

[State 201, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = S,NA
hitflag = MAF                    
guardflag = M
priority = 6,Hit
sparkno = S7010
guard.sparkno = S7000            
sparkxy = -16,-48
hitsound = S2,var(3)
guardsound = S1,7
animtype = Light
ground.type = Low
pausetime = 8,9
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 8,7
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 49,0

[State 201, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 201, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing weak kick (Retro mode)
;--------------------------------------------------------------------------
[Statedef 205]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 205
sprpriority = 2
facep2 = 1

[State 205, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 205, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random % 2)
value = ifelse(var(54),1000,0),0

[State 205, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = (AnimElem = 2 || AnimElem = 3) && !MoveContact
attr = S,NA
hitflag = MAF                    
guardflag = M
priority = 6,Hit
sparkno = S7010
guard.sparkno = S7000            
sparkxy = 0,-88
hitsound = S2,var(3)
guardsound = S1,7
animtype = Light
ground.type = Low
pausetime = 8,8
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 8,7
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 49,0

[State 205, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 205, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Close knee attack (KOF98 Mode)
;--------------------------------------------------------------------------
[Statedef 202]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 202
sprpriority = 2
facep2 = 1

[State 202, Movesound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 202, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random % 2)
value = ifelse(var(54),1000,0),0

[State 202, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = S,NA
hitflag = MAF                    
guardflag = M
priority = 6,Hit
sparkno = S7010
guard.sparkno = S7000            
sparkxy = 0,-48
hitsound = S2,var(3)
animtype = Medium
ground.type = Low
guardsound = S1,7
pausetime = 8,9
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 8,7
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 49,0

[State 202, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 202, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Close knee attack (Retro Mode)
;--------------------------------------------------------------------------
[Statedef 207]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 207
sprpriority = 2
facep2 = 1

[State 207, Movesound]
type = PlaySnd
trigger1 = !Time 
value = 1, 1

[State 207, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random % 2)
value = ifelse(var(54),1000,0),0

[State 207, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = (AnimElem = 2 || AnimElem = 3) && !MoveContact
attr = S,NA
hitflag = MAF                    
guardflag = M
priority = 6,Hit
sparkno = S7010
guard.sparkno = S7000            
sparkxy = -8,-72
hitsound = S2,var(3)
animtype = Medium
ground.type = Low
guardsound = S1,7
pausetime = 8,9
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 8,7
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 49,0

[State 207, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 207, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Stomping (Forward + Weak Kick)
;--------------------------------------------------------------------------
[Statedef 203]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 203
sprpriority = 2
facep2 = 1

[State 203, MoveSound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1

[State 203, VoiceSound]
type = PlaySnd
trigger1 = !Time
value = ifelse(var(54),1000,0),1

[State 203, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 5
attr = S,NA
guardflag = M
priority = 5,Hit
sparkno = S7010
guard.sparkno = S7000            
sparkxy = -20,-48
hitsound = S2,9
guardsound = S1,7
animtype = Hard
ground.type = Low
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -4.5, -7
air.hittime = 12
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .5
getpower = 91,91
givepower = 15,15
damage = 118,0

[State 203, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing Fierce Punch (far)
;--------------------------------------------------------------------------
[Statedef 210]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2
facep2 = 1

[State 210, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 210, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 210, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 4
attr = S,NA
guardflag = M
priority = 5,Hit
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -20,-96
hitsound = S2,var(4)
guardsound = S1,7
animtype = Hard
ground.type = High
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 98,0

[State 210, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 210, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing Fierce Punch (close - 2 hits)
;--------------------------------------------------------------------------
[Statedef 211]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 211
sprpriority = 2
facep2 = 1

[State 211, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 211, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 211,Hit1]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 3
attr = S,NA
priority = 5,Hit
guardflag = M
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -24,-96
hitsound = S2,var(4)
guardsound = S1,7
animtype = Hard
ground.type = High
pausetime = 9,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 98,0

[State 211,Hit2]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 4
attr = S,NA
guardflag = M
priority = 5,Hit
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -12,-66
hitsound = S2,var(4)
guardsound = S1,7
animtype = Hard
ground.type = High
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = ifelse(MoveHit,39,88),0

[State 211, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 211, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing Fierce Kick (far) (KOF98 mode)
;--------------------------------------------------------------------------
[Statedef 240]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 215
sprpriority = 2
facep2 = 1

[State 240, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 240, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 240, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 5
attr = S,NA
hitflag = MAF                    
guardflag = M
priority = 5,Hit
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -20,-96
hitsound = S2,var(5)
guardsound = S1,7
animtype = Hard
ground.type = High
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.hittime = 12
air.velocity = -3.8, -7
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 127,0

[State 240, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 240, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing Fierce Kick (close) (KOF98 mode)
;--------------------------------------------------------------------------
[Statedef 241]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 216
sprpriority = 2
facep2 = 1

[State 241, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 241, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 241, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 6
attr = S,NA
hitflag = MAF                    
guardflag = M
priority = 5,Hit
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -16,-96
hitsound = S2,var(5)
guardsound = S1,7
animtype = Hard
ground.type = High
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.hittime = 12
air.velocity = -3.8, -7
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 108,0

[State 241, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 7
movetype = I

[State 241, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing Fierce Kick (close) (Retro mode)
;--------------------------------------------------------------------------
[Statedef 242]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 218
sprpriority = 2
facep2 = 1

[State 242, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 242, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 242, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 3
attr = S,NA
hitflag = MAF                    
guardflag = M
priority = 5,Hit
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -16,-96
hitsound = S2,var(5)
guardsound = S1,7
animtype = Hard
ground.type = High
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.hittime = 12
air.velocity = -3.8, -7
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 108,0

[State 242, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 242, GoForward1]
type = PosAdd
trigger1 = AnimElem = 5
x = 4

[State 242, GoForward2]
type = PosAdd
trigger1 = AnimElem = 6
x = 13

[State 242, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing Fierce Kick (far) (Retro mode)
;--------------------------------------------------------------------------
[Statedef 244]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 219
sprpriority = 2
facep2 = 1

[State 244, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 244, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 244, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 5
attr = S,NA
hitflag = MAF                    
guardflag = M
priority = 5,Hit
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -16,-74
hitsound = S2,var(5)
guardsound = S1,7
animtype = Hard
ground.type = High
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.hittime = 12
air.velocity = -3.8, -7
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 127,0

[State 244, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 244, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing Knockdown Kick (Stand C+D) (KOF98 mode)
;--------------------------------------------------------------------------
[Statedef 250]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 217
sprpriority = 2
facep2 = 1

[State 250, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 250, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),2

[State 250, Hit]
type = Hitdef
trigger1 = var(22)
trigger1 = AnimElem = 7
id = 250
attr = S,NA
hitflag = MA
guardflag = M
air.animtype = Back
priority = 4,Hit
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -20,-96
hitsound = S1,8
guardsound = S1,7
pausetime = 12,13
ground.velocity = -4.6, -7
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 21
guard.hittime = 21
guard.velocity = -14.90625
guard.cornerpush.veloff = 0
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
getpower = 167,167
givepower = 15,15
damage = 147,0

[State 250, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 8
movetype = I

[State 250, PosAdd1]
type = PosAdd
trigger1 = AnimElem = 2
x = 6

[State 250, PosAdd2]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
x = 8

[State 250, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing Knockdown Kick (Stand C+D) (Retro mode)
;--------------------------------------------------------------------------
[Statedef 251]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
velset = 0,0
anim = 212
sprpriority = 2
facep2 = 1

[State 251, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 251, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),2

[State 251, Hit]
type = Hitdef
trigger1 = var(22)
trigger1 = AnimElem = 4
id = 250
attr = S,NA
hitflag = MA
guardflag = M
air.animtype = Back
priority = 4,Hit
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -20,-96
hitsound = S1,8
guardsound = S1,7
pausetime = 12,13
ground.velocity = -4.6, -7
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 21
guard.hittime = 21
guard.velocity = -14.90625
guard.cornerpush.veloff = 0
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
getpower = 167,167
givepower = 15,15
damage = 147,0

[State 251, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 251, PosAdd1]
type = PosAdd
trigger1 = AnimElem = 2,=0 || AnimElem = 3,=0
trigger2 = AnimElem = 4,=0 || AnimElem = 5,=0
x = 4

[State 251, PosAdd2]
type = PosAdd
trigger1 = AnimElem = 6,=0
x = 2

[State 251, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Dodge attack (KOF98 mode)
;--------------------------------------------------------------------------
[Statedef 255]
type = S
movetype = A
physics = S
anim = 213
velset = 0,0
ctrl = 0
sprpriority = 2
facep2 = 1
juggle = 8

[State 255, UnbufferDodgeAttack]
type = VarSet
trigger1 = !Time
var(29) = 0

[State 255, NoHit]
type = NotHitBy
trigger1 = AnimElem = 2,<0
value = ,AA,AP

[State 255, NoPush]
type = PlayerPush
trigger1 = AnimElem = 2,<0
value = 0

[State 255, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 6
attr = S,NA
hitflag = MAF
guardflag = M
priority = 5,Hit
sparkno = S7015                  
guard.sparkno = S7005
sparkxy = -20,-86
hitsound = S2,var(5)
guardsound = S1,7
animtype = Hard
ground.type = High
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .546875
getpower = 91,91
givepower = 15,15
damage = 49,0

[State 255, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 7
movetype = I

[State 255, GoToStand]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 0

;--------------------------------------------------------------------------
; Dodge attack (Retro mode)
;--------------------------------------------------------------------------
[Statedef 256]
type = S
movetype = A
physics = S
anim = 214
velset = 0,0
ctrl = 0
sprpriority = 2
facep2 = 1
juggle = 8

[State 256, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = S,NA
hitflag = MAF
guardflag = M
priority = 5,Hit
sparkno = S7015                  
guard.sparkno = S7005
sparkxy = -20,-106
hitsound = S2,var(4)
guardsound = S1,7
animtype = Hard
ground.type = High
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 35
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .546875
getpower = 91,91
givepower = 15,15
damage = 49,0

[State 256, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 256, GoToStand]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 0

;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
; Crouching moves
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------

;--------------------------------------------------------------------------
; Crouching Weak Punch
;--------------------------------------------------------------------------
[Statedef 400]
type = C
movetype = A
physics = C
juggle = 8
ctrl = 0
anim = 220
sprpriority = 2
velset = 0,0
facep2 = 1

[State 400, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 400, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),0

[State 400, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = C,NA
priority = 6,Hit
hitflag = MAF
guardflag = M
sparkno = S7010                  
guard.sparkno = S7000
sparkxy = -20,-48
hitsound = S2, var(2)                
guardsound = S1,7
animtype = Light
ground.type = Low
pausetime = 8,9
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 8,7
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 39,0

[State 400, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 400, GoToCrouch]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
; Crouching Weak Kick
;--------------------------------------------------------------------------
[Statedef 430]
type = C
movetype = A
physics = C
juggle = 8
ctrl = 0
anim = 225
sprpriority = 2
velset = 0,0
facep2 = 1

[State 430, Movesound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 430, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),0

[State 430, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = C,NA
hitflag = MAF
guardflag = L
priority = 6,Hit
sparkno = S7010            
guard.sparkno = S7000
sparkxy = -20,-8
hitsound = S2,var(3)
guardsound = S1,7
animtype = Light
ground.type = Low
pausetime = 8,9
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 8,7
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 39,0

[State 430, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 430, GoToCrouch]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
; Crouching Fierce Punch
;--------------------------------------------------------------------------
[Statedef 410]
type = C
movetype = A
physics = C
juggle = 8
ctrl = 0
anim = 230
sprpriority = 2
velset = 0,0
facep2 = 1

[State 410, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 410, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1
channel = 0

[State 410, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 3
attr = C,NA
hitflag = MAF
guardflag = M
priority = 5,Hit
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -20,-58
hitsound = S2,var(4)
guardsound = S1,7
animtype = Hard
ground.type = Low
pausetime = 12,13
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12 ; -11.1796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 98,0

[State 410, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 410, GoToCrouch]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
; Crouching Fierce Kick
;--------------------------------------------------------------------------
[Statedef 440]
type = C
movetype = A
physics = C
juggle = 8
ctrl = 0
anim = 235
sprpriority = 2
velset = 0,0
facep2 = 1

[State 440, MoveSound]
type = PlaySnd
trigger1 = !Time 
value = 1, 1

[State 440, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1
channel = 0

[State 440, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 3
attr = C,NA
hitflag = MAF
guardflag = L
priority = 5,Hit
sparkno = S7015
guard.sparkno = S7005
sparkxy = -20,-12
hitsound = S2,var(5)
guardsound = S1,7
ground.type = Trip
pausetime = 12,13
ground.velocity = -1.75, -10.175
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
guard.velocity =  -12 ; -11.1796875
air.velocity = -4.571,-7
air.hittime = 12
air.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 30
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = ifelse(!(EnemyNear,StateType=A),.8,.5)
getpower = 136,136
givepower = 15,15
damage = 118,0

[State 440, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 440, GoToCrouch]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
; Jump moves
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------

;--------------------------------------------------------------------------
; Jump Weak Punch (KOF98 mode)
;--------------------------------------------------------------------------
[Statedef 600]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 240
sprpriority = 2

[State 600, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 600, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),0

[State 600, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = A,NA
hitflag = MAF                    
guardflag = H
priority = 6,Hit
sparkno = S7010
sparkxy = -16,-52                
guard.sparkno = S7000            
hitsound = S2, var(2)  
guardsound = S1,7
animtype = Medium
ground.type = Low
pausetime = 12,13
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 59,0

[State 600, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 600, ThrowLimiter]
type = VarSet
trigger1 = var(9) <= 0 && movehit
var(14) = 15
persistent = 0

;--------------------------------------------------------------------------
; Jump Weak Punch (Retro mode)
;--------------------------------------------------------------------------
[Statedef 601]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 241
sprpriority = 2

[State 601, Movesound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 601, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),0

[State 601, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = A,NA
hitflag = MAF
guardflag = H
priority = 6,Hit
sparkno = S7010
sparkxy = -16,-52                
guard.sparkno = S7000            
hitsound = S2, var(2)                 
guardsound = S1,7
animtype = Medium
ground.type = Low
pausetime = 12,13
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 59,0

[State 601, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 601, ThrowLimiter]
type = VarSet
trigger1 = var(9) <= 0 && movehit
var(14) = 15
persistent = 0

;--------------------------------------------------------------------------
; Jump Fierce Punch (KOF98 mode)
;--------------------------------------------------------------------------
[Statedef 610]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 250
sprpriority = 2

[State 610, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 610, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 610, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 4
attr = A,NA
hitflag = MAF
guardflag = H
priority = 5,Hit
sparkno = S7010
guard.sparkno = S7005          
sparkxy = 0,-78
hitsound = S2,var(4)
guardsound = S1,7
animtype = Medium
ground.type = Low
pausetime = 12,13
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -12 ; -11.1796875
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 118,0

[State 610, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 610, ThrowLimiter]
type = VarSet
trigger1 = var(9) <= 0 && movehit
var(14) = 15
persistent = 0

;--------------------------------------------------------------------------
; Jump Neutral Fierce Punch (Retro mode)
;--------------------------------------------------------------------------
[Statedef 611]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 251
sprpriority = 2

[State 611, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 611, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 611, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 3
attr = A,NA
hitflag = MAF
guardflag = H
priority = 5,Hit
sparkno = S7010
guard.sparkno = S7005          
sparkxy = -16,-56
hitsound = S2,var(4)
guardsound = S1,7
animtype = Medium
ground.type = Low
pausetime = 12,13
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -12 ; -11.1796875
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 118,0

[State 611, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 611, ThrowLimiter]
type = VarSet
trigger1 = var(9) <= 0 && movehit
var(14) = 15
persistent = 0

;--------------------------------------------------------------------------
; Jump Non Neutral Fierce Punch (Retro mode)
;--------------------------------------------------------------------------
[Statedef 612]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 252
sprpriority = 2

[State 612, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 0

[State 612, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 612, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 4
attr = A,NA
hitflag = MAF
guardflag = H
priority = 5,Hit
sparkno = S7010
guard.sparkno = S7005          
sparkxy = -16,-56
hitsound = S2,var(4)
guardsound = S1,7
animtype = Medium
ground.type = Low
pausetime = 12,13
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -12 ; -11.1796875
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 108,0

[State 612, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 612, ThrowLimiter]
type = VarSet
trigger1 = var(9) <= 0 && MoveHit
var(14) = 15
persistent = 0

;--------------------------------------------------------------------------
; Jump Non neutral Weak Kick
;--------------------------------------------------------------------------
[Statedef 630]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 246
sprpriority = 2

[State 630, Movesound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 630, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),0

[State 630, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = A,NA
guardflag = H
priority = 6,Hit
sparkno = S7010
guard.sparkno = S7000
sparkxy = -20,-70
hitsound = S2,var(3)
guardsound = S1,7
animtype = Medium
ground.type = Low
pausetime = 12,13
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 49,0

[State 630, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 630, ThrowLimiter]
type = VarSet
trigger1 = var(9) <= 0 && movehit
var(14) = 15
persistent = 0

;--------------------------------------------------------------------------
; Jump Weak Kick (vertical)
;--------------------------------------------------------------------------
[Statedef 635]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 245
sprpriority = 2

[State 635, Movesound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 635, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),0

[State 635, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = A,NA
hitflag = MAF
guardflag = H
priority = 6,Hit
sparkno = S7010
guard.sparkno = S7000
sparkxy = -20,-80
hitsound = S2,var(3)
guardsound = S1,7
animtype = Medium
ground.type = Low
pausetime = 12,13
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 9
guard.hittime = 9
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 76,76
givepower = 15,15
damage = 69,0

[State 635, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 635, ThrowLimiter]
type = VarSet
trigger1 = var(9) <= 0 && movehit
var(14) = 15
persistent = 0

;--------------------------------------------------------------------------
; Jump Fierce Kick (vertical)
;--------------------------------------------------------------------------
[Statedef 640]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 255
sprpriority = 2

[State 640, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 640, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 640, Hit]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 5
attr = A,NA
hitflag = MAF
guardflag = H
priority = 5,Hit
sparkno = S7015
guard.sparkno = S7005          
sparkxy = -20,-70
hitsound = S2,var(5)
guardsound = S1,7
animtype = Medium
ground.type = Low
pausetime = 12,13
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -12 ; -11.1796875
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 118,0

[State 640, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 640, ThrowLimiter]
type = VarSet
trigger1 = var(9) <= 0 && movehit
var(14) = 15
persistent = 0

;--------------------------------------------------------------------------
; Jump Fierce Kick
;--------------------------------------------------------------------------
[Statedef 641]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 256
sprpriority = 2

[State 641, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 641, VoiceSound]
type = PlaySnd
trigger1 = Time = 2
value = ifelse(var(54),1000,0),1

[State 641, 3]
type = HitDef
trigger1 = var(22)
trigger1 = AnimElem = 2
attr = A,NA
guardflag = H
priority = 5,Hit
sparkno = S7015
sparkxy = -20,-80
guard.sparkno = S7005         
hitsound = S2,var(5)
guardsound = S1,7
animtype = Medium
ground.type = Low
pausetime = 12,13
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -5.796875
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -12 ; -11.1796875
air.animtype = Back
air.velocity = -3.8, -7
air.hittime = 12
air.cornerpush.veloff = 0
yaccel = .546875
getpower = 136,136
givepower = 15,15
damage = 118,0

[State 641, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 641, ThrowLimiter]
type = VarSet
trigger1 = var(9) <= 0 && movehit
var(14) = 15
persistent = 0

;--------------------------------------------------------------------------
; Air Knockdown Kick (Jump C+D) (KOF98 mode)
;--------------------------------------------------------------------------
[Statedef 300]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 300
sprpriority = 2

[State 300, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 300, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),2

[State 300, Hit]
type = Hitdef
trigger1 = var(22)
trigger1 = AnimElem = 3
id = 250
attr = A,NA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = Back
priority = 4,Hit
pausetime = 11, 13
guard.pausetime = 11, 11
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -20, -60
hitsound = S1,8
guardsound = S1,7
pausetime = 12,13
ground.velocity = -4.58, -7.25
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 21
guard.hittime = 21
guard.velocity = -14.90625
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -4.67, -7.25
air.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 30
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .518
getpower = 167,167
givepower = 15,15
damage = ifelse(PrevStateNo=50,137,98),0

[State 300, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I


;--------------------------------------------------------------------------
; Air Knockdown Kick (Jump C+D) (Retro mode)
;--------------------------------------------------------------------------
[Statedef 301]
type = A
movetype = A
physics = A
juggle = 8
ctrl = 0
anim = 301
sprpriority = 2

[State 301, MoveSound]
type = PlaySnd
trigger1 = !Time
value = 1, 1

[State 301, VoiceSound]
type = PlaySnd
trigger1 = Time = 2 && (Random%2)
value = ifelse(var(54),1000,0),2

[State 301, Hit]
type = Hitdef
trigger1 = var(22)
trigger1 = AnimElem = 3
id = 250
attr = A,NA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = Back
priority = 4,Hit
pausetime = 11, 13
guard.pausetime = 11, 11
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = -20, -60
hitsound = S1,8
guardsound = S1,7
pausetime = 12,13
ground.velocity = -4.58, -7.25
ground.cornerpush.veloff = 0
guard.pausetime = 12,11
guard.slidetime = 21
guard.hittime = 21
guard.velocity = -14.90625
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -4.67, -7.25
air.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 30
fall.xvelocity = -2 * var(18)
fall.yvelocity = -3.777
yaccel = .518
getpower = 167,167
givepower = 15,15
damage = ifelse(PrevStateNo=50,137,98),0

[State 301, SetIdle]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
; Grabs
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Slamming German (KOF98 mode)
;---------------------------------------------------------------------------
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 5

[State 800, GrabAttempt]
type = HitDef
trigger1 = !Time && var(13) <= 0
attr = S, NT          
hitflag = M-          
priority = 3, Miss    
sparkno = -1          
sprpriority = 1  
hitsound = -1
p2facing = 1          
p1stateno = 810       
P2StateNo = 820
ground.velocity = -6.5,-4.5
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 110
fall.xvelocity = -2
fall.yvelocity = -3.777
yaccel = .5

[State 800, GoToFiercePunch]
type = ChangeState
trigger1 = !Animtime
value = 211

;-------------------------------------
; Slamming German Success (KOF98 mode)
;-------------------------------------
[Statedef 810] 
type = S
movetype = A
physics = S
anim = 801

[State 810, ResetEvasion]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 810, DetectEvasion]
type = VarSet
triggerall = Time < 7
trigger1 = NumTarget
trigger1 = (Target, Command = "y") || (Target, Command = "z")
trigger1 = (Target, Command = "holdback") || (Target, Command = "holdfwd")
var(25) = 1

[State 810, ToOpponentEscape]
type = TargetState
trigger1 = NumTarget
trigger1 = Time < 7 && var(25)
value = 965

[State 810, Escaped]
type = ChangeState
trigger1 = NumTarget
trigger1 = Time < 7 && var(25)
value = 960

[State 810, Forward1]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
x = 16

[State 810, MakeSpace1]
type = Width
trigger1 = AnimElem = 3,=0
edge = 32,0

[State 810, MakeSpace2]
type = Width
trigger1 = AnimElem = 12,=0
edge = 104,0

[State 810, SendToBack]
type = SprPriority
trigger1 = AnimElem = 1
value = -1

[State 810, BringToFront]
type = SprPriority
trigger1 = AnimElem = 6
value = 2

[State 810, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 8,0

[State 810, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 0,0

[State 810, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -16,0

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -32,0

[State 810, Bind5]
type = TargetBind
trigger1 = AnimElem = 5,>=0 && AnimElem = 10,<0
pos = -48,0

[State 810, Bind6]
type = TargetBind
trigger1 = AnimElem = 10
pos = -24,-62

[State 810, Bind7]
type = TargetBind
trigger1 = AnimElem = 11
pos = -8,-68

[State 810, Bind8]
type = TargetBind
trigger1 = AnimElem = 12
pos = 42,-74 

[State 810, Bind9]
type = TargetBind
trigger1 = AnimElem = 13
pos = 78,-52

[State 810, NormalGrabSpark]
type = Explod
trigger1 = AnimElem = 6
anim = 7019
pos = -30,-83
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 810, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,23
channel = 1

[State 810, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 11
value = ifelse(var(54),1000,0),1
channel = 0

[State 810, LandSound]
type = PlaySnd
trigger1 = animelem = 15
value = 1,12
channel = 1

[State 810, GroundWave]
type = Explod
trigger1 = AnimElem = 15
anim = 7030
pos = 56,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 810, Forward2]
type = PosAdd
trigger1 = animelem = 18
x = 32

[State 810, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------------------------------
; Enemy Grabbed by Slamming German (KOF98 mode)
;-----------------------------------------------
[Statedef 820]
type = A
movetype = H 
physics = N
ctrl = 0

[State 820, MakeSpace]
type = Width
trigger1 = 1
edge = 0,0

[State 820, ScreenBound]
type = ScreenBound
Trigger1 = 1
value = 0

[State 820, GrabAnim]
type = ChangeAnim2
Trigger1 = !time
value = 810

[State 820, BringToFront]
type = SprPriority
trigger1 = Enemy, AnimElem = 1,=0
value = 2

[State 820, SendToBack]
type = SprPriority
trigger1 = Enemy, AnimElem = 6,=0
value = -1

[State 820, UpFly]
type = ChangeAnim
triggerall = !AnimTime
trigger1 = SelfAnimExist(5061)
value = 5061
persistent = 0

[State 820, BackFly]
type = ChangeAnim
triggerall = !AnimTime
trigger1 = !SelfAnimExist(5061)
value = 5050 + 10*(SelfAnimExist(5060))
persistent = 0

[State 820, Damage]
type = LifeAdd
Trigger1 = Anim != 810
value = -157
persistent = 0

[State 820, Fall]
type = SelfState
Trigger1 = Anim != 810
value = 5030

;---------------------------------------------------------------------------
; Fisherman Buster (KOF98 mode)
;---------------------------------------------------------------------------
[Statedef 790]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 5

[State 790, GrabAttempt]
type = HitDef
trigger1 = !Time && var(13) <=  0
attr = S, NT          
hitflag = M-          
priority = 3, Miss    
sparkno = -1          
sprpriority = 1  
hitsound = -1
p2facing = 1          
p1stateno = 791       
p2stateno = 795
ground.velocity = 4,-6.5
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 90
fall.xvelocity = 2
fall.yvelocity = -3.777
yaccel = .5

[State 790, GoToFierceKick]
type = ChangeState
trigger1 = !Animtime
value = 241

;--------------------------------------
; Fisherman Buster Success (KOF98 mode)
;--------------------------------------
[Statedef 791] 
type = S
movetype = A
physics = N
anim = 790
sprpriority = 1
velset = 0,0
ctrl = 0

[State 791, ResetEvasion]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 791, DetectEvasion]
type = VarSet
triggerall = Time < 7
trigger1 = NumTarget
trigger1 = (Target, Command = "b") || (Target, Command = "z")
trigger1 = (Target, Command = "holdback") || (Target, Command = "holdfwd")
var(25) = 1

[State 791, ToOpponentEscape]
type = TargetState
trigger1 = NumTarget
trigger1 = Time < 7 && var(25)
value = 965

[State 791, Escaped]
type = ChangeState
trigger1 = NumTarget
trigger1 = Time < 7 && var(25)
value = 960

[State 791, MakeSpace]
type = Width
trigger1 = AnimElem = 6,=0
edge = 0,40

[State 791, NormalGrabSpark]
type = Explod
trigger1 = AnimElem = 2
anim = 7019
pos = 16,-64
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 791, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 2,=0
value = 1,23

[State 791, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = ifelse(var(54),1000,0),1

[State 791, GroundWave]
type = Explod
trigger1 = AnimElem = 10
anim = 7030
pos = -32,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 791, LandSound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1,12

[State 791, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0

[State 791, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = -10,0

[State 791, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 23,-71

[State 791, Bind4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 13,-86

[State 791, Bind5]
type = TargetBind
trigger1 = AnimElem = 5
pos = -7,-99

[State 791, Bind6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -10,-100

[State 791, Bind7]
type = TargetBind
trigger1 = AnimElem = 7
pos = -20,-97

[State 791, Bind8]
type = TargetBind
trigger1 = AnimElem = 8
pos = -22,-94

[State 791, Bind9]
type = TargetBind
trigger1 = AnimElem = 9
pos = -23,-87

[State 791, Bind10]
type = TargetBind
trigger1 = AnimElem = 10
pos = -30,0

[State 791, Damage]
type = TargetLifeAdd
Trigger1 = AnimElem = 10
value = -157

[State 851, ShakeItBaby]
type = Envshake
trigger1 = AnimElem = 10
time = 10
freq = 70
ampl = -8

[State 791, StartVelX]
type = VelSet
trigger1 = AnimElem = 13
x = -9.75

[State 791, Friction]
type = VelMul
trigger1 = AnimElem = 13,>0 && Vel X
x = .8125

[State 791, StopVelX]
type = VelSet
trigger1 = AnimElem = 16,=1
x = 0

[State 791, NoCrossUp]
type = Width
trigger1 = Vel X
edge = 0,8

[State 791, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------------------------
; Enemy Grabbed by Fisherman Buster (KOF98 mode)
;------------------------------------------------
[Statedef 795]
type = A
movetype = H 
physics = N
ctrl = 0

[State 795, MakeSpace]
type = Width
trigger1 = 1
edge = 0,0

[State 795, ScreenBound]
type = ScreenBound
Trigger1 = 1
value = 0

[State 795, Custom Anim]
type = ChangeAnim2
Trigger1 = !Time
value = 795

[State 795, Forward]
type = PosAdd
Trigger1 = !Animtime
x = 10

[State 795, GoToFall]
type = SelfState
Trigger1 = !Animtime
value = 5000

;---------------------------------------------------------------------------
; Pyramid Driver (Retro mode)
;---------------------------------------------------------------------------
[Statedef 850]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 5

[State 850, Grab Attempt]
type = HitDef
trigger1 = !Time && var(13) <=  0
attr = S, NT          
hitflag = M-          
priority = 3, Miss    
sparkno = -1          
sprpriority = 1  
hitsound = -1
p2facing = 1          
p1stateno = 851       
p2stateno = 852
ground.velocity = -2.5,-6.5
ground.cornerpush.veloff = 0
fall = 1   
fall.recover = 1
fall.recovertime = 100
fall.xvelocity = -2
fall.yvelocity = -3.777
yaccel = .5

[State 850, GoToFiercePunch]
type = ChangeState
trigger1 = !Animtime
value = 211

;------------------------------------------
; Pyramid Driver Success (Retro mode)
;------------------------------------------
[Statedef 851] 
type = S
movetype = A
physics = N
anim = 851
sprpriority = 1

[State 851, ResetEvasion]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 851, DetectEvasion]
type = VarSet
triggerall = Time < 7
trigger1 = NumTarget
trigger1 = (Target, Command = "y") || (Target, Command = "z")
trigger1 = (Target, Command = "holdback") || (Target, Command = "holdfwd")
var(25) = 1

[State 851, ToOpponentEscape]
type = TargetState
trigger1 = NumTarget
trigger1 = Time < 7 && var(25)
value = 965

[State 851, Escaped]
type = ChangeState
trigger1 = NumTarget
trigger1 = Time < 7 && var(25)
value = 960

[State 851, Width1]
type = Width
trigger1 = !Time
edge = 64,0

[State 851, Width2]
type = Width
trigger1 = AnimElem = 6
edge = 0,56

[State 851, NormalGrabSpark]
type = Explod
trigger1 = AnimElem = 2
anim = 7019
pos = 48,-56
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 851, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = ifelse(var(54),1000,0),0

[State 851, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,23

[State 851, Bind01]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45,0

[State 851, Bind02]
type = TargetBind
trigger1 = AnimElem = 2
pos = 16,0

[State 851, Bind03]
type = TargetBind
trigger1 = AnimElem = 3
pos = 48,-80

[State 851, Bind04]
type = TargetBind
trigger1 = AnimElem = 4
pos = 40,-88

[State 851, Bind05]
type = TargetBind
trigger1 = AnimElem = 5
pos = 18,-120

[State 851, Bind06]
type = TargetBind
trigger1 = AnimElem = 6
pos = 10,-108

[State 851, Bind07]
type = TargetBind
trigger1 = AnimElem = 7
pos = 4,-128

[State 851, Bind08]
type = TargetBind
trigger1 = AnimElem = 8
pos = 0,-112

[State 851, Bind09]
type = TargetBind
trigger1 = AnimElem = 9
pos = 8,-110

[State 851, Bind10]
type = TargetBind
trigger1 = AnimElem = 10
pos = 2,-94

[State 851, Bind11]
type = TargetBind
trigger1 = AnimElem = 11
pos = -4,-74

[State 851, Bind12]
type = TargetBind
trigger1 = AnimElem = 12
pos = 0,-32

[State 851, Bind13]
type = TargetBind
trigger1 = AnimElem = 13
pos = 0,0

[State 851, ShakeItBaby]
type = Envshake
trigger1 = AnimElem = 13
time = 20
freq = 70
ampl = -8

[State 851, GroundImpactSound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,12

[State 851, GroundImpactWave]
type = Explod
trigger1 = AnimElem = 13
anim = 7030
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 0
ownpal = 1

[State 851, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 0,10

[State 851, BonesSound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,11

[State 851, StartVelX]
type = VelSet
trigger1 = AnimElem = 15,=0
x = -9.75

[State 851, Friction]
type = VelMul
trigger1 = AnimElem = 15,>0 && Vel X
x = .8125

[State 851, StopVelX]
type = VelSet
trigger1 = AnimElem = 19,=1
x = 0

[State 851, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------
; Thrown by Pyramid Driver (Retro mode)
;---------------------------------------
[Statedef 852]
type = A
movetype = H 
physics = N
ctrl = 0

[State 852, MakeSpace]
type = ScreenBound
trigger1 = 1
value = 0

[State 852, CustomAnim]
type = ChangeAnim2
trigger1 = !Time
value = 852

[State 852, Damage]
type = LifeAdd
Trigger1 = AnimElem = 13
value = -157

[State 852, BounceVel1]
type = VelSet
trigger1 = AnimElem = 14,=1
x = -2
y = -2

[State 852, BounceVel1]
type = VelAdd
trigger1 = Vel Y = -2
x = -.2

[State 852, PosSelfState]
type = PosSet
trigger1 = !AnimTime
y = 0

[State 852, GoToFall]
type = SelfState
Trigger1 = !Animtime
value = 5000

;---------------------------------------------------------------------------
; Throw D (Retro mode)
;---------------------------------------------------------------------------
[Statedef 875]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 5

[State 875, Grab Attempt]
type = HitDef
trigger1 = !Time && var(13) <=  0
attr = S, NT          
hitflag = M-          
priority = 3, Miss    
sparkno = -1          
sprpriority = 1  
hitsound = -1
p2facing = 1          
p1stateno = 876
p2stateno = 877
ground.velocity = 3.2,-3
ground.cornerpush.veloff = 0
fall = 1
fall.xvelocity = -2
fall.yvelocity = -3.777
yaccel = .5

[State 875, GoToFierceKick]
type = ChangeState
trigger1 = !Animtime
value = 242

;-------------------------------
; Thrown D Success (Retro mode)
;-------------------------------
[Statedef 876]
type = S
movetype = A
physics = S
anim = 876
sprpriority = 1

[State 876, ResetEvasion]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 876, DetectEvasion]
type = VarSet
triggerall = Time < 7
trigger1 = NumTarget
trigger1 = (Target, Command = "b") || (Target, Command = "z")
trigger1 = (Target, Command = "holdback") || (Target, Command = "holdfwd")
var(25) = 1

[State 876, ToOpponentEscape]
type = TargetState
trigger1 = NumTarget
trigger1 = Time < 7 && var(25)
value = 965

[State 876, Escaped]
type = ChangeState
trigger1 = NumTarget
trigger1 = Time < 7 && var(25)
value = 960

[State 876, Turn]
type = Turn
trigger1 = AnimElem = 5

[State 876, MakeSpace]
type = Width
trigger1 = !Time
edge = 48,0

[State 876, NormalGrabSpark]
type = Explod
trigger1 = AnimElem = 2
anim = 7019
pos = 48,-56
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 876, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = ifelse(var(54),1000,0),0

[State 876, GrabSound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,23

[State 876, Bind1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0

[State 876, Bind2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 32,-88

[State 876, Bind3]
type = TargetBind
trigger1 = AnimElem = 4
pos = -28,-128

[State 876, MakeSpace]
type = Width
trigger1 = AnimElem = 4
edge = 0,48

[State 876, Bind4]
type = TargetBind
trigger1 = AnimElem = 5
pos = 22,-106

[State 876, Bind5]
type = TargetBind
trigger1 = AnimElem = 6
pos = 32,-68

[State 876, ShakeItBaby]
type = Envshake
trigger1 = AnimElem = 6
time = 20
freq = 70
ampl = -8

[State 876, ImpactSpark]
type = Explod
trigger1 = AnimElem = 6
anim = 7025
pos = 30,-42
postype = p1
bindtime = 1
ontop = 1
sprpriority = 3
ownpal = 1

[State 876, GroundImpactSound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,12

[State 876, GroundImpactWave]
type = Explod
trigger1 = AnimElem = 6
anim = 7030
pos = 40,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 0
ownpal = 1

[State 876, VoiceSound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,10

[State 876, BonesSound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,11

[State 876, GoToStand]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------
; Thrown by D (Retro mode)
;--------------------------
[Statedef 877]
type = A
movetype = H 
physics = N
ctrl = 0

[State 877, MakeSpace]
type = ScreenBound
trigger1 = 1
value = 0

[State 877, Turn]
type = Turn
trigger1 = AnimElem = 5

[State 877, CustomAnim]
type = ChangeAnim2
trigger1 = !Time
value = 877

[State 877, Damage]
type = LifeAdd
trigger1 = AnimElem = 6
value = -157

[State 877, SetFallVel]
type =  VelSet
trigger1 = Time = 60
x = -3.2 ; GetHitVar(xvel)
y = GetHitVar(yvel)

[State 877, Gravity]
type =  VelAdd
trigger1 = Vel X
y = GetHitVar(yaccel)

[State 877, GoToBounce]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos y + Vel Y > -30
value = 5100

;----------------------------------------------------------------------------
; Death Lake Drive (Air throw)
;----------------------------------------------------------------------------

;---------------
; Punch attempt
;---------------
[Statedef 1850]
type = A
movetype = A
physics = N
anim = 1849
ctrl = 0
juggle = 15

[State 1850, GrabAttempt]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NT
priority = 3,Miss
sparkno = -1
p2facing = 1
p1stateno = 1860
P2StateNo = 1870
fall = 1
fall.xvelocity = -2
fall.yvelocity = -3.777

[State 1850, Miss]
type = ChangeState
trigger1 = Time
value = 610


;--------------
; Kick attempt
;--------------
[Statedef 1851]
type = A
movetype = A
physics = N
anim = 1849
ctrl = 0
juggle = 15

[State 1850, Attempt]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NT
priority = 5, miss
sparkno = -1
p2facing = 1
p1stateno = 1860
P2StateNo = 1870
fall = 1
fall.xvelocity = -2
fall.yvelocity = -3.777

[State 1850, Miss]
type = ChangeState
trigger1 = Time
value = 641

;-------------------------
; Death Lake Drive Success
;-------------------------
[Statedef 1860]
type = A
movetype = A
physics = N
velset = 0,0
anim = 1850
ctrl = 0

[State 1860, PosFreeze]
type = PosFreeze
trigger1 = AnimElem = 2,<0

[State 1860, NormalGrabSpark]
type = Explod
trigger1 = animelem = 1
anim = 7019
pos = -6,-118
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 1860, GrabSound]
type = PlaySnd
trigger1 = animelem = 1
value = 1,23
channel = 1

[State 1860, MoveSound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,15
channel = 1

[State 1860, GroundWaveBG]
type = Explod
trigger1 = NumTarget
trigger1 = Target, StateNo = [5100,5102]
anim = 7035
pos = 0,-ceil(Target, Pos Y)
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1
persistent = 0

[State 1860, GroundWaveFG]
type = Explod
trigger1 = NumTarget
trigger1 = Target, StateNo = [5100,5102]
anim = 7036
pos = 0,-ceil(Target, Pos Y)
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3
persistent = 0

[State 1860, LandSound]
type = PlaySnd
trigger1 = P2StateNo = 1875
value = 1,12

[State 1860, Bind1]
type = TargetBind
trigger1 = !Time
pos = 0, -96

[State 1860, Bind2]
type = TargetBind
trigger1 = AnimElem = 2
pos = -8, -92

[State 1860, Bind3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -8, -40

[State 1860, StartVelX]
type = VelAdd
trigger1 = AnimElem = 3,=0
x = 2
y = 0

[State 1860, Gravity]
type = VelAdd
trigger1 = AnimElem = 3,>=0
y = .5

[State 1860, State]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 1865

;---------------------------
; Death Lake Drive - Landing
;---------------------------
[Statedef 1865]
type = A
movetype = I
physics = S
anim = 1869
velset = Vel X,0

[State 1865, PosToGround]
type = PosSet
trigger1 = !time
y = 0

[State 1865, StopVelX]
type = VelSet
trigger1 = !Time
x = 0

[State 1865, State]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;----------------------------------
; Enemy grabbed by Death Lake Drive
;----------------------------------
[Statedef 1870]
type = A
movetype = H
physics = N
ctrl = 0

[State 1870, GrabAnim]
type = ChangeAnim2
trigger1 = !Time
value = 1860

[State 1870, StartVels]
type = VelSet
trigger1 = AnimElem = 3
x = -14
y = 12

[State 1870, Bounce]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y + Vel Y >= 0
value = 1875

;-------
; Bounce
;-------
[Statedef 1875]
type = C
movetype = H
physics = N
velset = -1,2

[State 1875, PosOnGround]
type = PosSet
trigger1 = !Time
y = 0

[State 1875, Shake]
type = Envshake
trigger1 = !Time
time = 20
freq = 70
ampl = -8

[State 1875, Damage]
type = LifeAdd
trigger1 = !Time
value = -176

[State 1875, HitGroundAnim]
type = ChangeAnim
trigger1 = !Time
value = ifelse(SelfAnimExist(5102),5102,ifelse(SelfAnimExist(5101),5101,5100))

[State 1875, Dead]
type = SelfState
trigger1 = Time
value = 5101
