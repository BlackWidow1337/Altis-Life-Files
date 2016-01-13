_p = _this select 1;
_i = _this select 2;
if (soundVolume == 0.5) then {
	0.5 fadeSound 1;
	_p setUserActionText [_i,"<t color='#ffff33'>Put on ear plugs</t>"];
} else {
	0.5 fadeSound 0.5;
	_p setUserActionText [_i,"<t color='#ffff33'>Take off ear plugs</t>"];
};