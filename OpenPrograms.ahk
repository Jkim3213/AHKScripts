#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;open firefox
RControl & f::
    Run, firefox.exe, C:\Program Files\Mozilla Firefox, Max
    return

;open vscode
RControl & v::
    Run, Code.exe, C:\Program Files\Microsoft VS Code, Max
    return
