#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,50],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,1500],
						["B_Carryall_khk",nil,3000]
					]
				];
			};
		};
	};
	
	case "Cadet_Shop":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cadet Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2500],
						["16Rnd_9x21_Mag",nil,0],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,15],
						["NVGoggles",nil,200],
						["ItemRadio",nil,500]
					]
				];
			};
		};
	};
	
	case "Deputy_Shop":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 1): {"You are not at a Deputy!"};
			default
			{
				["Deputy's Shop",
					[
						["arifle_SDAR_F","Taser Rifle",25000],
						["hgun_P07_snds_F","Stun Pistol",2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",325],
						["16Rnd_9x21_Mag",nil,0],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,15],
						["NVGoggles",nil,200]					
					]
				];
			};
		};
	};
	
	case "Corporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not a Corporal!"};
			default
			{
				["Corporal's Shop",
					[
						["hgun_P07_F",nil,10000],
						["SMG_02_F",nil,37500],
						["30Rnd_9x21_Mag",nil,325],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500]						
					]
				];
			};
		};
	};

	case "Sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant!"};
			default
			{
				["Sergeant's Shop",
					[
						["arifle_MX_Black_F",nil,42000],
						["SMG_02_ACO_F",nil,25000],
						["hgun_ACPC2_F",nil,28000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_9x21_Mag",nil,60],
						["optic_MRCO",nil,1250],
						["9Rnd_45ACP_Mag",nil,250],
						["SmokeShellBlue","Tear Gas",nil,1000]
					]
				];
			};
		};
	};
	
	case "Lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not a Lieutenant!"};
			default
			{
				
				["Lieutenant's Shop",
					[
						["Medikit",nil,1250],
                        ["launch_Titan_F","Rebel Smacker",150000],
                        ["Titan_AA","Silver Bullet",5000],
                        ["launch_RPG32_F","1-800-Ifrit",150000],
						["RPG32_F","Customer Service Rep",5000],
						["arifle_MXM_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,125],
						["HandGrenade_Stone","Flashbang",2400],
						["optic_Hamr",nil,1200],
						["optic_tws_mg",nil,1200],
						["optic_DMS",nil,1200]
					]
				];
			};
		};
	};
	
	case "Captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not a captain!"};
			default
			{
				["Captain's Shop",
					[
						["SMG_02_ACO_F",nil,25000],
						["hgun_ACPC2_F",nil,27500],
						["arifle_MXC_Black_F",nil,38000],
						["optic_Arco",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200],
						["optic_Aco",nil,200],
						["optic_Holosight",nil,200]
					]
				];
			};
		};
	};
	
	case "Commander":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"You are not a Commander!"};
			default
			{
				["Commander Shop",
					[
						["hgun_ACPC2_F",nil,27500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_MX_GL_Black_F",nil,25000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,500],
						["SMG_02_ACO_F",nil,25000],
						["arifle_MXC_Black_F",nil,35000],
						["optic_Arco",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_MXM_Black_F",nil,30000],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,200],
						["optic_Aco",nil,200],
						["srifle_DMR_02_F",nil,45000],
						["10Rnd_338_Mag",nil,500],
						["optic_Holosight",nil,200]
					]
				];
			};
		};
	};
	
	case "Chief_Deputy":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 8): {"You are not the Chief Deputy!"};
			default
			{
				["Chief Deputy",
					[
						["hgun_ACPC2_F",nil,17500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_MX_GL_Black_F",nil,20000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,500],
						["SMG_02_ACO_F",nil,15000],
						["arifle_MXC_Black_F",nil,30000],
						["optic_Arco",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_MXM_Black_F",nil,20000],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,200],
						["optic_Aco",nil,200],
						["optic_Holosight",nil,200]
					]
				];
			};
		};
	};
	
	case "Sheriff":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 8): {"You are not the Sheriff!"};
			default
			{
				["Altis Chief Of Police Shop",
					[
						["hgun_ACPC2_F",nil,17500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_MX_GL_Black_F",nil,20000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,500],
						["SMG_02_ACO_F",nil,15000],
						["arifle_MXC_Black_F",nil,30000],
						["optic_Arco",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_MXM_Black_F",nil,20000],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,200],
						["optic_Aco",nil,200],
						["optic_Holosight",nil,200]
					]
				];
			};
		};
	};
	
	case "jreb":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_jreb): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_SDAR_F",nil,60000],
						["arifle_Mk20_plain_F",nil,75000],
						["arifle_TRG20_F",nil,75000],					
						["optic_ACO_grn",nil,5500],
						["optic_Holosight",nil,5600],
						["acc_flashlight",nil,2000],
						["optic_Hamr",nil,12500],
						["optic_MRCO",nil,5000],
						["20Rnd_556x45_UW_mag",nil,1250],
						["30Rnd_556x45_Stanag",nil,3000]
					]
				];
			};
		};
	};
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_SDAR_F",nil,20000],
						["arifle_Mk20_plain_F",nil,25000],
						["arifle_TRG20_F",nil,25000],	
						["arifle_Mk20C_plain_F",nil,22500],
						["arifle_TRG21_F",nil,22500],
						["arifle_Mk20C_F",nil,22500],
						["arifle_Mk20_F",nil,25000],
						["arifle_Katiba_C_F",nil,35000],
						["arifle_Katiba_F",nil,32500],			
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_MRCO",nil,2000],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "rebelsniper":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_advrebel): {"You are not an Advanced Rebel"};
			default
			{
				["Advanced Rebel Shop",
					[
						["optic_ACO_grn",nil,2500],
						["optic_Holosight",nil,2600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,5500],
						["optic_MRCO",nil,1500],
						["optic_SOS",nil,4500],
						["arifle_SDAR_F",nil,10000],
						["arifle_Mk20_plain_F",nil,15000],
						["arifle_TRG20_F",nil,15000],	
						["arifle_Mk20C_plain_F",nil,12500],
						["arifle_TRG21_F",nil,12500],
						["arifle_Mk20C_F",nil,12500],
						["arifle_Mk20_F",nil,15000],
						["arifle_Katiba_C_F",nil,25000],
						["arifle_Katiba_F",nil,22500],	
						["srifle_EBR_F",nil,100000],
						["srifle_DMR_06_camo_F",nil,150000],
						["srifle_DMR_04_Tan_F",nil,150000],
						["srifle_DMR_03_F",nil,150000],
						["srifle_DMR_05_blk_F",nil,250000],
                        ["launch_Titan_F","AA Launcher",200000],
                        ["Titan_AA","Titan AA Ammo",5000],
                        ["launch_RPG32_F","AT Launcher",200000],
						["RPG32_F","AT Ammo",5000],
						["20Rnd_762x51_Mag",nil,1500],
						["10Rnd_127x54_Mag",nil,2500],
						["20Rnd_556x45_UW_mag",nil,100],
						["30Rnd_556x45_Stanag",nil,200],
						["30Rnd_65x39_caseless_green",nil,225],
						["optic_tws_mg",nil,5000],
						["10Rnd_93x64_DMR_05_Mag",nil,2500]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,9500],
						["hgun_Pistol_heavy_02_F",nil,13850],
						["hgun_ACPC2_F",nil,14500],
						["hgun_PDW2000_F",nil,24000],
						["optic_MRCO",nil,2000],
						["optic_ACO_grn_smg",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,9500],
						["hgun_Pistol_heavy_02_F",nil,13850],
						["hgun_ACPC2_F",nil,14500],
						["hgun_PDW2000_F",nil,24000],
						["optic_MRCO",nil,2000],
						["optic_ACO_grn_smg",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,200],
				["Chemlight_red",nil,30],
				["Chemlight_yellow",nil,30],
				["Chemlight_green",nil,30],
				["Chemlight_blue",nil,30]
			]
		];
	};
};