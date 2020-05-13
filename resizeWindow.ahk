; CTRL + ALT to move mouse to bottom right of active window
LCtrl & LAlt::
CoordMode, Pixel, Screen
MouseGetPos, PosX, PosY, msWin, msCtrl
WinGetPos, wX, wY, wW, wH, A
MouseMove, wW - 5, wH - 5, 0
Loop
	{
    Sleep, 10
    if !GetKeyState("LAlt", "P")
        break
	}
return

; CTRL + Win simulate Alt+Space, m to enter move mode
LCtrl & LWin::
Send {AltDown}+{Space}
Sleep 50
Send m
return