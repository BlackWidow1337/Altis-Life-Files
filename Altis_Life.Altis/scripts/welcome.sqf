/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com - Edited for fuck you soligaming.com
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 4;

sleep 0; //Wait in seconds before the credits start after player is in-game

playsound "intro";	
 
_role1 = "Welcome to Massives Gaming";
_role1names = ["An Original AltisLifeRPG Server"];
_role2 = "Developed by";
_role2names = ["BlackWidow"];
_role3 = "Website";
_role3names = ["intgamer.net"];
_role4 = "Teamspeak";
_role4names = ["ts.intgamer.net"];
_role5 = "NEWS";
_role5names = ["Check website for whitelisting information"];
_role6 = "Questions?";
_role6names = ["Join our Teamspeak for any questions you may have"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#000000' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#CC0000' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];