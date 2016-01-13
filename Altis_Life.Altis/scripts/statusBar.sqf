waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
	File: fn_statusBar.sqf
	Author: Some French Guy named Osef I presume, given the variable on the status bar
	Edited by: [midgetgrimm]
	Description: Puts a small bar in the bottom right of screen to display in-game information

*/
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetStructuredText parseText format["| <t color='#4752e0'>Cops: %1</t> | <t color='#bf7e00'>Civs: %2</t> | <t color='#00DD00'>Medics: %3</t> | <t color='#800080'>FPS: %4</t> | <t color='#ff0000'>www.intgamer.net </t> | <t color='#fbf896'>Uptime: %5 </t>", west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, round diag_fps, [serverTime,"HH:MM:SS"] call BIS_fnc_secondsToString ];
	}; 
};