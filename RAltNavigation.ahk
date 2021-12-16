SetKeyDelay, -1

>!*j::
>!*i::
>!*k::
>!*l::
>!*,::
>!*.::
	iKey := GetKeyState("i","P") ? "{up}" : ""
	jKey := GetKeyState("j","P") ? "{left}" : ""
	kKey := GetKeyState("k","P") ? "{down}" : ""
	lKey := GetKeyState("l","P") ? "{right}" : ""
	commaKey := GetKeyState(",","P") ? "{home}" : ""
	periodKey := GetKeyState(".","P") ? "{end}" : ""
  
	navKey := iKey jKey kKey lKey commaKey periodKey

	shiftDown := GetKeyState("shift","P") ? "{shift down}" : ""
	ctrlDown := GetKeyState("ctrl","P") ? "{ctrl down}" : ""
	lAltDown := GetKeyState("lalt","P") ? "{lalt down}" : ""

	modDown := shiftDown ctrlDown lAltDown
	modUp := StrReplace(modDown, "down", "up")

	Send %modDown%%navKey%%modUp%
return