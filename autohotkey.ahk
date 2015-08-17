;-----------------------GLOBAL-------------------------------------------------

; open %APPDATA% with Win-a
#a::
Run, %APPDATA%
return

;-----------------------CAPS LOCK----------------------------------------------

SetCapsLockState, AlwaysOff

;toggle CapsLock with Shift+Caps
+CapsLock::
If GetKeyState("Capslock","T")
{
	SetCapsLockState, AlwaysOff
}
Else
{
	SetCapsLockState, On
}
return

CapsLock::
Send !{Space}
return

Capslock & h::
Send {Home}
return

Capslock & e::
Send {End}
return

;----------------------------F1------------------------------------------------

; Map F1 to F2
F1::
Send {F2}
return

;-------------------------WINDOWS EXPLORER-------------------------------------

; New folder script -- Creates new folder  in Windows Explorer with Ctrl-N
#IfWinActive, ahk_class CabinetWClass
^n::
sendinput {Alt Down}fwf{Alt Up}
return

; Set View to Details in Windows Explorer with Ctrl-D
#IfWinActive, ahk_class CabinetWClass
^d::
sendinput {Alt Down}vd{Alt Up}
return

; Send to Compressed (Zipped) in Windows Explorer with Ctrl-E
#IfWinActive, ahk_class CabinetWClass
^e::
sendinput {Alt Down}fnnn{Enter}{Enter}{Alt Up}
return

; Toggle view Image in Windows Explorer with Ctrl-P
#IfWinActive, ahk_class CabinetWClass
^p::
sendinput {Alt Down}to{Alt Up}{Shift Down}{Tab}{Shift Up}{Right}{Tab 3}{Down}{Space}{Enter}
return


; Open current folder in cmd prompt with Win-C
#IfWinactive ahk_class CabinetWClass 
#c::
sendinput !{d}
sendinput c:\windows\system32\cmd.exe .
sendinput {enter}
return

; Open current explorer folder in cmd prompt with Win-C
#IfWinactive ahk_class ExploreWClass
#c::
sendinput !{d}
sendinput c:\windows\system32\cmd.exe .
sendinput {enter}
return 

;-------------------------------EXCEL------------------------------------------

; Set cell number format to Text in Excel with Ctrl-T
;#IfWinActive, ahk_class XLMAIN
;^t::
;sendinput {Alt Down}hn{Alt Up}Text{Enter}
;return

; Create new tab with Ctrl-T
#IfWinActive, ahk_class XLMAIN
^t::
sendinput {Shift Down}{F11}{Shift Up}
return

; Set sql text in Excel with Ctrl-Shift-S
#IfWinActive, ahk_class XLMAIN
^+s::
sendinput {F2}{=}"'"&&"',"{Left 5}
return

; Refresh pivot table
; in Excel with Ctrl-Shift-R
#IfWinActive, ahk_class XLMAIN
^+r::
sendinput {Alt Down}jtfa{Alt Up}
return

; Switch to prev tab in Excel with Ctrl-Tab
#IfWinActive, ahk_class XLMAIN
^Tab::
sendinput {Control Down}{PgDn}{Control Down}
return

; Switch to next tab in Excel with Ctrl-Tab
#IfWinActive, ahk_class XLMAIN
^+Tab::
sendinput {Control Down}{PgUp}{Control Down}
return

; F2 + Enter with Ctrl-Shift-F
;#IfWinActive, ahk_class XLMAIN
;^+f::
;sendinput {F2}{Enter}
;return