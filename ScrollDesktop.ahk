; Use mouse wheel scroll to navigate virtual desktops. Works if mouse is hovering on Taskbar or Desktop.
; This bring back feeling of scrolling virtual desktop in Gnome2/KDE Plasma.

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