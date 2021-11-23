;-=========================================================================-
; * Character:          Clark Steel
; * From :              The King of Fighters 98 (c) SNK/SNK Playmore
; * Mugen converter:    OrochiKOF97 & Scal
; * Contents:           Commands & AI
;-=========================================================================-

;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 30
command.buffer.time = 1

;-| Single Button |----------------------------------------------------------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |---------------------------------------------------------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "runagain"
command = /$F
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "F2"
command = F
time = 1

[Command]
name = "B2"
command = B
time = 1

[Command]
name = "U2"
command = U
time = 1

[Command]
name = "D2"
command = D
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

[Command]
name = "knockdown2"
command = b+y
time = 1

;-| Hold Button(s) |---------------------------------------------------------
[Command]
name = "holda"
command = /x
time = 1

[Command]
name = "holdb"
command = /a
time = 1

[Command]
name = "holdc"
command = /y
time = 1

[Command]
name = "holdd"
command = /b
time = 1

;-|DMs/SDMs/HSDMs|-----------------------------------------------------------------------------------------------------------
[Command]
name = "UltraASDM"
command = ~F,$D,B,F,$D,/B,x+y
time = 45

[Command]
name = "UltraASDM"
command = ~F,$D,B,F,$D,B,x+y
time = 45

[Command]
name = "UltraA"
command = ~F,$D,B,F,$D,/B,x
time = 45

[Command]
name = "UltraA"
command = ~F,$D,B,F,$D,B,x
time = 45

[Command]
name = "UltraA"
command = ~F,$D,B,F,$D,/B,y
time = 45

[Command]
name = "UltraA"
command = ~F,$D,B,F,$D,B,y
time = 45

[Command]
name = "RThree"
command = ~B,$D,F,B,$D,/F,a
time = 45

[Command]
name = "RThree"
command = ~B,$D,F,B,$D,F,a
time = 45

[Command]
name = "RThree"
command = ~B,$D,F,B,$D,/F,b
time = 45

[Command]
name = "RThree"
command = ~B,$D,F,B,$D,F,b
time = 45

[Command]
name = "HSDM"
command = ~B,$D,F,B,$D,/F,a+b
time = 45

[Command]
name = "HSDM"
command = ~B,$D,F,B,$D,F,a+b
time = 45

;[Command] ; TODO
;name = "HSDM"
;command = c
;time = 45

;-|Special Moves|------------------------------------------------------------------------------------------------------------
[Command]
name = "SuperA"
command = ~B,$D,/F,a
time = 30

[Command]
name = "SuperA"
command = ~B,$D,F,a
time = 30

[Command]
name = "SuperA"
command = ~B,$D,/F,b
time = 30

[Command]
name = "SuperA"
command = ~B,$D,F,b
time = 30

[Command]
name = "frankensteiner_a"
command = ~F,D,DF,a
time = 20

[Command]
name = "frankensteiner_b"
command = ~F,D,DF,b
time = 20

[Command]
name = "felbow"
command = ~D,DF,/F,x
time = 15

[Command]
name = "felbow"
command = ~D,DF,F,x
time = 15

[Command]
name = "felbow"
command = ~D,DF,/F,y
time = 15

[Command]
name = "felbow"
command = ~D,DF,F,y
time = 15

[Command] ; Inversed Flash Elbow Command - MUGEN has a bug with player facing.
name = "ifelbow"
command = ~D,DB,/B,x
time = 15

[Command]
name = "ifelbow"
command = ~D,DB,B,x
time = 15

[Command]
name = "ifelbow"
command = ~D,DB,/B,y
time = 15

[Command]
name = "ifelbow"
command = ~D,DB,B,y
time = 15

[Command]
name = "napalm"
command = ~F,D,DF,x
time = 15

[Command]
name = "napalm"
command = ~F,D,DF,y
time = 15

[Command]
name = "gatling_x"
command = ~20$B,F,x
time = 20

[Command]
name = "gatling_y"
command = ~20$B,F,y
time = 20

[Command]
name = "vpunch_x"
command = x
time = 3

[Command]
name = "vpunch_y"
command = y
time = 3

[Command]
name = "mtackle_x"
command = ~B,D,F,x
time = 25

[Command]
name = "mtackle_y"
command = ~B,D,F,y
time = 25

[Command]
name = "longjump"
command = D,$U
time = 11

;-|2/3 Button Combination|---------------------------------------------------------------------------------------------------
[Command]
name = "recovery" ; No air recovery in KOF though.
command = x+a
time = 1

[Command]
name = "knockdown"
command = b+y
time = 1

[Command]
name = "knockdown"
command = z
time = 1

[Command]
name = "roll"
command = x+a
time = 1

[Command]
name = "roll"
command = c
time = 1

[Command]
name = "recovery"
command = c
time = 1

;-|Double Tap|---------------------------------------------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = ~F,F
time = 8

[Command]
name = "BB"     ;Required (do not remove)
command = ~B,B
time = 8

;-|Dir + Button|-------------------------------------------------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
; Desperation moves
;===========================================================================

;--------------------------
; Mega Running Spark (HSDM)
;--------------------------
[State -1, HSDM]
type = ChangeState
value = 4500
triggerall = RoundState < 3
triggerall = Command = "HSDM"
triggerall = Power >= 3000
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 mode)
trigger4 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping

;----------------------------------
; Ultra Argentina Backbreaker (SDM)
;----------------------------------
[State -1, UAB]
type = ChangeState
value = 6100
triggerall = RoundState < 3
triggerall = Command = "UltraASDM"
triggerall = power >= 2000
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 mode)
trigger4 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping

;---------------------------------
; Ultra Argentina Backbreaker (DM)
;---------------------------------
[State -1, UAB98]
type = ChangeState
value = 6000
triggerall = RoundState < 3
triggerall = Command = "UltraA" && !var(58)
triggerall = power >= 1000
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 mode)
trigger4 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping

[State -1, UABRetro]
type = ChangeState
value = 6075
triggerall = RoundState < 3
triggerall = Command = "UltraA" && var(58)
triggerall = power >= 1000
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 mode)
trigger4 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping

;--------------
; Running Three 
;--------------
; Taken from KOF02UM
[State -1, R398]
type = ChangeState
value = 3100
triggerall = Command = "RThree" && !var(58)
triggerall = Power >= 1000
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 mode)
trigger4 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping

; Taken from KOF02
[State -1, R3Retro]
type = ChangeState
value = 3000
triggerall = RoundState < 3
triggerall = Command = "RThree" && var(58)
triggerall = Power >= 1000
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 mode)
trigger4 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping

;===========================================================================
; Special moves
;===========================================================================

;----------------------------
; Super Argentina Backbreaker
;----------------------------
[State -1, SuperArgentinaBackbreaker]
type = ChangeState
value = 900
triggerall = RoundState < 3
triggerall = Command = "SuperA"
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 202 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SWKN (KOF98 Mode)
trigger4 = StateNo = 207 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SWKN (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping
trigger6 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SFP1
trigger7 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 mode)
trigger8 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger9 = StateNo = 400 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From CWP


;--------------------
; Running Backbreaker
;--------------------
[State -1, RunningBackbreaker2]
type = ChangeState
value = 2600
triggerall = RoundState < 3
triggerall = Command = "mtackle_x"
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 202 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SWKN (KOF98 Mode)
trigger4 = StateNo = 207 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SWKN (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping
trigger6 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SFPN1
trigger7 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 Mode)
trigger8 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger9 = StateNo = 400 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From CWP

;---------------
; Rolling Cradle
;---------------
[State -1, RollingCradle]
type = ChangeState
value = 2700
triggerall = RoundState < 3
triggerall = Command = "mtackle_y"
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 202 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SWKN (KOF98 Mode)
trigger4 = StateNo = 207 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SWKN (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping
trigger6 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SFPN1
trigger7 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 Mode)
trigger8 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger9 = StateNo = 400 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From CWP

;------------
; Flash Elbow
;------------
[State -1, FlashElbow]
type = ChangeState
value = 950
triggerall = RoundState < 3
triggerall = Command = "felbow" && var(7) = 1
trigger1 = StateNo = 903 && Time = [30,50]  ; From SAB
trigger2 = StateNo = 1001 && Time = [40,50] ; From Frankensteiner

[State -1, FlashElbowInverted]
type = ChangeState
value = 950
triggerall = RoundState < 3
triggerall = Command = "ifelbow" && var(7) = 1
trigger1 = StateNo = 903 && Time = [30,50]  ; From SAB
trigger2 = StateNo = 1001 && Time = [40,50] ; From Frankensteiner

;---------------
; Frankensteiner
;---------------
[State -1, FrankensteinerWeak]
type = ChangeState
value = 999
triggerall = RoundState < 3
triggerall = Command = "frankensteiner_a"
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 202 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SWKN (KOF98 Mode)
trigger4 = StateNo = 207 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SWKN (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping
trigger6 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SFPN1
trigger7 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 Mode)
trigger8 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger9 = StateNo = 400 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From CWP

[State -1, FrankensteinerFierce]
type = ChangeState
value = 1000
triggerall = RoundState < 3
triggerall = Command = "frankensteiner_b"
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 202 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SWKN (KOF98 Mode)
trigger4 = StateNo = 207 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SWKN (Retro mode)
trigger5 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping
trigger6 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SFPN1
trigger7 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 Mode)
trigger8 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0 ; From SCD (Retro mode)
trigger9 = StateNo = 400 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From CWP

;---------------
; Napalm Stretch
;---------------
[State -1, NapalmStretch]
type = ChangeState
value = 1050
triggerall = RoundState < 3
triggerall = Command = "napalm" && !var(58)
trigger1 = StateType !=A && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 203 && AnimElem = 5,>0 && AnimElem = 6,<0 ; From Stomping
trigger4 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,<0 ; From SCD (KOF98 mode)

;--------
; Gatling
;--------
[State -1, GatlingWeak]
type = ChangeState
value = 1490
triggerall = RoundState < 3
triggerall = Command = "gatling_x" && var(58)
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = (StateNo = 200 || StateNo = 204) && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SLPN&F
trigger4 = StateNo = 210 && AnimElem = 4,>0 && AnimElem = 5,<0                    ; From SFPF
trigger5 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,<0                    ; From SFPN1
trigger6 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0                    ; From SCD (Retro mode)
trigger7 = StateNo = 400 && AnimElem = 2,>0 && AnimElem = 3,<0                    ; From CFK
trigger8 = StateNo = 410 && AnimElem = 3,>0 && AnimElem = 4,<0                    ; From CFP

[State -1, GatlingFierce]
type = ChangeState
value = 1500
triggerall = RoundState < 3
triggerall = Command = "gatling_y" && var(58)
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = (StateNo = 200 || StateNo = 204) && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SLPN&F
trigger4 = StateNo = 210 && AnimElem = 4,>0 && AnimElem = 5,<0                    ; From SFPF
trigger5 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,<0                    ; From SFPN1
trigger6 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0                    ; From SCD (Retro mode)
trigger7 = StateNo = 400 && AnimElem = 2,>0 && AnimElem = 3,<0                    ; From CFK
trigger8 = StateNo = 410 && AnimElem = 3,>0 && AnimElem = 4,<0                    ; From CFP

;-------------
; Vulcan Punch
;-------------
[State -1, VulcanPunchWeak]
type = ChangeState
value = 1600
triggerall = RoundState < 3
triggerall = NumExplod(1605) >= 4 && Command = "vpunch_x"
trigger1 = (StateType = S || StateType = C) && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = (StateNo = 200 || StateNo = 204) && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SLPN&F
trigger4 = StateNo = 210 && AnimElem = 4,>0 && AnimElem = 5,<0                    ; From SFPF
trigger5 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,< 0                   ; From SFPN1
trigger6 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,< 0                   ; From SCD (KOF98 Mode)
trigger7 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0                    ; From SCD (Retro mode)
trigger8 = StateNo = 410 && AnimElem = 3,>0 && AnimElem = 4,< 0                   ; From CFP

[State -1, VulcanPunchFierce]
type = ChangeState
value = 1650
triggerall = RoundState < 3
triggerall = NumExplod(1605) >= 4 && Command = "vpunch_y"
trigger1 = (StateType = S || StateType = C) && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = (StateNo = 200 || StateNo = 204) && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SLPN&F
trigger4 = StateNo = 210 && AnimElem = 4,>0 && AnimElem = 5,<0                    ; From SFPF
trigger5 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,< 0                   ; From SFPC
trigger6 = StateNo = 250 && AnimElem = 7,>0 && AnimElem = 8,< 0                   ; From SCD (KOF98 Mode)
trigger7 = StateNo = 251 && AnimElem = 4,>0 && AnimElem = 5,<0                    ; From SCD (Retro mode)
trigger8 = StateNo = 410 && AnimElem = 3,>0 && AnimElem = 4,< 0                   ; From CFP

;===========================================================================
; System
;===========================================================================

;------
; Dodge
;------
[State -1, Dodge]
type = ChangeState
value = 310
triggerall = var(52)
triggerall = RoundState < 3
trigger1 = Command = "roll"
trigger1 = Ctrl && Stateno = 0

;-----
; Roll
;-----
[State -1, RollBackwards]
type = ChangeState
value = 701
triggerall = RoundState < 3
triggerall = Command = "roll" && Command = "holdback"
trigger1 = StateType = S && Ctrl            ; From standing attacks
trigger2 = (StateNo = 100 || StateNo = 101) ; From run
trigger3 = StateNo = 21                     ; From walk backwards

[State -1, RollForwards]
type = ChangeState
value = 700
triggerall = RoundState < 3
triggerall = Command = "roll"
trigger1 = StateType = S && Ctrl            ; From standing attacks
trigger2 = (StateNo = 100 || StateNo = 101) ; From run
trigger3 = StateNo = 20                     ; From walk forward

;-------------
; Power charge
;-------------
[State -1, PowerCharge]
type = ChangeState
value = 975
triggerall = RoundState < 3
triggerall = var(51)
triggerall = Command = "holdb" && Command = "holdc"
trigger1 = Power < 3000
trigger1 = Ctrl && Stateno = 0

;-----------------
; Emergency System
;-----------------
[State -1,RollBackwardsCounter]
type = ChangeState
value = 703
triggerall = RoundState < 3
triggerall = Command = "roll" && Command = "holdback"
triggerall = Power >= 1000 && Life > 0 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152   ; From guard

[State -1,RollForwardcounter]
type = ChangeState
value = 702
triggerall = RoundState < 3
triggerall = Command = "roll"
triggerall = Power >= 1000 && Life > 0 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152   ; From guard

[State -1,CDcounter]
type = ChangeState
value = 704
triggerall = RoundState < 3
triggerall = Command = "knockdown"
triggerall = Power >= 1000 && Life > 0 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152   ; From guard

[State -1,QuickEmergencyEvasion]
type = ChangeState
value = 705
triggerall = RoundState < 3
triggerall = Command = "roll"
triggerall = Power >= 1000 && Life > 0 && StateType != A
trigger1 = StateNo = 200 && AnimElem = 2,>=0 && AnimElem = 3,< 0 ; From SWP
trigger2 = StateNo = 201 && AnimElem = 2,>=0 && AnimElem = 3,< 0 ; From SWKF98
trigger3 = StateNo = 202 && AnimElem = 2,>=0 && AnimElem = 3,< 0 ; From SWKC98
trigger4 = StateNo = 203 && AnimElem = 5,>=0 && AnimElem = 6,< 0 ; From Stomping
trigger5 = StateNo = 204 && AnimElem = 2,>=0 && AnimElem = 3,< 0 ; From SWPCR
trigger6 = StateNo = 205 && AnimElem = 3,>=0 && AnimElem = 4,< 0 ; From SWKFR
trigger7 = StateNo = 207 && AnimElem = 3,>=0 && AnimElem = 4,< 0 ; From SWKCR
trigger8 = StateNo = 210 && AnimElem = 4,>=0 && AnimElem = 5,< 0 ; From SFPF
trigger9 = StateNo = 211 && AnimElem = 3,>=0 && AnimElem = 4,< 0 ; From SFPC1
trigger10 = StateNo = 211 && AnimElem = 4,>=0 && AnimElem = 5,< 0 ; From SFPC2
trigger11 = StateNo = 240 && AnimElem = 5,>=0 && AnimElem = 6,< 0 ; From SFKF98
trigger12 = StateNo = 241 && AnimElem = 6,>=0 && AnimElem = 7,< 0 ; From SFKC98
trigger13 = StateNo = 242 && AnimElem = 3,>=0 && AnimElem = 4,< 0 ; From SFKC98
trigger14 = StateNo = 244 && AnimElem = 3,>=0 && AnimElem = 4,< 0 ; From SFKFR
trigger15 = StateNo = 250 && AnimElem = 7,>=0 && AnimElem = 8,< 0 ; From CD98
trigger16 = StateNo = 400 && AnimElem = 2,>=0 && AnimElem = 3,< 0 ; From CWP
trigger17 = StateNo = 410 && AnimElem = 3,>=0 && AnimElem = 4,< 0 ; From CFP
trigger18 = StateNo = 430 && AnimElem = 2,>=0 && AnimElem = 3,< 0 ; From CWK
trigger19 = StateNo = 440 && AnimElem = 3,>=0 && AnimElem = 4,< 0 ; From CFK

;-------------------------------------
; Dodge attack (KOF98 Mode)
;-------------------------------------
[State -1, DA98]
type = ChangeState
value = 255
triggerall = RoundState < 3
triggerall = StateNo = 311 && !var(58)
trigger1 = Command = "a" || Command = "b" || Command = "c" || Command = "x" || Command = "y" || Command = "z"
trigger1 = AnimElem = 1,<12
trigger2 = var(29)

;-------------------------------------
; Dodge attack (Retro Mode)
;-------------------------------------
[State -1, DAR]
type = ChangeState
value = 256
triggerall = RoundState < 3
triggerall = StateNo = 311 &&  var(58)
trigger1 = Command = "a" || Command = "b" || Command = "c" || Command = "x" || Command = "y" || Command = "z"
trigger1 = AnimElem = 1,<4
trigger2 = var(29)

;-------------------------------------
; KnockDown Attack (C+D) (KOF98 mode)
;-------------------------------------
[State -1, KnockDown Attack]
type = ChangeState
value = 250
triggerall = RoundState < 3
triggerall = Command = "knockdown" && !var(58)
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;-------------------------------------
; KnockDown Attack (C+D) (Retro mode)
;-------------------------------------
[State -1, KnockDown Attack]
type = ChangeState
value = 251
triggerall = RoundState < 3
triggerall = Command = "knockdown" && var(58)
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;-----------------------------------------
; Air KnockDown Attack (C+D) (KOF98 mode)
;-----------------------------------------
[State -1, KnockDown Attack]
type = ChangeState
value = 300
triggerall = RoundState < 3
triggerall = Command = "knockdown" || Var(19) = 5
triggerall = !var(58)
trigger1 = StateType = A && Ctrl

;-----------------------------------------
; Air KnockDown Attack (C+D) (Retro mode)
;-----------------------------------------
[State -1, KnockDown Attack]
type = ChangeState
value = 301
triggerall = RoundState < 3
triggerall = Command = "knockdown" || Var(19) = 5
triggerall = var(58)
trigger1 = StateType = A && Ctrl

;------
; Taunt
;------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = RoundState < 3
triggerall = Command = "start"
triggerall = Command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;===========================================================================
; Throws
;===========================================================================

;------------------------------
; Slamming German (KOF98 mode)
;------------------------------
[State -1, SGerman]
type = ChangeState
value = 800
triggerall = RoundState < 3
triggerall = !var(58)
triggerall = Command = "y" && (Command = "holdfwd" || Command = "holdback")
trigger1 = P2BodyDist X < 7 && !P2StateType = A && !P2MoveType = H
trigger1 = Ctrl && StateType = S 

;-------------------------------
; Fisherman Buster (KOF98 mode)
;-------------------------------
[State -1, Fisherman Buster]
type = ChangeState
value = 790
triggerall = RoundState < 3
triggerall = !var(58)
triggerall = Command = "b" && (Command = "holdfwd" || Command = "holdback")
trigger1 = P2BodyDist X < 7 && !P2StateType = A && !P2MoveType = H
trigger1 = Ctrl && StateType = S 

;-----------------------------
; Pyramid Driver (Retro mode)
;-----------------------------
[State -1, PDriver]
type = ChangeState
value = 850
triggerall = RoundState < 3
triggerall = var(58)
triggerall = Command = "y" && (Command = "holdfwd" || Command = "holdback")
trigger1 = P2BodyDist X < 7 && !P2StateType = A && !P2MoveType = H
trigger1 = Ctrl && StateType = S 

;----------------------
; Throw D (Retro mode)
;----------------------
[State -1, PDriver]
type = ChangeState
value = 875
triggerall = RoundState < 3
triggerall = var(58)
triggerall = Command = "b" && (Command = "holdfwd" || Command = "holdback")
trigger1 = P2BodyDist X < 7 && !P2StateType = A && !P2MoveType = H
trigger1 = Ctrl && StateType = S 

;-----------------------------
; Death Lake Drive (air Throw)
;-----------------------------
[State -1, DLake Drive]
type = ChangeState
value = 1850
triggerall = RoundState < 3
triggerall = Command = "y" && StateType = A && Ctrl
triggerall = (Command ="holdfwd" || Command = "holddown" || Command = "holdback")
trigger1 = P2StateType = A && P2MoveType != H && P2BodyDist X <= 15 && (P2BodyDist Y = [-20,20])

[State -1, DLake Drive]
type = ChangeState
value = 1851
triggerall = RoundState < 3
triggerall = Command = "b" && StateType = A && Ctrl
triggerall = (Command ="holdfwd" || Command = "holddown" || Command = "holdback")
trigger1 = P2StateType = A && P2MoveType != H && P2BodyDist X <= 15 && (P2BodyDist Y = [-20,20])

;============================================================================================================================
; REQUIRED COMMANDS
;============================================================================================================================

;------------
; Run Forward
;------------
[State -1, Run Forward]
type = ChangeState
value = 100
triggerall = RoundState < 3
trigger1 = Command = "FF" && StateType = S && Ctrl && PrevStateNo != 101
trigger2 = Command = "runagain"
trigger2 = PrevStateNo != 52 && StateNo = 20 && var(6) > 9

;---------
; Hop Back
;---------
[State -1, Hop Back]
type = ChangeState
value = 105
triggerall = RoundState < 3
trigger1 = Command = "BB" && StateType = S && Ctrl

;===========================================================================
; Normal moves
;===========================================================================

;--------------------------------------
; Stand Weak Punch (Close) (Retro mode)
;--------------------------------------
[State -1, SWPN]
type = ChangeState
value = 204
triggerall = RoundState < 3
triggerall = Command = "x" && P2BodyDist X < 17 && var(58) && command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 =  StateNo = 204 && AnimElem = 2,>2 && AnimElem = 3,<0 ; From SLPN (Retro mode)
trigger4 =  StateNo = 207 && AnimElem = 3,>2 && AnimElem = 4,<0 ; From SLKN (Retro mode)

;-----------------
; Stand Weak Punch
;-----------------
[State -1, SWP]
type = ChangeState
value = 200
triggerall = RoundState < 3
triggerall = Command = "x" && command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 =  StateNo = 204 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SLPN (Retro Mode)
trigger4 =  StateNo = 202 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SLKN (KOF98 mode)
trigger5 =  StateNo = 207 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SLKN (Retro mode)

;-------------------------
; Stand Fierce Punch (Far)
;-------------------------
[State -1, SFPF]
type = ChangeState
value = 210
triggerall = RoundState < 3
triggerall = Command = "y" && command != "holddown"
triggerall = P2BodyDist X >36
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;---------------------------
; Stand Fierce Punch (Close)
;---------------------------
[State -1, SFPN]
type = ChangeState
value = 211
triggerall = RoundState < 3
triggerall = Command = "y" && command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;----------------
; Stand Weak Kick
;----------------
[State -1, SWKF98]
type = ChangeState
value = 201
triggerall = RoundState < 3
triggerall = Command = "a" && command != "holddown" && command != "holdfwd" && !var(58)
triggerall = P2BodyDist X >= 10
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 =  StateNo = 202 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SLKN (KOF98 mode)

[State -1, SWKFK]
type = ChangeState
value = 205
triggerall = RoundState < 3
triggerall = Command = "a" && command != "holddown" && command != "holdfwd" && var(58)
triggerall = P2BodyDist X >= 10
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 =  StateNo = 207 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SLKN (Retro mode)

;------------------------
; Stand Weak Kick (Close)
;------------------------
[State -1, SWKN98]
type = ChangeState
value = 202
triggerall = RoundState < 3
triggerall = Command = "a" && command != "holddown" && command != "holdfwd" & !var(58)
triggerall = P2BodyDist X < 10
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

[State -1, SWKNR]
type = ChangeState
value = 207
triggerall = RoundState < 3
triggerall = Command = "a" && command != "holddown" && command != "holdfwd" & var(58)
triggerall = P2BodyDist X < 10
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;-------------------------------
; Stomping (Forward + Weak Kick)
;-------------------------------
[State -1, Stomping]
type = ChangeState
value = 203
triggerall = RoundState < 3
triggerall = Command = "a" && Command = "holdfwd"
triggerall = command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 211 && AnimElem = 3,>0 && AnimElem = 4,< 0 ; From SHPN

;-------------------------------
; Stand Fierce Kick (KOF98 mode)
;-------------------------------
[State -1, SFKN98]
type = ChangeState
value = 240
triggerall = RoundState < 3
triggerall = Command = "b" && command != "holddown"
triggerall = P2BodyDist X > 36 && !var(58)
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

[State -1, SFKF98]
type = ChangeState
value = 241
triggerall = RoundState < 3
triggerall = Command = "b" && command != "holddown"
triggerall = !var(58)
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;-------------------------------
; Stand Fierce Kick (Retro mode)
;-------------------------------
[State -1, SFKNR]
type = ChangeState
value = 242
triggerall = RoundState < 3
triggerall = Command = "b" && command != "holddown"
triggerall = P2BodyDist X < 37 && var(58)
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

[State -1, SFKFR]
type = ChangeState
value = 244
triggerall = RoundState < 3
triggerall = Command = "b" && command != "holddown"
triggerall = var(58)
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;------------------
; Crouch Weak Punch
;------------------
[State -1, CWP]
type = ChangeState
value = 400
triggerall = RoundState < 3
triggerall = Command = "x" && Command = "holddown"
trigger1 = StateType = C && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)
trigger3 = StateNo = 202 && AnimElem = 2,>0 && AnimElem = 3,<0 ; From SWKN (KOF98 mode)
trigger3 = StateNo = 207 && AnimElem = 3,>0 && AnimElem = 4,<0 ; From SWKN (Retro mode)

;--------------------
; Crouch Fierce Punch
;--------------------
[State -1, CFP]
type = ChangeState
value = 410
triggerall = RoundState < 3
triggerall = Command = "y" && Command = "holddown"
trigger1 = StateType = C && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;-----------------
; Crouch Weak Kick
;-----------------
[State -1, CWK]
type = ChangeState
value = 430
triggerall = RoundState < 3
triggerall = Command = "a" && Command = "holddown"
trigger1 = StateType = C && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;-------------------
; Crouch Fierce Kick
;-------------------
[State -1, CFK]
type = ChangeState
value = 440
triggerall = RoundState < 3
triggerall = Command = "b" && Command = "holddown"
trigger1 = StateType = C && Ctrl
trigger2 = (StateNo = 100 || StateNo = 101)

;-----------------------------
; Jump Weak Punch (KOF98 mode)
;-----------------------------
[State -1, JWP98]
type = ChangeState
value = 600
triggerall = RoundState < 3
triggerall = Command = "x" || Var(19) = 1
triggerall = !var(58)
trigger1 = StateType = A && Ctrl

;-----------------------------
; Jump Weak Punch (Retro mode)
;-----------------------------
[State -1, JWPR]
type = ChangeState
value = 601
triggerall = RoundState < 3
triggerall = Command = "x" || Var(19) = 1
triggerall = var(58)
trigger1 = StateType = A && Ctrl

;-------------------------------
; Jump Fierce Punch (KOF98 mode)
;-------------------------------
[State -1, JFP98]
type = ChangeState
value = 610
triggerall = RoundState < 3
triggerall = Command = "y" || Var(19) = 3
triggerall = !var(58)
trigger1 = StateType = A && Ctrl 

;---------------------------------------
; Jump Neutral Fierce Punch (Retro mode)
;---------------------------------------
[State -1, JNFPR]
type = ChangeState
value = 611
triggerall = RoundState < 3
triggerall = Command = "y" || Var(19) = 3
triggerall = var(58) && StateNo != 243 && !Vel X
trigger1 = StateType = A && Ctrl 

;--------------------------------------
; Jump Diagonal Weak Punch (Retro mode)
;--------------------------------------
[State -1, JDWPR]
type = ChangeState
value = 612
triggerall = RoundState < 3
triggerall = Command = "y" || Var(19) = 3
trigger1 = StateType = A && Ctrl 

;--------------------------
; Jump Weak Kick (straight)
;--------------------------
[State -1, JWKS]
type = ChangeState
value = 635
triggerall = RoundState < 3
triggerall = Command = "a" || Var(19) = 2
triggerall = StateNo != 243 && Vel X = 0
trigger1 = StateType = A && Ctrl

;---------------
; Jump Weak Kick
;---------------
[State -1, JWK]
type = ChangeState
value = 630
triggerall = RoundState < 3
triggerall = Command = "a" || Var(19) = 2
trigger1 = StateType = A && Ctrl

;----------------------------
; Jump Fierce Kick (straight)
;----------------------------
[State -1, JFKS]
type = ChangeState
value = 640
triggerall = RoundState < 3
triggerall = Command = "b" || Var(19) = 4
triggerall = StateNo != 243 && Vel X = 0
trigger1 = StateType = A && Ctrl

;-----------------
; Jump Fierce Kick
;-----------------
[State -1, JFK]
type = ChangeState
value = 641
triggerall = RoundState < 3
triggerall = Command = "b" || Var(19) = 4
trigger1 = StateType = A && Ctrl

