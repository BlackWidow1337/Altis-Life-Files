#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/
#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 6) exitWith {closeDialog 0; hint "You have no business using this"; [[0,format["Admin %1 has tried to open the debug menu.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; };

createDialog "RscDisplayDebugPublic";
[[0,format["Admin %1 has opened the Debug Console.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
