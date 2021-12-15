SetKeyDelay, -1

>!*j::
>!*i::
>!*k::
>!*l::
>!*,::
>!*.::
	IKey := ((GetKeyState("i","P")) ? ("{up}") : (""))
	JKey := ((GetKeyState("j","P")) ? ("{left}") : (""))
	KKey := ((GetKeyState("k","P")) ? ("{down}") : (""))
	LKey := ((GetKeyState("l","P")) ? ("{right}") : (""))
	CommaKey := ((GetKeyState(",","P")) ? ("{home}") : (""))
	PeriodKey := ((GetKeyState(".","P")) ? ("{end}") : (""))
	ShiftModDn := ((GetKeyState("Shift","P")) ? ("{shift down}") : (""))
	ShiftModUp := StrReplace(ShiftModDn, "down", "up")
	CtrlModDn := ((GetKeyState("Ctrl","P")) ? ("{ctrl down}") : (""))
	CtrlModUp := StrReplace(CtrlModDn, "down", "up")
	LAltModDn := ((GetKeyState("LAlt","P")) ? ("{lalt down}") : (""))
	LAltModUp := StrReplace(LAltModDn, "down", "up")

	Send %CtrlModDn%%LAltModDn%%ShiftModDn%%IKey%%JKey%%KKey%%LKey%%CommaKey%%PeriodKey%%ShiftModUp%%LAltModUp%%CtrlModUp%           
return


