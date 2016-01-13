/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
	
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		
		//Special Vehicle Horn #1
		life_actions = [player addAction["<t color='#297ACC'>F*ck the Police Horn</t>",{player say3d "fpolice"},"",0,false,false,"",'
	    (vehicle player isKindOf "LandVehicle") ']];
			
		//Use Chemlights in hand
		life_actions = life_actions + [player addAction["Chemlight (RED) in Hand",life_fnc_chemlightUse,"red",-1,false,false,"",
		' isNil "life_chemlight" && "Chemlight_red" in (magazines player) && vehicle player == player ']];
		
		life_actions = life_actions + [player addAction["Chemlight (YELLOW) in Hand",life_fnc_chemlightUse,"yellow",-1,false,false,"",
		' isNil "life_chemlight" && "Chemlight_yellow" in (magazines player) && vehicle player == player ']];
		
		life_actions = life_actions + [player addAction["Chemlight (GREEN) in Hand",life_fnc_chemlightUse,"green",-1,false,false,"",
		' isNil "life_chemlight" && "Chemlight_green" in (magazines player) && vehicle player == player ']];
		
		life_actions = life_actions + [player addAction["Chemlight (BLUE) in Hand",life_fnc_chemlightUse,"blue",-1,false,false,"",
		' isNil "life_chemlight" && "Chemlight_blue" in (magazines player) && vehicle player == player ']];
		
		//Drop Chemlight
		life_actions = life_actions + [player addAction["Drop Chemlight",{if(isNil "life_chemlight") exitWith {};if(isNull life_chemlight) exitWith {};detach life_chemlight; life_chemlight = nil;},"",-1,false,false,"",'!isNil "life_chemlight" && !isNull life_chemlight && vehicle player == player ']];
	};
	
	case west: 
	{
	
    //Seize PlayerWeapons
    life_actions = life_actions + [player addAction["Take Weapons",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];

	//Use Chemlights in hand
	life_actions = life_actions + [player addAction["Chemlight (RED) in Hand",life_fnc_chemlightUse,"red",-1,false,false,"",
	' isNil "life_chemlight" && "Chemlight_red" in (magazines player) && vehicle player == player ']];
		
	life_actions = life_actions + [player addAction["Chemlight (YELLOW) in Hand",life_fnc_chemlightUse,"yellow",-1,false,false,"",
	' isNil "life_chemlight" && "Chemlight_yellow" in (magazines player) && vehicle player == player ']];
		
	life_actions = life_actions + [player addAction["Chemlight (GREEN) in Hand",life_fnc_chemlightUse,"green",-1,false,false,"",
	' isNil "life_chemlight" && "Chemlight_green" in (magazines player) && vehicle player == player ']];
		
	life_actions = life_actions + [player addAction["Chemlight (BLUE) in Hand",life_fnc_chemlightUse,"blue",-1,false,false,"",
	' isNil "life_chemlight" && "Chemlight_blue" in (magazines player) && vehicle player == player ']];
		
	//Drop Chemlight
	life_actions = life_actions + [player addAction["Drop Chemlight",{if(isNil "life_chemlight") exitWith {};if(isNull life_chemlight) exitWith {};detach life_chemlight; life_chemlight = nil;},"",-1,false,false,"",'!isNil "life_chemlight" && !isNull life_chemlight && vehicle player == player ']];
	};
};