#Persistent
SetTimer, HotCorners, 500
return

HotCorners:
CoordMode, Mouse, Screen
WinGetPos, X, Y, Xmax, Ymax, Program Manager  ; get desktop size
MouseGetPos, MouseX, MouseY

CornerTopLeft := (MouseY = 0 and MouseX = 0)
CornerTopRight := (MouseY = 0 and MouseX = Xmax)
CornerBottomLeft := (MouseY = Ymax and MouseX = 0)
CornerBottomRight := (MouseY = Ymax and MouseX = Xmax)


if (CornerTopLeft and MouseIsOverClass("Shell_TrayWnd")) ; Only run hotcorner is mouse cursor currently at taskbar
{
	Send, #{Tab}
	Sleep, 3000
}
else if (CornerTopRight and MouseIsOverClass("Shell_TrayWnd"))
{
	Sleep, 3000
}
else if (CornerBottomLeft and MouseIsOverClass("Shell_TrayWnd"))
{
	Sleep, 3000
}
else if (CornerBottomRight and MouseIsOverClass("Shell_TrayWnd"))
{
	Sleep, 3000
}
return

MouseIsOverClass(sought){
MouseGetPos,,,WinID
WinGetClass, WinClass, ahk_id %WinID%
return WinClass=sought ; ends up returning true if they are equal, else false if they are not equal
}