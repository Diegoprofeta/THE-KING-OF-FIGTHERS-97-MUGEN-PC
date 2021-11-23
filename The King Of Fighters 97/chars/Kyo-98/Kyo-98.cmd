;================Kyo Kusanagi KOF98 Creado por Zelgadis & Jin==================;
;============================Play KOF MENORIAL=================================;

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-------------------------------------------------------------------------------
;----- AI INTELIGENCIA ARTIFICIAL BY ZELGADIS ----------------------------------
;-------------------------------------------------------------------------------
[Command]
name = "cpu"
command = D, F, U, UF, D, F, x+y
time = 0

[Command]
name = "cpu2"
command = B, F, U, DB, D, F, a+b
time = 0

[Command]
name = "cpu3"
command = B, U, DB, D, F, D, c
time = 0

[Command]
name = "cpu4"
command = F, D, UB, F, B, D, a
time = 0

[Command]
name = "cpu5"
command = F+a, b+c+D, c+x+a+UB
time = 0

[Command]
name = "cpu6"
command = F+b+c, D, UB, c+a, c+x+UF
time = 0

[Command]
name = "cpu7"
command = F, U, B, F, UF, U, B, DF, c+z
time = 0

[Command]
name = "cpu8"
command = F, U, B, F, UF, U, B, DU, c+z
time = 0

[Command]
name = "cpu9"
command = F, U, B, F, UF, U, B, D, D, c+z
time = 0

[Command]
name = "cpu10"
command = F, U, B, F, UF, U, B, c+z+UB
time = 0

[Command]
name = "cpu11"
command = F, U, B, F, UF, U, B, c+z+UD
time = 0

[Command]
name = "cpu12"
command = F, U, B, F, UF, U, B, a+b
time = 0

[Command]
name = "cpu13"
command = F, U, B, F, UF, U, B, c+y
time = 0

[Command]
name = "cpu14"
command = F, U, B, F, UF, U, B, c+x
time = 0

[Command]
name = "cpu15"
command = F, U, B, F, UF, U, B, c+b
time = 0

[Command]
name = "cpu16"
command = F, U, B, F, UF, U, B, c+a
time = 0

[Command]
name = "cpu17"
command = F, U, B, F, UF, U, B, c+z+b
time = 0

[Command]
name = "cpu18"
command = F, U, B, F, UF, U, B, c+z+a
time = 0

[Command]
name = "cpu19"
command = F, U, B, F, UF, U, B, c+z+x
time = 0

[Command]
name = "cpu20"
command = F, U, B, F, UF, U, B, c+z+B
time = 0

[Command]
name = "cpu21"
command = F, U, B, F, UF, U, B, c+z+y
time = 0

[Command]
name = "cpu22"
command = F, U, B, F, UF, U, B, a+b
time = 0

[Command]
name = "cpu23"
command = F, U, B, F, UF, U, B, c+y
time = 0

[Command]
name = "cpu24"
command = F, U, B, F, UF, U, B, c+x
time = 0

[Command]
name = "cpu25"
command = F, U, B, F, UF, U, B, c+b
time = 0

[Command]
name = "cpu26"
command = F, U, B, F, UF, U, B, c+a
time = 0

[Command]
name = "cpu27"
command = F, U, B, F, UF, U, B, c+z+b
time = 0

[Command]
name = "cpu28"
command = F, U, B, F, UF, U, B, c+z+a
time = 0

[Command]
name = "cpu29"
command = F, U, B, F, UF, U, B, c+z+x
time = 0

[Command]
name = "cpu30"
command = F, U, B, F, UF, U, B, c+z+B
time = 0

[Command]
name = "cpu31"
command = F, UD, B, F, UF, U, B, c+z+y
time = 0

[Command]
name = "cpu32"
command = F, U, BD, F, UF, U, B, c+z+y
time = 0

[Command]
name = "cpu33"
command = F, UF, B, F, UF, U, B, c+z+y
time = 0

[Command]
name = "cpu34"
command = D, D, D, D, D, D, D, x
time = 1

;-| Deafauls |------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1
;-------------------------------------------------------------------------------
;-| Movimientos Dobles |--------------------------------------------------------

[Command]
name = "Doble Orochinagi"
command = ~D, B, $D, F, x+y  ;c
time = 25
buffer.time = 6

[Command]
name = "ÅIŒˆí‰œ‹`E—ëŽ®"
command = ~D, F, D, F, x+y  ; c
time = 25
buffer.time = 6

;-------------------------------------------------------------------------------
;-| Movimientos Especiales |----------------------------------------------------

[Command]
name = "Orochinagi"
command = ~D, B, $D, F, x
time = 25
buffer.time = 6

[Command]
name = "Orochinagi"
command = ~D, B, $D, F, y
time = 25
buffer.time = 6

[Command]
name = "volcan"
command = ~D, F, D, F, x
time = 25
buffer.time = 6

[Command]
name = "volcan"
command = ~D, F, D, F, y
time = 25
buffer.time = 6

;------------------------------------------------------------------------------
;-| •KŽE‹Z |-------------------------------------------------------------------

[Command]
name = "Žã“ó•SE“óŽ®E‹ÕŒŽ@—z"
command = ~F, $D, B, a
time = 25
buffer.time = 6

[Command]
name = "‹­“ó•SE“óŽ®E‹ÕŒŽ@—z"
command = ~F, $D, B, b
time = 25
buffer.time = 6

[Command]
name = "•S“óEŽµŽ®E”ªŽK"
command = ~F, $D, B, x
time = 25
buffer.time = 6

[Command]
name = "•S“óEŽµŽ®E”ªŽK"
command = ~F, $D, B, y
time = 25
buffer.time = 6

[Command]
name = "Žã•SˆëŽ®EžOŽÔ"
command = ~B, D, DB, a
buffer.time = 6

[Command]
name = "‹­•SˆëŽ®EžOŽÔ"
command = ~B, D, DB, b
buffer.time = 6

[Command]
name = "Žã•SŽ®E‹SÄ‚«"
command = ~F, D, DF, x
time = 15
buffer.time = 5

[Command]
name = "‹­•SŽ®E‹SÄ‚«"
command = ~F, D, DF, y
time = 15
buffer.time = 5

[Command]
name = "Žã‹ã•SEŽ®EêK“E‚Ý"
command = ~D, DB, B, x
buffer.time = 6

[Command]
name = "‹­‹ã•SEŽ®EêK“E‚Ý"
command = ~D, DB, B, y
buffer.time = 6

[Command]
name = "ŽãŽµEŒÜŽ®E‰ü"
command = ~D, DF, F, a
buffer.time = 6

[Command]
name = "‹­ŽµEŒÜŽ®E‰ü"
command = ~D, DF, F, b
buffer.time = 6

[Command]
name = "Žã•S”ªŽ®EˆÅ•¥‚¢"
command = ~D, DF, F, x
time = 15
buffer.time = 1

[Command]
name = "‹­•S”ªŽ®EˆÅ•¥‚¢"
command = ~D, DF, F, y
time = 15
buffer.time = 1

[Command]
name = "jump"    
command = D, $U
time = 12

[command]
name = "Change"
command = ~x, x, x, x, x
time = 35

[command]
name = "Change"
command = ~y, y, y, y, y
time = 35
;------------------------------------------------------------------------------
;-| ƒL[‚Q‰ñ˜A‘±“ü—Í |---------------------------------------------------------
[Command]
name = "FF"     ;—v‹Ï‚Ý (ƒL[‚Ì•ÏX‚Í‰Â”\‚Å‚·‚ª–¼‘O‚ð•Ï‚¦‚½‚è–³Œø‚É‚µ‚Ä‚Í‚¢‚¯‚Ü‚¹‚ñ)
command = F, F
time = 10
buffer.time = 6

[Command]
name = "BB"     ;—v‹Ï‚Ý (ƒL[‚Ì•ÏX‚Í‰Â”\‚Å‚·‚ª–¼‘O‚ð•Ï‚¦‚½‚è–³Œø‚É‚µ‚Ä‚Í‚¢‚¯‚Ü‚¹‚ñ)
command = B, B
time = 10
buffer.time = 6

;------------------------------------------------------------------------------
;-| “¯Žž‰Ÿ‚µ |-----------------------------------------------------------------
[Command]
name = "recovery"   ;—v‹Ï‚Ý (ƒL[‚Ì•ÏX‚Í‰Â”\‚Å‚·‚ª–¼‘O‚ð•Ï‚¦‚½‚è–³Œø‚É‚µ‚Ä‚Í‚¢‚¯‚Ü‚¹‚ñ)
command = x+a
time = 1
buffer.time = 6

[Command]
name = "recovery"   ;—v‹Ï‚Ý (ƒL[‚Ì•ÏX‚Í‰Â”\‚Å‚·‚ª–¼‘O‚ð•Ï‚¦‚½‚è–³Œø‚É‚µ‚Ä‚Í‚¢‚¯‚Ü‚¹‚ñ)
command = z
time = 1
buffer.time = 6

[Command]
name = "‚Ó‚Á‚Æ‚Î‚µ"
command = y+b
time = 1

[Command]
name = "‚Ó‚Á‚Æ‚Î‚µ"
command = c
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

;------------------------------------------------------------------------------
;-| •ûŒüƒL[{ƒ{ƒ^ƒ“ |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ƒ{ƒ^ƒ“’P”­ |---------------------------------------------------------------
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

;------------------------------------------------------------------------------
;-| •ûŒüƒL[‰Ÿ‚µ‚Á‚Ï‚È‚µ |-----------------------------------------------------
[Command]
name = "holdfwd"   ;—v‹Ï‚Ý (ƒL[‚Ì•ÏX‚Í‰Â”\‚Å‚·‚ª–¼‘O‚ð•Ï‚¦‚½‚è–³Œø‚É‚µ‚Ä‚Í‚¢‚¯‚Ü‚¹‚ñ)
command = /$F
time = 1

[Command]
name = "holdback"  ;—v‹Ï‚Ý (ƒL[‚Ì•ÏX‚Í‰Â”\‚Å‚·‚ª–¼‘O‚ð•Ï‚¦‚½‚è–³Œø‚É‚µ‚Ä‚Í‚¢‚¯‚Ü‚¹‚ñ)
command = /$B
time = 1

[Command]
name = "holdup"    ;—v‹Ï‚Ý (ƒL[‚Ì•ÏX‚Í‰Â”\‚Å‚·‚ª–¼‘O‚ð•Ï‚¦‚½‚è–³Œø‚É‚µ‚Ä‚Í‚¢‚¯‚Ü‚¹‚ñ)
command = /$U
time = 1

[Command]
name = "holddown"  ;—v‹Ï‚Ý (ƒL[‚Ì•ÏX‚Í‰Â”\‚Å‚·‚ª–¼‘O‚ð•Ï‚¦‚½‚è–³Œø‚É‚µ‚Ä‚Í‚¢‚¯‚Ü‚¹‚ñ)
command = /$D
time = 1

[Command]
name = "holdxy"
command = /$x+y
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

;------------------------------------------------------------------------------
;==============================================================================

[Statedef -1]

;==============================================================================
;ÅIŒˆí‰œ‹`E—ëŽ®
[State -1, ZEROSHIKI]
type = ChangeState
value = 3000
triggerall = command = "ÅIŒˆí‰œ‹`E—ëŽ®"
triggerall = power >= 2000
triggerall = var(5) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 315  && movecontact && time = [22,39]
trigger12 = stateno = 100
triggerall = var(50) = 0
;==============================================================================
;Doble Orochinagi
[State -1, Doble Orochinagi]
type = ChangeState
value = 2500
triggerall = command = "Doble Orochinagi"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 315  && movecontact && time = [22,39]
trigger12 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;Orochinagi
[State -1, Orochinagi]
type = ChangeState
value = 2000
triggerall = command = "Orochinagi"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 315  && movecontact && time = [22,39]
trigger12 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;—ëŽ®Eˆë”V’i
[State -1, ZEROSIKI 01]
type = ChangeState
value = 2200
triggerall = command = "volcan"
triggerall = var(5) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 315  && movecontact && time = [22,39]
trigger12 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;Žã“ó•SE“óŽ®E‹ÕŒŽ@—z
[State -1, L KOTOTSUKI]
type = ChangeState
value = 1400
triggerall = command = "Žã“ó•SE“óŽ®E‹ÕŒŽ@—z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;---------------------------------------------------------------------------

;‹­“ó•SE“óŽ®E‹ÕŒŽ@—z
[State -1, S KOTOTSUKI]
type = ChangeState
value = 1450
triggerall = command = "‹­“ó•SE“óŽ®E‹ÕŒŽ@—z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;Žã“ÆŠy“j‚è
[State -1, L RED]
type = ChangeState
value = 1800
triggerall = command = "Žã•SˆëŽ®EžOŽÔ"
triggerall = statetype != A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0

;‹­“ÆŠy“j‚è
[State -1, S RED]
type = ChangeState
value = 1850
triggerall = command = "‹­•SˆëŽ®EžOŽÔ"
triggerall = statetype != A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0

;------------------------------------------------------------------------------
;Žã•SˆëŽ®EžOŽÔ
[State -1, L ONIYAKI]
type = ChangeState
value = 1500
triggerall = command = "Žã•SˆëŽ®EžOŽÔ"
triggerall = statetype != A
triggerall = var(5) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;---------------------------------------------------------------------------

;‹­•SˆëŽ®EžOŽÔ
[State -1, S ONIYAKI]
type = ChangeState
value = 1550
triggerall = command = "‹­•SˆëŽ®EžOŽÔ"
triggerall = statetype != A
triggerall = var(5) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;Žã•SŽ®E‹SÄ‚«
[State -1, L ONIYAKI]
type = ChangeState
value = 1100
triggerall = command = "Žã•SŽ®E‹SÄ‚«"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;---------------------------------------------------------------------------

;‹­•SŽ®E‹SÄ‚«
[State -1, S ONIYAKI]
type = ChangeState
value = 1150
triggerall = command = "‹­•SŽ®E‹SÄ‚«"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;Žã‹ã•SEŽ®EêK“E‚Ý
[State -1, L 910]
type = ChangeState
value = 1300
triggerall = command = "Žã‹ã•SEŽ®EêK“E‚Ý"
triggerall = statetype != A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;‹­‹ã•SEŽ®EêK“E‚Ý
[State -1, S 910]
type = ChangeState
value = 1350
triggerall = command = "‹­‹ã•SEŽ®EêK“E‚Ý"
triggerall = statetype != A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;ŽãŽµEŒÜŽ®E‰ü
[State -1, L 75]
type = ChangeState
value = 1200
triggerall = command = "ŽãŽµEŒÜŽ®E‰ü"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;---------------------------------------------------------------------------

;‹­ŽµEŒÜŽ®E‰ü
[State -1, S 75]
type = ChangeState
value = 1250
triggerall = command = "‹­ŽµEŒÜŽ®E‰ü"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;•SEŽlŽ®Er™ù‚Ý
[State -1, ARAGAMI]
type = ChangeState
value = 1600
triggerall = command = "Žã•S”ªŽ®EˆÅ•¥‚¢"
triggerall = statetype != A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;---------------------------------------------------------------------------

;•SEŒÜŽ®E“Å™ù‚Ý
[State -1, DOKUGAMI]
type = ChangeState
value = 1700
triggerall = command = "‹­•S”ªŽ®EˆÅ•¥‚¢"
triggerall = statetype != A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;Žã•S”ªŽ®EˆÅ•¥‚¢
[State -1, L YAMIBARAI]
type = ChangeState
value = 1000
triggerall = command = "Žã•S”ªŽ®EˆÅ•¥‚¢"
triggerall = statetype != A
triggerall = numprojID(1000) = 0
triggerall = var(5) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;---------------------------------------------------------------------------

;‹­•S”ªŽ®EˆÅ•¥‚¢
[State -1, S YAMIBARAI]
type = ChangeState
value = 1050
triggerall = command = "‹­•S”ªŽ®EˆÅ•¥‚¢"
triggerall = statetype != A
triggerall = numprojID(1000) = 0
triggerall = var(5) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
trigger11 = stateno = 300 && prevstateno != [120,152]
trigger12 = stateno = 315  && movecontact && time = [22,39]
trigger13 = stateno = 100
triggerall = var(50) = 0
;---------------------------------------------------------------------------
[State -1, T S]
type = ChangeState
value = 710
triggerall = command = "recovery" && command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = 150
trigger3 = power >= 1000
trigger3 = stateno = 152
triggerall = var(50) = 0
;---------------------------------------------------------------------------
[State -1, T S]
type = ChangeState
value = 700
triggerall = command = "recovery"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = 150
trigger3 = power >= 1000
trigger3 = stateno = 152
trigger4 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;‚Ó‚Á‚Æ‚Î‚µ
[State -1, Throw]
type = ChangeState
value = 300
triggerall = command = "‚Ó‚Á‚Æ‚Î‚µ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = 150
trigger3 = power >= 1000
trigger3 = stateno = 152
trigger4 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;‹ó’†‚Ó‚Á‚Æ‚Î‚µ
[State -1, CD]
type = ChangeState
value = 650
triggerall = command = "‚Ó‚Á‚Æ‚Î‚µ"
triggerall = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;P“Š‚°
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = stateno != 100
triggerall = statetype = S
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;K“Š‚°
[State -1, Throw]
type = ChangeState
value = 801
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = stateno != 100
triggerall = statetype = S
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;ŠOŽ®E“Þ—Ž—Ž‚Æ‚µ
[State -1, NARAKU]
type = ChangeState
value = 330
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 105
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;”ªE”ªŽ®
[State -1, 88]
type = ChangeState
value = 320
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;ŠOŽ®EŒ•€@—z
[State -1, GOUHU]
type = ChangeState
value = 310
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact && time = [0,15]
trigger5 = stateno = 235 && movecontact && time = [0,10]
trigger6 = stateno = 245 && movecontact && time = [0,6]
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact && time = [0,11]
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
triggerall = var(50) = 0
;------------------------------------------------------------------------------
; Power charge
[State -1]
type = ChangeState
value = 910
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "holda"
trigger1 = command = "holdy"
trigger2 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;ƒ_ƒbƒVƒ…
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = var(50) = 0

;ƒoƒbƒNƒXƒeƒbƒv
[State -1, Back Step]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = var(50) = 0

;==============================================================================
;‹ß‹——£—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 18
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0

;‰“‹——£—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0

;‹ß‹——£—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 40
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0

;‰“‹——£—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0

;------------------------------------------------------------------------------
;‹ß‹——£—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 14
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0

;‰“‹——£—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0

;‹ß‹——£—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 40
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0

;‰“‹——£—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

triggerall = var(50) = 0

;------------------------------------------------------------------------------
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl
triggerall = var(50) = 0

;------------------------------------------------------------------------------
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 4 && movecontact
trigger3 = stateno = 100
triggerall = var(50) = 0

;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0

;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvŽãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0

;ƒWƒƒƒ“ƒv‹­ƒpƒ“ƒ`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0
;------------------------------------------------------------------------------
;‚’¼ƒWƒƒƒ“ƒvŽãƒLƒbƒN
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0

;ŽÎ‚ßƒWƒƒƒ“ƒvŽãƒLƒbƒN
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0

;‚’¼ƒWƒƒƒ“ƒv‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0

;ŽÎ‚ßƒWƒƒƒ“ƒv‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl
triggerall = var(50) = 0

;-------------------------------------------------------------------------------

[State -1, recovery]
type = ChangeState
value = 5201
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > 0
trigger1 = vel y > 0
;-------------------------------------------------------------------------------

[State Camondos de AI]
type = VarSet
triggerall = alive
triggerall = stateno < 5500
trigger1 = command = "cpu"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"
trigger33 = command = "cpu33"
trigger33 = command = "cpu34"
v = 50
value = 1
ignorehitpause = 1
persistent = 1

[State OFF]
type = VarSet
trigger1 = roundstate>2
trigger2 = !alive
trigger3 = stateno = 5500
v = 50
value = 0
ignorehitpause = 1
persistent = 1

;------------------------------------------------------------------------------
[State AI]
type = ChangeState
value = 1100
triggerall = var(50) != 0
triggerall = random <= 600
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype = A
triggerall = p2bodydist x = [2,80]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 800
triggerall = var(50) != 0
triggerall = random <= 350
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x <= 20
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 215
triggerall = var(50) != 0
triggerall = random <= 300
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,15]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 315
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 600
trigger1 = stateno = 215
trigger1 = time = 8

[State AI]
type = ChangeState
value = 1450
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movehit
triggerall = power <= 999
triggerall = random <= 999
trigger1 = stateno = 315
trigger1 = time = 26

[State AI]
type = ChangeState
value = 1600
triggerall = var(50) != 0
triggerall = random <= 200
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [50,89]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1600
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = moveguarded
triggerall = random <= 999
trigger1 = stateno = 315
trigger1 = time = 26

[State AI]
type = ChangeState
value = 1610
triggerall = var(50) != 0
triggerall = p2statetype = S
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 1605
trigger1 = time = 15

[State AI]
type = ChangeState
value = 1620
triggerall = var(50) != 0
triggerall = p2statetype = C
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 1605
trigger1 = time = 15

[State AI]
type = ChangeState
value = 1640
triggerall = var(50) != 0
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 1620
trigger1 = time = 15

[State AI]
type = ChangeState
value = 1630
triggerall = var(50) != 0
triggerall = p2statetype = A
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 1610
trigger1 = time = 15

[State AI]
type = ChangeState
value = 215
triggerall = var(50) != 0
triggerall = random <= 200
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,35]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1700
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movehit
triggerall = random <= 500
trigger1 = stateno = 215
trigger1 = time = 8


[State AI]
type = ChangeState
value = 1710
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 1700
trigger1 = time = 25

[State AI]
type = ChangeState
value = 1720
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 1710
trigger1 = time = 15

[State AI]
type = ChangeState
value = 2000
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = power >= 1000
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 315
trigger1 = time = 26

[State AI]
type = ChangeState
value = 2500
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = power >= 2000
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 315
trigger1 = time = 26

[State AI]
type = ChangeState
value = 430
triggerall = var(50) != 0
triggerall = random <= 200
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,30]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 400
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 430
trigger1 = time = 5

[State AI]
type = ChangeState
value = 3000
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = power >= 2000
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 400
trigger1 = time = 5

[State AI]
type = ChangeState
value = 2200
triggerall = var(50) != 0
triggerall = p2statetype != A
triggerall = power >= 1000
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 400
trigger1 = time = 5

[State AI]
type = ChangeState
value = 320
triggerall = var(50) != 0
triggerall = power <= 999
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 400
trigger1 = time = 5

[State AI]
type = ChangeState
value = 320
triggerall = var(50) != 0
triggerall = random <= 250
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [30,90]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 2500
triggerall = var(50) != 0
triggerall = random <= 800
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2movetype = A
triggerall = p2statetype = A
triggerall = p2bodydist x = [3,20]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 3000
triggerall = var(50) != 0
triggerall = random <= 800
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = p2bodydist x = [0,80]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1800
triggerall = var(50) != 0
triggerall = random <= 200
triggerall = roundstate = 2
triggerall = p2stateno != [5050,5121]
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2movetype != A
triggerall = p2statetype != A
triggerall = p2bodydist x = [90,130]
trigger1 = ctrl

[State AI]
type = Varset
trigger1 = var(50) != 0 && stateno = 40 && time=1
sysvar(1) = ifelse(p2statetype=L, -1+((backedgedist <70)*2), 1-((random<50&!(p2dist X<50))*2)-((p2dist X<50)*1))

[State AI]
type = VarSet
trigger1 = var(50) != 0 && stateno = 40 && time = 1
v = 4
value = ifelse(p2statetype=L||(enemy,numproj!=0), 0, ifelse(p2dist X<150, 1, 0))
ignorehitpause = 1
persistent = 1

[State AI]
type = VarSet
trigger1 = var(50) != 0 && (stateno = 40) && time = 1 && random<300
v = 3
value = 3+((p2statetype=L)*1)
ignorehitpause = 1
persistent = 1

[State AI]
type = ChangeState
triggerall = random <= 350
trigger1 = var(50) != 0 && (stateno = 50 || (stateno = [120,140]) && pos Y < 0)
trigger1 = vel Y > 0 && ifelse(p2statetype=C, p2dist Y<40, p2dist Y<60) || p2dist X < 50 && p2statetype = A || p2movetype = A && p2statetype != C
value = 330

[State AI]
type = ChangeState
trigger1 = var(50) != 0 && (stateno = 50 || (stateno = [120,140]) && pos Y < 0)
trigger1 = vel Y > 0 && ifelse(p2statetype=C, p2dist Y<40, p2dist Y<60) || p2dist X < 50 && p2statetype = A || p2movetype = A && p2statetype != C
value = ifelse(p2statetype=A||random<100, 650, ifelse(vel X = 0, 610+((random<500)*30), 610+((random<500)*35)))

[State AI]
type = ChangeState
value = 5201
triggerall = var(50) != 0 && Alive && CanRecover && Vel Y > 0 && Pos Y >= -30 && random <= 999
trigger1 = StateNo = 5050

[State AI]
type = ChangeState
value = 131
triggerall = var(50) != 0
triggerall = Roundstate = 2 && statetype != A && ctrl
trigger1 = random < 850
trigger1 = enemynear,statetype != A
trigger1 = enemynear, HitDefAttr = C,AA,AP && P2BodyDist X = [-30,80]
trigger1 = (EnemyNear,MoveType = A || p2movetype = A)
trigger2 = random < 900
trigger2 = enemynear,statetype != A && inguarddist

[State AI]
type = Changestate
value = 130
triggerall = var(50) != 0
triggerall = Roundstate = 2 && statetype != A && ctrl
trigger1 = random < 850
trigger1 = enemynear,statetype = A
trigger1 = enemynear, HitDefAttr = SA, AA, SA ,HA ,AP, SP, HP && P2BodyDist X = [-30,80]
trigger1 = (EnemyNear,MoveType = A || p2movetype = A)
trigger2 = random < 990
trigger2 = inGuardDist && Enemy, NumProj >= 1
trigger3 = random < 950
trigger3 = enemynear,statetype = A && inguarddist

[State AI]
type = ChangeState
value = 101
triggerall = var(50) != 0
triggerall = p2movetype != A
triggerall = p2bodydist x = [80,300]
triggerall = random <= 80
trigger1 = statetype != A
trigger1 = ctrl

[State AI]
type = ChangeState
value = 300
triggerall = var(50) != 0
triggerall = roundstate = 2
triggerall = p2bodydist x = [0,70]
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger1 = random <= 100

[State AI]
type = ChangeState
value = 710
triggerall = var(50) != 0
triggerall = p2stateno = [5080,5121]
triggerall = random <= 100
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,150]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 700
triggerall = var(50) != 0
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = InGuardDist = 1
triggerall = ctrl
triggerall = RoundState = 2
triggerall = random <= 790
triggerall = p2bodydist x = [70,300]
trigger1 = ctrl && enemynear,NumProj && statetype != A && random = [20,300]
trigger2 = inguarddist = [0,120]
trigger2 = ctrl && enemynear,NumProj && statetype != A
;-------------------------------------------------------------------------------
;Run de AI
[Statedef 101]
type = S
movetype = I
physics = S
anim = 100
velset = 0
ctrl = 0

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 191,]
type = PlaySnd
triggerall = time = 1
trigger1 = Alive
loop = 1
value = s3,0
channel = 6

[State 100,]
type = StopSnd
trigger1 = command != "holdfwd"
trigger2 = Anim != 100
channel = 6

[State 100, 5.1]
type = ChangeState
triggerall = var(50) = 0
trigger1 = AnimElem = 3, >= 0
trigger1 = command != "holdfwd"
value = 102

[State 100, 5.2]
type = ChangeState
triggerall = var(50) != 0
trigger1 = AnimElem = 3, >= 0
trigger1 = P2bodydist X <= 80
value = 0
ctrl = 1
