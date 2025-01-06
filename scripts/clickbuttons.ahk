; AutoHotkey v2 script for automatic clicking

global clicking := false
global clickX := 32  ; Specify your desired X coordinate here
global clickY := 688  ; Specify your desired Y coordinate here
CoordMode "Mouse", "Screen"

; Start clicking when F1 is pressed
F1::{
    global clicking, clickX, clickY
    clicking := true
    while (clicking) {
        Click clickX, clickY
        Sleep 1000 ; Wait 1 second between clicks
    }
}

; Stop clicking when Shift+F1 is pressed
F2::{
    global clicking
    clicking := false
}

F3::{
    global clickX
	global clickY
	
	MouseGetPos &newposX, &newposY
	
	clickX := newposX
	clickY := newposY
}

; Exit script with Ctrl+Esc
^Esc::ExitApp
