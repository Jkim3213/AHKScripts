#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;play/pause song
Ctrl & Space::
Pause::
    Send {Media_Play_Pause}
    return

;skip song
Ctrl & PgUp::
    Send {Media_Next}
    return

;back song
Ctrl & PgDn::
    Send {Media_Prev}
    return

;volume up
Ctrl & Up::
    Send {Volume_Up}
    return

;volume down
Ctrl & Down::
    Send {Volume_Down}
    return