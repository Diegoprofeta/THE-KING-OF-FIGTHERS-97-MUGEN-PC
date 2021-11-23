;-----------------------------------------------------------------------------------------------
;Ralf Jones by KOFFAB



;-| Poderes |---------------------------------------------------------
[Command]
name = "poder_x"
command = ~D, F, $D, B, x
Time = 25

[Command]
name = "poder_y"
command = ~D, F, $D, B, y
Time = 25

[Command]
name = "poder_xy"
command = ~D, F, $D, B, x+y
Time = 25


[Command]
name = "poder_a"
command = ~D, B, $D, F, a
Time = 25

[Command]
name = "poder_b"
command = ~D, B, $D, F, b
Time = 25

[Command]
name = "poder_ab"
command = ~D, B, $D, F, a+b
Time = 25


[Command]
name = "galactic_phantom_supercombo"
command = ~D, DF, F, D, F, x+y
Time = 25

[Command]
name ="galactic_phantom_supercombonormal"
command = ~D, DF, F, D, F, x
Time = 25

[Command]
name ="galactic_phantom_supercombonormal"
command = ~D, DF, F, D, F, y
Time = 25

;-| Especiales|-------------------------------------------------------

[Command]
name = "guttinggun_x"
command = ~30$B, F, x

[Command]
name = "guttinggun_y"
command = ~30$B, F, y

[Command]
name = "bakudan_x"
command = ~30$D, $U, x

[Command]
name = "bakudan_y"
command = ~30$D, $U, y

[Command]
name = "bakudan_air_x"
command = ~D, DF, F, x

[Command]
name = "bakudan_air_y"
command = ~D, DF, F, y

[Command]
name = "valcun_x"
command = x, x, x, x
time = 30

[Command]
name = "valcun2_x"
command = x, x, x, x, x
time = 35

[Command]
name = "valcun_y"
command = y, y, y, y
time = 30

[Command]
name = "ralfkick_a"
command = ~30$B, F, a

[Command]
name = "ralfkick_b"
command = ~30$B, F, b

[Command]
name = "argentine"
command = ~B, D, F, a
time = 20
[Command]
name = "argentine"
command = ~B, DB, DF, F, a
time = 20
[Command]
name = "argentine"
command = ~B, D, F, b
time = 20
[Command]
name = "argentine"
command = ~B, DB, DF, F, b
time = 20

;-| Combinacion de botones |----------------------------------------------------

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

;-| Dir + Button |----------------------------------------------------------

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

;-| botones |---------------------------------------------------------

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

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_s"
command = /$s
time = 1

;-| no moverlos |--------------------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


[Command]
name    = "call-st"
command = s
time    = 1



;===========================================================================

[Command]
name    = "longjump"
command = D,$U
time    = 18





[Statedef -1]
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = ifelse(command != "holdback",810,815)
triggerall = command = "ax" || command = "z"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100

[State -1]
type = ChangeState
value = ifelse(statetype != A,300,310)
triggerall = command = "by" || command = "c"
trigger1 = ctrl
trigger2 = stateno = 100

[State -1]
type = ChangeState
value = ifelse(command != "holdback",830,835)
triggerall = command = "ax" || command = "z"
triggerall = power >= 1000
trigger1 = stateno = [150,153]

[State -1]
type = ChangeState
value = 820
triggerall = command = "by" || command = "c"
triggerall = power >= 1000
trigger1 = stateno = [150,153]

[State -1]
type = ChangeState
value = 3040
triggerall = command = "galactic_phantom_supercombo"
triggerall = Power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = movecontact
trigger5 = stateno = 300

[State -1]
type = ChangeState
value = 3041
triggerall = command = "galactic_phantom_supercombonormal"
triggerall = Power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = movecontact
trigger5 = stateno = 300

[State -1]
type = ChangeState
value = 3030
triggerall = command = "poder_ab"
triggerall = Power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = stateno = [3000,3000]
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 3020
triggerall = command = "poder_a"
triggerall = Power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = movecontact
trigger5 = stateno = 300

[State -1]
type = ChangeState
value = 3025
triggerall = command = "poder_b"
triggerall = Power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = movecontact
trigger5 = stateno = 300

[State -1]
type = ChangeState
value = 3010
triggerall = command = "poder_xy"
triggerall = Power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = movecontact
trigger5 = stateno = 300

[State -1]
type = ChangeState
value = 3000
triggerall = command = "poder_x" || command = "poder_y"
triggerall = Power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = movecontact
trigger5 = stateno = 300
trigger6 = stateno = [1000,1005]

[State -1]
type = ChangeState
value = 1030
triggerall = command = "valcun_x"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = movecontact
trigger5 = stateno = 300

[State -1]
type = ChangeState
value = 1035
triggerall = command = "valcun_y"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger3 = movecontact
trigger3 = stateno = [400,410]
trigger4 = movecontact
trigger4 = stateno = 300

[State -1]
type = ChangeState
value = 1000
triggerall = command = "guttinggun_x"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger3 = movecontact
trigger3 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [210,215]

[State -1]
type = ChangeState
value = 1005
triggerall = command = "guttinggun_y"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger3 = movecontact
trigger3 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [210,215]

[State -1]
type = ChangeState
value = 1010
triggerall = command = "bakudan_x"
trigger1 = (ctrl || stateno = 40) && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger3 = movecontact
trigger3 = stateno = [400,410]
trigger4 = movecontact
trigger4 = stateno = 300

[State -1]
type = ChangeState
value = 1015
triggerall = command = "bakudan_y"
trigger1 = (ctrl || stateno = 40) && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger3 = movecontact
trigger3 = stateno = [400,410]
trigger4 = movecontact
trigger4 = stateno = 300

[State -1]
type = ChangeState
value = 1050
triggerall = command = "argentine"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger3 = movecontact
trigger3 = stateno = [400,410]
trigger4 = movecontact
trigger4 = stateno = 300

[State -1]
type = ChangeState
value = 1040
triggerall = command = "ralfkick_a"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = movecontact
trigger5 = stateno = 300

[State -1]
type = ChangeState
value = 1045
triggerall = command = "ralfkick_b"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225
trigger4 = movecontact
trigger4 = stateno = [400,410]
trigger5 = movecontact
trigger5 = stateno = 300




[State -1]
type = ChangeState
value = 1011
triggerall = command = "bakudan_air_x"
trigger1 = (ctrl || stateno = 105) && statetype = A
trigger2 = movecontact
trigger2 = stateno = 615
trigger3 = movecontact
trigger3 = stateno = 310

[State -1]
type = ChangeState
value = 1016
triggerall = command = "bakudan_air_y"
trigger1 = (ctrl || stateno = 105) && statetype = A
trigger2 = movecontact
trigger2 = stateno = 615
trigger3 = movecontact
trigger3 = stateno = 310

[State -1]
type = ChangeState
value = 900
trigger1 = command = "fwd_y" || command = "back_y"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl

[State -1]
type = ChangeState
value = 910
trigger1 = command = "fwd_b" || command = "back_b"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl

[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,200,205)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = stateno = 400 && AnimElem = 4,> 0

[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,210,215)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100

[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 10,220,225)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100

[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,230,235)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100

[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = stateno = 400 && AnimElem = 4,> 0

[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100

[State -1]
type = ChangeState
value = 420
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100

[State -1]
type = ChangeState
value = 430
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100

[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),600,605)
triggerall = command = "x"
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),6100,615)
triggerall = command = "y"
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),620,625)
triggerall = command = "a"
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),630,635)
triggerall = command = "b"
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl


[State -1]
type = null
value = 609
triggerall = power < 3000
trigger1 = command = "hold_a"
trigger1 = command = "hold_y"
trigger1 = command = "hold_x"
trigger1 = statetype = S
trigger1 = ctrl


[State -1]
type = ChangeState
value = 510
triggerall = statetype = S
triggerall = Power < 3000
triggerall = var(9) = 0
triggerall = ctrl = 1
trigger1 = command = "hold_a"
trigger1 = command = "hold_y"


