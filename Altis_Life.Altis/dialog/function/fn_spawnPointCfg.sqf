/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Houser HQ","icons\policespawn.paa"],
			["cop_spawn_2","dyrgos HQ","icons\policespawn.paa"],
			["cop_spawn_3","Athira HQ","icons\policespawn.paa"],
			["cop_spawn_4","Houser Air HQ","icons\policeairspawn.paa"],
			["cop_spawn_5","HW Patrol","icons\policepatrolspawn.paa"]
			
		];
	};
	
	case civilian:
	{
		//if have reb license, only spawn here
		if(license_civ_advrebel && playerSide == civilian) then {
		_return = [
					["civ_spawn_1","Kavala","icons\kavalaspawn.paa"],
					["civ_spawn_2","dyrgos","icons\pyrgosspawn.paa"],
					["civ_spawn_3","Athira","icons\athiraspawn.paa"],
					["civ_spawn_3_4","International Airport","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofia","icons\sofiaspawn.paa"],
					["reb_spawn_1","Salt Mine. Rebel","icons\rebelspawn.paa"],
					["reb_spawn_2","Rebel City","icons\rebelspawn.paa"]
					];
		};
		//if no rebel license, than can spawn normal loc
		if(!license_civ_advrebel && playerSide == civilian) then {
		_return = [
			["civ_spawn_1","Houser","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","dyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3_4","Houser International Airport","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
	
//	case civilian:
//	{
//		_return = [
//			["civ_spawn_1","Houser","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
//			["civ_spawn_2","dyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
//		["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
//			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
//		];
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Houser Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","dygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;