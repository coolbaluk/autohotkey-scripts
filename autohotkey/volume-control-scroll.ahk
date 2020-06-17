#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

$WheelUp:: 
$WheelDown:: 
MouseGetPos VarX, VarY, CurrentWindow 
WinGetClass Class, ahk_id %CurrentWindow% 
Vol := SubStr(A_ThisHotkey, 7)
Key := SubStr(A_ThisHotkey, 2)
If Class = Shell_TrayWnd 
    Send {Volume_%Vol%}
Else
    Send {%Key%}
Return