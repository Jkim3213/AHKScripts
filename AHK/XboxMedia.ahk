#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2

LWin & x::Suspend
#If GetKeyState("Joy9","P") ; Left Toggle
Joy1::Send {Media_Play_Pause} ; A Button
Joy2::SoundSet, 12 ; B Button
Joy8::Send {Volume_Mute} ; Start Button
Joy4::Send {Volume_Up} ; X Button
Joy3::Send {Volume_Down} ; Y Button
Joy6::Send {Media_Next} ; Right Bumber
Joy5::Send {Media_Prev} ; Left Bumber
#If GetKeyState("Joy10","P") ; Right Toggle
Joy5::
    if WinActive("FB Alpha") 
        Send {F3} ; Left Bumper
    Return
Joy7::Suspend
Joy9::
    Sleep, 1000
    SendMessage 0x112, 0xF140, 0, , Program Manager  ; Start screensaver
    SendMessage 0x112, 0xF170, 2, , Program Manager  ; Monitor off
	Return
