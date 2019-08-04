; use mouse wheel scroll left & right to navigate virtual desktops
#If MouseIsOverClass("Shell_TrayWnd")
WheelUp::SendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up}  ; switch to previous virtual desktop
WheelDown::SendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up}  ; switch to next virtual desktop

#If MouseIsOverClass("WorkerW")
WheelUp::SendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up}  ; switch to previous virtual desktop
WheelDown::SendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up}  ; switch to next virtual desktop

MouseIsOverClass(sought){
MouseGetPos,,,WinID
WinGetClass, WinClass, ahk_id %WinID%
return WinClass=sought ; ends up returning true if they are equal, else false if they are not equal
}