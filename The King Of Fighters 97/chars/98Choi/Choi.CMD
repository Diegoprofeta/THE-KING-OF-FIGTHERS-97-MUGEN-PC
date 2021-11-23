;-| Super Motions |--------------------------------------------------------
; choi ranbu
[Command]
name = "qcfhcb_a"
command = ~D, F, $D, B, a
time = 45
[Command]
name = "qcfhcb_b"
command = ~D, F, $D, B, b
time = 45

; tornado
[Command]
name = "Tornado"
command = ~F, $D, B, F, $D, B, x
time = 45
[Command]
name = "Tornado"
command = ~F, $D, B, F, $D, B, y
time = 45

;-| Special Motions |------------------------------------------------------
[Command]
name = "charge_DU_x"
command = ~35$D, U, x
time = 15

[Command]
name = "charge_DU_y"
command = ~35$D, U, y
time = 15

[Command]
name = "charge_DU_z"
command = ~35$D, U, z
time = 15


[Command]
name = "charge_DU_a"
command = ~45$D, U, a
time = 15

[Command]
name = "charge_DU_b"
command = ~45$D, U, b
time = 15

[Command]
name = "charge_DU_c"
command = ~45$D, U, c
time = 15

[Command]
name = "charge_BF_x"
command = ~45$B, F, a
time = 15

[Command]
name = "charge_BF_y"
command = ~45$B, F, b
time = 15

[Command]
name = "charge_BF_z"
command = ~45$B, F, c
time = 15

[Command]
name = "Shissou Hishou Zan_x"
command = ~45$B, F, x
time = 15

[Command]
name = "Shissou Hishou Zan_y"
command = ~45$B, F, y
time = 15


[Command]
name = "qcb_x"
command = ~D, B, x
time = 15

[Command]
name = "qcb_y"
command = ~D, B, y
time = 15

[Command]
name = "qcb_z"
command = ~D, B, z
time = 15

[Command]
name = "qcf_a"
command = ~D, F, a
time = 15

[Command]
name = "qcf_b"
command = ~D, F, b
time = 15

[Command]
name = "qcf_c"
command = ~D, F, c
time = 15




;-| Throw Tap |------------------------------------------------------------
[Command]
name = "b&f"
command = B, F, B, F
time = 30

[Command]
name = "xxxx"
command = x
time = 30

[Command]
name = "yyyy"
command = y
time = 30

[Command]
name = "zzzz"
command = z
time = 30



;-| Double Tap |------------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "CD"
command = y+b
time = 1

[Command]
name = "Dodge"
command = x+a

[Command]
name = "roll_f"
command = /F, x+a

[Command]
name = "roll_b"
command = /B, x+a

;-| Dir + Button |---------------------------------------------------------
; Misil Humano
[Command]
name = "holdfwd_x"
command = /$F, a
time = 5

[Command]
name = "holdfwddown_x"
command = /$DF, a
time = 5

[Command]
name = "holddown_x"
command = /$D, a
time = 5

[Command]
name = "holdbackdown_x"
command = /$DB, a
time = 5

[Command]
name = "holdback_x"
command = /$B, a
time = 5

[Command]
name = "holdbackup_x"
command = /$UB, a
time = 5

[Command]
name = "holdup_x"
command = /$U, a
time = 5

[Command]
name = "holdfwdup_x"
command = /$UF, a
time = 5

[Command]
name = "holdfwd_y"
command = /$F, b
time = 5

[Command]
name = "holdfwddown_y"
command = /$DF, b
time = 5

[Command]
name = "holddown_y"
command = /$D, b
time = 5

[Command]
name = "holdbackdown_y"
command = /$DB, b
time = 5

[Command]
name = "holdback_y"
command = /$B, b
time = 5

[Command]
name = "holdbackup_y"
command = /$UB, b
time = 5

[Command]
name = "holdup_y"
command = /$U, b
time = 5

[Command]
name = "holdfwdup_y"
command = /$UF, b
time = 5

;-| Dir + Button |---------------------------------------------------------
; Normal

[Command]
name = "s1"
command = /F,x
time = 1

[Command]
name = "s2"
command = /F,a
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1


[Command]
name = "holdfwd_b"
command = /$F, y
time = 5

;-| Single Button |---------------------------------------------------------
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
name = "s"
command = s
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;longjump
[Command]
name = "jump"
command = D, $U
time = 18

;takewall
[Command]
name = "takewall"
command = /UF

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
[Statedef -1]
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
; 98 Rev Motions
;---------------------------------------------------------------------------
; ADVANCE MODE
[State -1]
type = ChangeState
value = 2500
triggerall = Var(50) = 0
trigger1 = command = "a" && command = "y"
trigger1 = power >= 1000 && statetype = S && ctrl = 1 && var(7) <= 0



;---------------------------------------------------------------------------
; Supers
;---------------------------------------------------------------------------
; DM Tornado
[State -1]
type = ChangeState
value = 3100 + ((var(7)>0) * 500)
triggerall = command = "Tornado" && power >= 1000 && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 609 && MoveContact

; DM Choi Ranbu
[State -1]
type = ChangeState
value = 3000 + ((var(7)>0) * 1000)
triggerall = command = "qcfhcb_a" && power >= 1000 && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 609 && MoveContact
[State -1]
type = ChangeState
value = 3010 + ((var(7)>0) * 990)
triggerall = command = "qcfhcb_b" && power >= 1000 && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 609 && MoveContact

;---------------------------------------------------------------------------
; Tecnicas
;---------------------------------------------------------------------------
; Salto al muro 2
[State -1]
type = ChangeState
value = 1500
triggerall = command = "charge_DU_a" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 40
trigger16 = stateno = 609 && MoveContact
[State -1]
type = ChangeState
value = 1502
triggerall = command = "charge_DU_b" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 40
trigger16 = stateno = 609 && MoveContact

; éæëñîÚ„ƒéaÅ@é„
[State -1]
type = ChangeState
value = 1600
triggerall = command = "Shissou Hishou Zan_x"
triggerall = statetype != A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1600,1699])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; éæëñîÚ„ƒéaÅ@ã≠
[State -1]
type = ChangeState
value = 1610
triggerall = command = "Shissou Hishou Zan_y"
triggerall = statetype != A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1600,1699])
ignorehitpause = (var(40) = 4)


; Misil humano
[State -1]
type = ChangeState
value = 1400
triggerall = command = "charge_BF_x" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 609 && MoveContact
[State -1]
type = ChangeState
value = 1401
triggerall = command = "charge_BF_y" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 609 && MoveContact
[State -1]
type = ChangeState
value = 1412
triggerall = statetype = A && time > 4 && pos y < -31
trigger1 = stateno = 1410 && command = "holdfwddown_x"
trigger2 = stateno = 1410 && command = "holdfwddown_y"
trigger3 = stateno = 1530 && command = "holdfwddown_x"
trigger4 = stateno = 1530 && command = "holdfwddown_y"
[State -1]
type = ChangeState
value = 1415
triggerall = statetype = A && time > 4 && pos y < -31
trigger1 = stateno = 1410 && command = "holdfwdup_x"
trigger2 = stateno = 1410 && command = "holdfwdup_y"
trigger3 = stateno = 1530 && command = "holdfwdup_x"
trigger4 = stateno = 1530 && command = "holdfwdup_y"
[State -1]
type = ChangeState
value = 1411
triggerall = statetype = A && time > 4 && pos y < -31
trigger1 = stateno = 1410 && command = "holdfwd_x"
trigger2 = stateno = 1410 && command = "holdfwd_y"
trigger3 = stateno = 1530 && command = "holdfwd_x"
trigger4 = stateno = 1530 && command = "holdfwd_y"
[State -1]
type = ChangeState
value = 1416
triggerall = statetype = A && time > 4 && pos y < -31
trigger1 = stateno = 1410 && command = "holdbackdown_x"
trigger2 = stateno = 1410 && command = "holdbackdown_y"
trigger3 = stateno = 1530 && command = "holdbackdown_x"
trigger4 = stateno = 1530 && command = "holdbackdown_y"
[State -1]
type = ChangeState
value = 1413
triggerall = statetype = A && time > 4 && pos y < -31
trigger1 = stateno = 1410 && command = "holddown_x"
trigger2 = stateno = 1410 && command = "holddown_y"
trigger3 = stateno = 1530 && command = "holddown_x"
trigger4 = stateno = 1530 && command = "holddown_y"
[State -1]
type = ChangeState
value = 1418
triggerall = statetype = A && time > 4 && pos y < -31
trigger1 = stateno = 1410 && command = "holdbackup_x"
trigger2 = stateno = 1410 && command = "holdbackup_y"
trigger3 = stateno = 1530 && command = "holdbackup_x"
trigger4 = stateno = 1530 && command = "holdbackup_y"
[State -1]
type = ChangeState
value = 1414
triggerall = statetype = A && time > 4 && pos y < -31
trigger1 = stateno = 1410 && command = "holdup_x"
trigger2 = stateno = 1410 && command = "holdup_y"
trigger3 = stateno = 1530 && command = "holdup_x"
trigger4 = stateno = 1530 && command = "holdup_y"
[State -1]
type = ChangeState
value = 1417
triggerall = statetype = A && time > 4 && pos y < -31
trigger1 = stateno = 1410 && command = "holdback_x"
trigger2 = stateno = 1410 && command = "holdback_y"
trigger3 = stateno = 1530 && command = "holdback_x"
trigger4 = stateno = 1530 && command = "holdback_y"
[State -1]
type = ChangeState
value = 1422
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1411 && command = "holdfwddown_x"
trigger2 = stateno = 1411 && command = "holdfwddown_y"
trigger3 = stateno = 1412 && command = "holdfwddown_x"
trigger4 = stateno = 1412 && command = "holdfwddown_y"
trigger5 = stateno = 1413 && command = "holdfwddown_x"
trigger6 = stateno = 1413 && command = "holdfwddown_y"
trigger7 = stateno = 1414 && command = "holdfwddown_x"
trigger8 = stateno = 1414 && command = "holdfwddown_y"
trigger9 = stateno = 1415 && command = "holdfwddown_x"
trigger10 = stateno = 1415 && command = "holdfwddown_y"
trigger11 = stateno = 1416 && command = "holdfwddown_x"
trigger12 = stateno = 1416 && command = "holdfwddown_y"
trigger13 = stateno = 1417 && command = "holdfwddown_x"
trigger14 = stateno = 1417 && command = "holdfwddown_y"
trigger15 = stateno = 1418 && command = "holdfwddown_x"
trigger16 = stateno = 1418 && command = "holdfwddown_y"
[State -1]
type = ChangeState
value = 1425
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1411 && command = "holdfwdup_x"
trigger2 = stateno = 1411 && command = "holdfwdup_y"
trigger3 = stateno = 1412 && command = "holdfwdup_x"
trigger4 = stateno = 1412 && command = "holdfwdup_y"
trigger5 = stateno = 1413 && command = "holdfwdup_x"
trigger6 = stateno = 1413 && command = "holdfwdup_y"
trigger7 = stateno = 1414 && command = "holdfwdup_x"
trigger8 = stateno = 1414 && command = "holdfwdup_y"
trigger9 = stateno = 1415 && command = "holdfwdup_x"
trigger10 = stateno = 1415 && command = "holdfwdup_y"
trigger11 = stateno = 1416 && command = "holdfwdup_x"
trigger12 = stateno = 1416 && command = "holdfwdup_y"
trigger13 = stateno = 1417 && command = "holdfwdup_x"
trigger14 = stateno = 1417 && command = "holdfwdup_y"
trigger15 = stateno = 1418 && command = "holdfwdup_x"
trigger16 = stateno = 1418 && command = "holdfwdup_y"
[State -1]
type = ChangeState
value = 1421
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1411 && command = "holdfwd_x"
trigger2 = stateno = 1411 && command = "holdfwd_y"
trigger3 = stateno = 1412 && command = "holdfwd_x"
trigger4 = stateno = 1412 && command = "holdfwd_y"
trigger5 = stateno = 1413 && command = "holdfwd_x"
trigger6 = stateno = 1413 && command = "holdfwd_y"
trigger7 = stateno = 1414 && command = "holdfwd_x"
trigger8 = stateno = 1414 && command = "holdfwd_y"
trigger9 = stateno = 1415 && command = "holdfwd_x"
trigger10 = stateno = 1415 && command = "holdfwd_y"
trigger11 = stateno = 1416 && command = "holdfwd_x"
trigger12 = stateno = 1416 && command = "holdfwd_y"
trigger13 = stateno = 1417 && command = "holdfwd_x"
trigger14 = stateno = 1417 && command = "holdfwd_y"
trigger15 = stateno = 1418 && command = "holdfwd_x"
trigger16 = stateno = 1418 && command = "holdfwd_y"
[State -1]
type = ChangeState
value = 1426
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1411 && command = "holdbackdown_x"
trigger2 = stateno = 1411 && command = "holdbackdown_y"
trigger3 = stateno = 1412 && command = "holdbackdown_x"
trigger4 = stateno = 1412 && command = "holdbackdown_y"
trigger5 = stateno = 1413 && command = "holdbackdown_x"
trigger6 = stateno = 1413 && command = "holdbackdown_y"
trigger7 = stateno = 1414 && command = "holdbackdown_x"
trigger8 = stateno = 1414 && command = "holdbackdown_y"
trigger9 = stateno = 1415 && command = "holdbackdown_x"
trigger10 = stateno = 1415 && command = "holdbackdown_y"
trigger11 = stateno = 1416 && command = "holdbackdown_x"
trigger12 = stateno = 1416 && command = "holdbackdown_y"
trigger13 = stateno = 1417 && command = "holdbackdown_x"
trigger14 = stateno = 1417 && command = "holdbackdown_y"
trigger15 = stateno = 1418 && command = "holdbackdown_x"
trigger16 = stateno = 1418 && command = "holdbackdown_y"
[State -1]
type = ChangeState
value = 1423
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1411 && command = "holddown_x"
trigger2 = stateno = 1411 && command = "holddown_y"
trigger3 = stateno = 1412 && command = "holddown_x"
trigger4 = stateno = 1412 && command = "holddown_y"
trigger5 = stateno = 1413 && command = "holddown_x"
trigger6 = stateno = 1413 && command = "holddown_y"
trigger7 = stateno = 1414 && command = "holddown_x"
trigger8 = stateno = 1414 && command = "holddown_y"
trigger9 = stateno = 1415 && command = "holddown_x"
trigger10 = stateno = 1415 && command = "holddown_y"
trigger11 = stateno = 1416 && command = "holddown_x"
trigger12 = stateno = 1416 && command = "holddown_y"
trigger13 = stateno = 1417 && command = "holddown_x"
trigger14 = stateno = 1417 && command = "holddown_y"
trigger15 = stateno = 1418 && command = "holddown_x"
trigger16 = stateno = 1418 && command = "holddown_y"
[State -1]
type = ChangeState
value = 1428
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1411 && command = "holdbackup_x"
trigger2 = stateno = 1411 && command = "holdbackup_y"
trigger3 = stateno = 1412 && command = "holdbackup_x"
trigger4 = stateno = 1412 && command = "holdbackup_y"
trigger5 = stateno = 1413 && command = "holdbackup_x"
trigger6 = stateno = 1413 && command = "holdbackup_y"
trigger7 = stateno = 1414 && command = "holdbackup_x"
trigger8 = stateno = 1414 && command = "holdbackup_y"
trigger9 = stateno = 1415 && command = "holdbackup_x"
trigger10 = stateno = 1415 && command = "holdbackup_y"
trigger11 = stateno = 1416 && command = "holdbackup_x"
trigger12 = stateno = 1416 && command = "holdbackup_y"
trigger13 = stateno = 1417 && command = "holdbackup_x"
trigger14 = stateno = 1417 && command = "holdbackup_y"
trigger15 = stateno = 1418 && command = "holdbackup_x"
trigger16 = stateno = 1418 && command = "holdbackup_y"
[State -1]
type = ChangeState
value = 1424
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1411 && command = "holdup_x"
trigger2 = stateno = 1411 && command = "holdup_y"
trigger3 = stateno = 1412 && command = "holdup_x"
trigger4 = stateno = 1412 && command = "holdup_y"
trigger5 = stateno = 1413 && command = "holdup_x"
trigger6 = stateno = 1413 && command = "holdup_y"
trigger7 = stateno = 1414 && command = "holdup_x"
trigger8 = stateno = 1414 && command = "holdup_y"
trigger9 = stateno = 1415 && command = "holdup_x"
trigger10 = stateno = 1415 && command = "holdup_y"
trigger11 = stateno = 1416 && command = "holdup_x"
trigger12 = stateno = 1416 && command = "holdup_y"
trigger13 = stateno = 1417 && command = "holdup_x"
trigger14 = stateno = 1417 && command = "holdup_y"
trigger15 = stateno = 1418 && command = "holdup_x"
trigger16 = stateno = 1418 && command = "holdup_y"
[State -1]
type = ChangeState
value = 1427
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1411 && command = "holdback_x"
trigger2 = stateno = 1411 && command = "holdback_y"
trigger3 = stateno = 1412 && command = "holdback_x"
trigger4 = stateno = 1412 && command = "holdback_y"
trigger5 = stateno = 1413 && command = "holdback_x"
trigger6 = stateno = 1413 && command = "holdback_y"
trigger7 = stateno = 1414 && command = "holdback_x"
trigger8 = stateno = 1414 && command = "holdback_y"
trigger9 = stateno = 1415 && command = "holdback_x"
trigger10 = stateno = 1415 && command = "holdback_y"
trigger11 = stateno = 1416 && command = "holdback_x"
trigger12 = stateno = 1416 && command = "holdback_y"
trigger13 = stateno = 1417 && command = "holdback_x"
trigger14 = stateno = 1417 && command = "holdback_y"
trigger15 = stateno = 1418 && command = "holdback_x"
trigger16 = stateno = 1418 && command = "holdback_y"
[State -1]
type = ChangeState
value = 1432
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1421 && command = "holdfwddown_x"
trigger2 = stateno = 1421 && command = "holdfwddown_y"
trigger3 = stateno = 1422 && command = "holdfwddown_x"
trigger4 = stateno = 1422 && command = "holdfwddown_y"
trigger5 = stateno = 1423 && command = "holdfwddown_x"
trigger6 = stateno = 1423 && command = "holdfwddown_y"
trigger7 = stateno = 1424 && command = "holdfwddown_x"
trigger8 = stateno = 1424 && command = "holdfwddown_y"
trigger9 = stateno = 1425 && command = "holdfwddown_x"
trigger10 = stateno = 1425 && command = "holdfwddown_y"
trigger11 = stateno = 1426 && command = "holdfwddown_x"
trigger12 = stateno = 1426 && command = "holdfwddown_y"
trigger13 = stateno = 1427 && command = "holdfwddown_x"
trigger14 = stateno = 1427 && command = "holdfwddown_y"
trigger15 = stateno = 1428 && command = "holdfwddown_x"
trigger16 = stateno = 1428 && command = "holdfwddown_y"
[State -1]
type = ChangeState
value = 1435
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1421 && command = "holdfwdup_x"
trigger2 = stateno = 1421 && command = "holdfwdup_y"
trigger3 = stateno = 1422 && command = "holdfwdup_x"
trigger4 = stateno = 1422 && command = "holdfwdup_y"
trigger5 = stateno = 1423 && command = "holdfwdup_x"
trigger6 = stateno = 1423 && command = "holdfwdup_y"
trigger7 = stateno = 1424 && command = "holdfwdup_x"
trigger8 = stateno = 1424 && command = "holdfwdup_y"
trigger9 = stateno = 1425 && command = "holdfwdup_x"
trigger10 = stateno = 1425 && command = "holdfwdup_y"
trigger11 = stateno = 1426 && command = "holdfwdup_x"
trigger12 = stateno = 1426 && command = "holdfwdup_y"
trigger13 = stateno = 1427 && command = "holdfwdup_x"
trigger14 = stateno = 1427 && command = "holdfwdup_y"
trigger15 = stateno = 1428 && command = "holdfwdup_x"
trigger16 = stateno = 1428 && command = "holdfwdup_y"
[State -1]
type = ChangeState
value = 1431
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1421 && command = "holdfwd_x"
trigger2 = stateno = 1421 && command = "holdfwd_y"
trigger3 = stateno = 1422 && command = "holdfwd_x"
trigger4 = stateno = 1422 && command = "holdfwd_y"
trigger5 = stateno = 1423 && command = "holdfwd_x"
trigger6 = stateno = 1423 && command = "holdfwd_y"
trigger7 = stateno = 1424 && command = "holdfwd_x"
trigger8 = stateno = 1424 && command = "holdfwd_y"
trigger9 = stateno = 1425 && command = "holdfwd_x"
trigger10 = stateno = 1425 && command = "holdfwd_y"
trigger11 = stateno = 1426 && command = "holdfwd_x"
trigger12 = stateno = 1426 && command = "holdfwd_y"
trigger13 = stateno = 1427 && command = "holdfwd_x"
trigger14 = stateno = 1427 && command = "holdfwd_y"
trigger15 = stateno = 1428 && command = "holdfwd_x"
trigger16 = stateno = 1428 && command = "holdfwd_y"
[State -1]
type = ChangeState
value = 1436
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1421 && command = "holdbackdown_x"
trigger2 = stateno = 1421 && command = "holdbackdown_y"
trigger3 = stateno = 1422 && command = "holdbackdown_x"
trigger4 = stateno = 1422 && command = "holdbackdown_y"
trigger5 = stateno = 1423 && command = "holdbackdown_x"
trigger6 = stateno = 1423 && command = "holdbackdown_y"
trigger7 = stateno = 1424 && command = "holdbackdown_x"
trigger8 = stateno = 1424 && command = "holdbackdown_y"
trigger9 = stateno = 1425 && command = "holdbackdown_x"
trigger10 = stateno = 1425 && command = "holdbackdown_y"
trigger11 = stateno = 1426 && command = "holdbackdown_x"
trigger12 = stateno = 1426 && command = "holdbackdown_y"
trigger13 = stateno = 1427 && command = "holdbackdown_x"
trigger14 = stateno = 1427 && command = "holdbackdown_y"
trigger15 = stateno = 1428 && command = "holdbackdown_x"
trigger16 = stateno = 1428 && command = "holdbackdown_y"
[State -1]
type = ChangeState
value = 1433
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1421 && command = "holddown_x"
trigger2 = stateno = 1421 && command = "holddown_y"
trigger3 = stateno = 1422 && command = "holddown_x"
trigger4 = stateno = 1422 && command = "holddown_y"
trigger5 = stateno = 1423 && command = "holddown_x"
trigger6 = stateno = 1423 && command = "holddown_y"
trigger7 = stateno = 1424 && command = "holddown_x"
trigger8 = stateno = 1424 && command = "holddown_y"
trigger9 = stateno = 1425 && command = "holddown_x"
trigger10 = stateno = 1425 && command = "holddown_y"
trigger11 = stateno = 1426 && command = "holddown_x"
trigger12 = stateno = 1426 && command = "holddown_y"
trigger13 = stateno = 1427 && command = "holddown_x"
trigger14 = stateno = 1427 && command = "holddown_y"
trigger15 = stateno = 1428 && command = "holddown_x"
trigger16 = stateno = 1428 && command = "holddown_y"
[State -1]
type = ChangeState
value = 1438
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1421 && command = "holdbackup_x"
trigger2 = stateno = 1421 && command = "holdbackup_y"
trigger3 = stateno = 1422 && command = "holdbackup_x"
trigger4 = stateno = 1422 && command = "holdbackup_y"
trigger5 = stateno = 1423 && command = "holdbackup_x"
trigger6 = stateno = 1423 && command = "holdbackup_y"
trigger7 = stateno = 1424 && command = "holdbackup_x"
trigger8 = stateno = 1424 && command = "holdbackup_y"
trigger9 = stateno = 1425 && command = "holdbackup_x"
trigger10 = stateno = 1425 && command = "holdbackup_y"
trigger11 = stateno = 1426 && command = "holdbackup_x"
trigger12 = stateno = 1426 && command = "holdbackup_y"
trigger13 = stateno = 1427 && command = "holdbackup_x"
trigger14 = stateno = 1427 && command = "holdbackup_y"
trigger15 = stateno = 1428 && command = "holdbackup_x"
trigger16 = stateno = 1428 && command = "holdbackup_y"
[State -1]
type = ChangeState
value = 1434
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1421 && command = "holdup_x"
trigger2 = stateno = 1421 && command = "holdup_y"
trigger3 = stateno = 1422 && command = "holdup_x"
trigger4 = stateno = 1422 && command = "holdup_y"
trigger5 = stateno = 1423 && command = "holdup_x"
trigger6 = stateno = 1423 && command = "holdup_y"
trigger7 = stateno = 1424 && command = "holdup_x"
trigger8 = stateno = 1424 && command = "holdup_y"
trigger9 = stateno = 1425 && command = "holdup_x"
trigger10 = stateno = 1425 && command = "holdup_y"
trigger11 = stateno = 1426 && command = "holdup_x"
trigger12 = stateno = 1426 && command = "holdup_y"
trigger13 = stateno = 1427 && command = "holdup_x"
trigger14 = stateno = 1427 && command = "holdup_y"
trigger15 = stateno = 1428 && command = "holdup_x"
trigger16 = stateno = 1428 && command = "holdup_y"
[State -1]
type = ChangeState
value = 1437
triggerall = statetype = A && pos y < -31 && time > 20
trigger1 = stateno = 1421 && command = "holdback_x"
trigger2 = stateno = 1421 && command = "holdback_y"
trigger3 = stateno = 1422 && command = "holdback_x"
trigger4 = stateno = 1422 && command = "holdback_y"
trigger5 = stateno = 1423 && command = "holdback_x"
trigger6 = stateno = 1423 && command = "holdback_y"
trigger7 = stateno = 1424 && command = "holdback_x"
trigger8 = stateno = 1424 && command = "holdback_y"
trigger9 = stateno = 1425 && command = "holdback_x"
trigger10 = stateno = 1425 && command = "holdback_y"
trigger11 = stateno = 1426 && command = "holdback_x"
trigger12 = stateno = 1426 && command = "holdback_y"
trigger13 = stateno = 1427 && command = "holdback_x"
trigger14 = stateno = 1427 && command = "holdback_y"
trigger15 = stateno = 1428 && command = "holdback_x"
trigger16 = stateno = 1428 && command = "holdback_y"

; Continuacion rueda
[State -1]
type = ChangeState
value = 1360
triggerall = command = "x" && time > 18 && movecontact = 0
trigger1 = stateno = 1300
trigger2 = stateno = 1310
[State -1]
type = ChangeState
value = 1370
triggerall = command = "y" && time > 18 && movecontact = 0
trigger1 = stateno = 1300
trigger2 = stateno = 1310

; Rueda humana
[State -1]
type = ChangeState
value = 1300
triggerall = command = "qcb_x" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 609 && MoveContact
[State -1]
type = ChangeState
value = 1310
triggerall = command = "qcb_y" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 609 && MoveContact

; Tornado humano
[State -1]
type = ChangeState
value = 1200
triggerall = command = "charge_DU_x" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 40
trigger16 = stateno = 609 && MoveContact

[State -1]
type = ChangeState
value = 1220
triggerall = command = "charge_DU_y" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 203 && Movecontact
trigger4 = stateno = 205 && Movecontact
trigger5 = stateno = 300 && Movecontact
trigger6 = stateno = 301 && Movecontact
trigger7 = stateno = 303 && Movecontact
trigger8 = stateno = 400 && Movecontact
trigger9 = stateno = 401 && Movecontact
trigger10 = stateno = 402 && Movecontact
trigger11 = stateno = 403 && Movecontact
trigger12 = stateno = 404 && Movecontact
trigger13 = stateno = 900 && moveguarded = 1 && time > 26
trigger14 = stateno = 902 && movecontact
trigger15 = stateno = 40
trigger16 = stateno = 609 && MoveContact




; Patadas aereas kim
[State -1]
type = ChangeState
value = 1000
triggerall = command = "qcf_a" && statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 507 && movecontact = 1
trigger3 = stateno = 1301 && time > 33
trigger4 = stateno = 1321 && time > 33
[State -1]
type = ChangeState
value = 1020
triggerall = command = "qcf_b" && statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 507 && movecontact = 1
trigger3 = stateno = 1301 && time > 33
trigger4 = stateno = 1321 && time > 33
;---------------------------------------------------------------------------
; Double Dash
;---------------------------------------------------------------------------
; Run Forward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && command != "holddown" && ctrl = 1

; Back Step
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && command != "holddown" && ctrl = 1

; Take wall
[State -1]
type = ChangeState
value = 990
Trigger1 = backEdgeDist >= 0 && backEdgeDist < 4 && vel x < 0 && statetype = A && ctrl = 1 && command = "takewall"

;---------------------------------------------------------------------------
; Grapple Attacks
;---------------------------------------------------------------------------
; Punch Throw
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && p2statetype != A && p2movetype != H && command = "holdfwd_b" && stateno != 100
trigger1 = p2statetype = S
trigger2 = p2statetype = C

; Kick Throw
[State -1]
type = ChangeState
value = 810
triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && p2statetype != A && p2movetype != H && command = "holdfwd_y" && stateno != 100
trigger1 = p2statetype = S
trigger2 = p2statetype = C

;---------------------------------------------------------------------------
; CD Attacks
;---------------------------------------------------------------------------
; Guard cancle Attack
[State -1]
type = ChangeState
value = 602
triggerall = stateno >= 150 && stateno <= 151 && power >= 1000
trigger1 = command = "CD"

; Jumping Hard Attack
[State -1]
type = ChangeState
value = 507
trigger1 = command = "CD" && statetype = A && ctrl = 1

; Standing Hard Attack
[State -1]
type = ChangeState
value = 205
trigger1 = command = "CD" && command != "holddown" && statetype = S && ctrl = 1

;---------------------------------------------------------------------------
; Evasiones y similares
;---------------------------------------------------------------------------
; TIME BAR Escape Roll backward
[State -1]
type = ChangeState
value = 601
trigger1 = command = "roll_b" && var(7) > 0 && stateno = [150,151]

; TIME BAR Escape Roll Forward
[State -1]
type = ChangeState
value = 600
trigger1 = command = "roll_f" && var(7) > 0 && stateno = [150,151]

;Rodar atras (98 v. Advance)
[State -1]
type = ChangeState
value = 611
trigger1 = command = "roll_b" && statetype = S && ctrl = 1
;Rodar adelante (98 v. Advance)
[State -1]
type = ChangeState
value = 605
trigger1 = command = "roll_f" && statetype = S && ctrl = 1

; Dodge
[State -1]
type = ChangeState
value = 610
triggerall = command = "Dodge"
trigger1 = statetype = S
trigger1 = ctrl = 1
; Dodge Ret
[State -1]
type = ChangeState
value = 609
triggerall = stateno = 610
triggerall = AnimElem = 3, >= 0
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "a"
trigger4 = command = "b"

;---------------------------------------------------------------------------
; DIR + Button
;---------------------------------------------------------------------------
; «ÿ¬Ó∏£±‚ (Cancel)
[State -1]
type = ChangeState
value = 902
triggerall = command = "s1" && command != "holddown" && statetype != A
trigger1 = stateno = 200 && Movecontact = 1
trigger2 = stateno = 203 && Movecontact = 1
trigger3 = stateno = 205 && Movecontact = 1
trigger4 = stateno = 300 && Movecontact = 1
trigger5 = stateno = 301 && Movecontact = 1
trigger6 = stateno = 303 && Movecontact = 1
trigger7 = stateno = 400 && Movecontact = 1
trigger8 = stateno = 401 && Movecontact = 1
trigger9 = stateno = 402 && Movecontact = 1
trigger10 = stateno = 403 && Movecontact = 1
trigger11 = stateno = 404 && Movecontact = 1

; «ÿ¬Ó∏£±‚
[State -1]
type = ChangeState
value = 900
trigger1 = command = "s1" && command != "holddown" && statetype = s && ctrl = 1

; ≈Î«‡∏∂√‡
[State -1]
type = ChangeState
value = 901
triggerall = command = "s2" && command != "holddown"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && Movecontact = 1
trigger3 = stateno = 203 && Movecontact = 1
trigger4 = stateno = 205 && Movecontact = 1
trigger5 = stateno = 300 && Movecontact = 1
trigger6 = stateno = 301 && Movecontact = 1
trigger7 = stateno = 303 && Movecontact = 1
trigger8 = stateno = 400 && Movecontact = 1
trigger9 = stateno = 401 && Movecontact = 1
trigger10 = stateno = 402 && Movecontact = 1
trigger11 = stateno = 403 && Movecontact = 1
trigger12 = stateno = 404 && Movecontact = 1

;---------------------------------------------------------------------------
; Standing / Close ATTACKS
;---------------------------------------------------------------------------
; Standing Light Punch (Close)
[State -1]
type = ChangeState
value = 300
triggerall = command = "x" && command != "holddown" && statetype != A && p2bodydist x < 8
trigger1 = ctrl = 1
trigger2 = stateno = 300 && Animelemtime(2) >= 0
trigger3 = stateno = 303 && Animelemtime(2) >= 0
trigger4 = stateno = 400 && Animelemtime(2) >= 0
trigger5 = stateno = 403 && Animelemtime(2) >= 0

; Standing Hard Punch (Close)
[State -1]
type = ChangeState
value = 301
triggerall = command = "y" && command != "holddown" && statetype != A && p2bodydist x < 20
trigger1 = ctrl = 1

; Standing Light Kick (Close)
[State -1]
type = ChangeState
value = 303
triggerall = command = "a" && command != "holddown" && statetype != A && p2bodydist x < 20
trigger1 = ctrl = 1
trigger2 = stateno = 300 && Animelemtime(2) >= 0
trigger3 = stateno = 303 && Animelemtime(2) >= 0
trigger4 = stateno = 400 && Animelemtime(2) >= 0
trigger5 = stateno = 403 && Animelemtime(2) >= 0

; Standing Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Animelemtime(2) >= 0
trigger3 = stateno = 203 && Animelemtime(2) >= 0
trigger4 = stateno = 300 && Animelemtime(2) >= 0
trigger5 = stateno = 303 && Animelemtime(2) >= 0
trigger6 = stateno = 400 && Animelemtime(2) >= 0
trigger7 = stateno = 403 && Animelemtime(2) >= 0

; Standing Hard Punch
[State -1]
type = ChangeState
value = 202
triggerall = command = "y" && command != "holddown" && statetype != A
trigger1 = ctrl = 1

; Standing Light Kick
[State -1]
type = ChangeState
value = 203
triggerall = command = "a" && command != "holddown" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Animelemtime(2) >= 0
trigger3 = stateno = 203 && Animelemtime(2) >= 0
trigger4 = stateno = 300 && Animelemtime(2) >= 0
trigger5 = stateno = 303 && Animelemtime(2) >= 0
trigger6 = stateno = 400 && Animelemtime(2) >= 0
trigger7 = stateno = 403 && Animelemtime(2) >= 0

; Standing Hard Kick
[State -1]
type = ChangeState
value = 204
triggerall = command = "b" && command != "holddown" && statetype != A
trigger1 = ctrl = 1

; Crouching Light Punch (close)
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown" && statetype != A && p2bodydist x < 4
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Animelemtime(2) >= 0
trigger3 = stateno = 203 && Animelemtime(2) >= 0
trigger4 = stateno = 300 && Animelemtime(2) >= 0
trigger5 = stateno = 303 && Animelemtime(2) >= 0
trigger6 = stateno = 400 && Animelemtime(2) >= 0
trigger7 = stateno = 403 && Animelemtime(2) >= 0

;---------------------------------------------------------------------------
; crouching Attacks
;---------------------------------------------------------------------------
; Crouching light Punch
[State -1]
type = ChangeState
value = 401
triggerall = command = "x" && command = "holddown" && statetype != A && p2bodydist x >= 4
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Animelemtime(2) >= 0
trigger3 = stateno = 203 && Animelemtime(2) >= 0
trigger4 = stateno = 300 && Animelemtime(2) >= 0
trigger5 = stateno = 303 && Animelemtime(2) >= 0
trigger6 = stateno = 400 && Animelemtime(2) >= 0
trigger7 = stateno = 401 && Animelemtime(2) >= 0
trigger8 = stateno = 403 && Animelemtime(2) >= 0

; Crouching Hard Punch
[State -1]
type = ChangeState
value = 402
triggerall = command = "y" && command = "holddown" && statetype != A
trigger1 = ctrl = 1

; Crouching Light Kick
[State -1]
type = ChangeState
value = 403
triggerall = command = "a" && command = "holddown" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && Animelemtime(2) >= 0
trigger3 = stateno = 203 && Animelemtime(2) >= 0
trigger4 = stateno = 300 && Animelemtime(2) >= 0
trigger5 = stateno = 303 && Animelemtime(2) >= 0
trigger6 = stateno = 400 && Animelemtime(2) >= 0
trigger7 = stateno = 401 && Animelemtime(2) >= 0
trigger8 = stateno = 403 && Animelemtime(2) >= 0

; Crouching Hard Kick
[State -1]
type = ChangeState
value = 405
triggerall = command = "b" && command = "holddown" && statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Jumping Attacks
;---------------------------------------------------------------------------
; Jumping Light Punch
[State -1]
type = ChangeState
value = 500
trigger1 = command = "x" && statetype = A && ctrl = 1

; Jump up Hard Punch
[State -1]
type = ChangeState
value = 502
trigger1 = command = "y" && statetype = A && ctrl = 1 && vel x = 0 && stateno != 2041
; Jump Forward/Backward Hard Punch
[State -1]
type = ChangeState
value = 503
trigger1 = command = "y" && statetype = A && ctrl = 1

; Jumping Light Kick
[State -1]
type = ChangeState
value = 504
trigger1 = command = "a" && statetype = A && ctrl = 1

; Jump up Hard Kick
[State -1]
type = ChangeState
value = 505
trigger1 = command = "b" && statetype = A && ctrl = 1 && vel x = 0 && stateno != 2041
; Jump Forward/Backward Hard Kick
[State -1]
type = ChangeState
value = 506
trigger1 = command = "b" && statetype = A && ctrl = 1

;---------------------------------------------------------------------------
; Taunt
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 199
trigger1 = command = "s" && statetype = S && ctrl = 1