SetKeyDelay, -1

>!*j::
>!*i::
>!*k::
>!*l::
>!*o::
>!*m::
>!*,::
>!*.::
	iKey := GetKeyState("i","P") ? "{up}" : ""
	jKey := GetKeyState("j","P") ? "{left}" : ""
	kKey := GetKeyState("k","P") ? "{down}" : ""
	lKey := GetKeyState("l","P") ? "{right}" : ""
	oKey := GetKeyState("o","P") ? "{pgup}" : ""
	mKey := GetKeyState("m","P") ? "{pgdn}" : ""
	commaKey := GetKeyState(",","P") ? "{home}" : ""
	periodKey := GetKeyState(".","P") ? "{end}" : ""
  
	navKey := iKey jKey kKey lKey oKey mKey commaKey periodKey

	shiftDown := GetKeyState("shift","P") ? "{shift down}" : ""
	ctrlDown := GetKeyState("ctrl","P") ? "{ctrl down}" : ""
	lAltDown := GetKeyState("lalt","P") ? "{lalt down}" : ""

	modDown := shiftDown ctrlDown lAltDown
	modUp := StrReplace(modDown, "down", "up")

	Send %modDown%%navKey%%modUp%
return