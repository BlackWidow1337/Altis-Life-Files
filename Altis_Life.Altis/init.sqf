enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "vist us @ www.intgamer.net";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] spawn life_fnc_autoMessages; // Auto Messages INIT
[] execVM "scripts\welcome.sqf";
[] execVM "noside.sqf";
[] execVM "scripts\statusBar.sqf";
[] execVM "teargas.sqf";
[] execVM "scripts\fn_disableSnakes.sqf";
[] execVM "core\weather\fn_dynamicWeather.sqf";
[] execVM "scripts\fn_safeZone.sqf";
StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

[
	60*60,		// seconds to delete dead bodies (0 means don't delete) 
	0,			// seconds to delete dead vehicles (0 means don't delete)
	60*60,		// seconds to delete dropped weapons (0 means don't delete)
	120*60,		// seconds to deleted planted explosives (0 means don't delete)
	60*60 		// seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM 'scripts\fn_repetitiveCleanup.sqf';
[] spawn life_fnc_showDirectVON;
[]spawn
{
	if (local player) then
	{
		waitUntil {not(isNull (findDisplay 46))};
		(findDisplay 46) displayAddEventHandler
		[
			"KeyDown","if
				(
					((_this select 1) in actionKeys 'ForceCommandingMode')
				)
				then
				{
					true;
				};
		"];
	};
};

DYNAMICMARKET_boughtItems = [];
[[getPlayerUID player],"TON_fnc_playerLogged",false,false] spawn life_fnc_MP;