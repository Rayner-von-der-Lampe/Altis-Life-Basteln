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
	case "cop_new":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Altis Polizist auf Probe",
					[
						["arifle_sdar_F","Taser Rifle",5000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",100],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["muzzle_snds_L",nil,650],
						["SMG_01_F",nil,30000],
						["SMG_02_F",nil,30000],
						["acc_flashlight",nil,50],
						["optic_Aco_smg",nil,1000],
						["optic_Holosight",nil,1000],
						["muzzle_snds_H",nil,2000],
						["30Rnd_45ACP_Mag_SMG_01",nil,200],
						["30Rnd_556x45_Stanag",nil,200],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,200],
						["NVGoggles",nil,2000],
						["Medikit",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,250],
						["ItemGPS",nil,0],
						["Binocular",nil,0]
						
					]
				];
			};
		};
	};

	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Altis Polizist mittlerer Dienst",
					[
						["arifle_MX_GL_F",nil,10000],
						["arifle_MXC_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,200],
						["1Rnd_SmokeRed_Grenade_shell",nil,200],
						["muzzle_snds_H",nil,100],
						["optic_DMS",nil,250],
						["optic_Aco",nil,1000],
						["optic_Hamr",nil,1000],
						["optic_SOS",nil,1000],
						["acc_flashlight",nil,50],
						["acc_pointer_IR",nil,50],
						["SmokeShellGreen",nil,500],
						["SmokeShellBlue","Traenengas",200],
						["HandGrenade_Stone","Flashbang",400],
						["NVGoggles",nil,2000],
						["Medikit",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,250],
						["ItemGPS",nil,0],
						["Binocular",nil,0],
						["Rangefinder",nil,0],
						["Laserdesignator",nil,200],
						["Laserbatteries",nil,100],
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400]
						
					]
				];
			};
		};
	};

	case "cop_sleader":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Altis Polizist gehobener Dienst",
					[					
						["arifle_MX_GL_F",nil,10000],
						["arifle_MXC_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,200],
						["1Rnd_SmokeRed_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						["muzzle_snds_H",nil,1000],
						["srifle_EBR_F",nil,20000],
						["20Rnd_762x51_Mag",nil,250],
						["muzzle_snds_B",nil,1000],
						["optic_Aco",nil,1000],
						["optic_Nightstalker",nil,175000],
						["optic_Hamr",nil,1000],
						["optic_SOS",nil,1000],
						["acc_flashlight",nil,50],
						["acc_pointer_IR",nil,50],
						["SmokeShellGreen",nil,500],
						["NVGoggles",nil,2000],
						["Medikit",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,250],
						["ItemGPS",nil,0],
						["Binocular",nil,0],
						["Rangefinder",nil,0],
						["Laserdesignator",nil,200],
						["Laserbatteries",nil,100],
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400]
					]
				];
			};
		};
	};

	case "cop_leader":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Altis Teamleiter",
					[
						["arifle_MXC_F",nil,10000],
						["arifle_MXM_F",nil,10000],
						["arifle_MX_GL_F",nil,10000],
						["arifle_MX_F",nil,10000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["1Rnd_SmokeRed_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						["muzzle_snds_H",nil,1000],
						["arifle_MX_SW_F",nil,15000],
						["100Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],
						["hgun_ACPC2_snds_F",nil,1000],
						["9Rnd_45ACP_Mag",nil,50],						
						["srifle_GM6_F",nil,30000],
						["5Rnd_127x108_Mag",nil,500],
						["5Rnd_127x108_APDS_Mag",nil,500],
						["srifle_LRR_F",nil,30000],
						["7Rnd_408_Mag",nil,500],
						["LMG_Mk200_F",nil,15000],
						["200Rnd_65x39_cased_Box",nil,400],
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						["RPG32_F",nil,250],
						["RPG32_HE_F",nil,250],
						["optic_Aco",nil,1000],
						["optic_Hamr",nil,1000],
						["optic_SOS",nil,1000],
						["acc_flashlight",nil,50],
						["acc_pointer_IR",nil,50],
						["SmokeShellGreen",nil,500],
						["NVGoggles",nil,2000],
						["Medikit",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,250],
						["ItemGPS",nil,0],
						["Binocular",nil,0],
						["Rangefinder",nil,0],
						["Laserdesignator",nil,200],
						["Laserbatteries",nil,100],
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400]
						
					]
				];
			};
		};
	};

	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 5): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["Altis Ausbilder",
					[
						["SMG_02_ACO_F",nil,10000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_ACPC2_F",nil,12500],
						["9Rnd_45ACP_Mag",nil,150],
						["arifle_MX_F",nil,22500],
						["arifle_MXM_F",nil,22500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,100],
						["arifle_MX_SW_F",nil,27500],
						["100Rnd_65x39_caseless_mag",nil,300],
						["srifle_LRR_F",nil,42500],
						["7Rnd_408_Mag",nil,1000],
						["srifle_EBR_F",nil,20000],
						["20Rnd_762x51_Mag",nil,250],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_H",nil,2750],
						["muzzle_snds_H_MG","MG Schalldaempfer",2750],
						["muzzle_snds_acp",nil,2750],
						["muzzle_snds_B",nil,2750],
						["muzzle_snds_L",nil,2750],
						["muzzle_snds_M",nil,2750],
						["Rangefinder",nil,1000],
						["optic_Aco",nil,1000],
						["optic_Hamr",nil,1000],
						["optic_SOS",nil,1000],
						["Laserdesignator",nil,200],
						["Laserbatteries",nil,100],
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400]
						
					]
				];
			};
		};
	};

	case "cop_sekLead":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 6): {"Du hast nicht den benoetigten Rang!"};
			default
			{
				["SEK",
					[
						["arifle_MXC_F",nil,10000],
						["arifle_MXM_F",nil,10000],
						["arifle_MX_GL_F",nil,10000],
						["arifle_MX_F",nil,10000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["1Rnd_SmokeRed_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						["muzzle_snds_H",nil,1000],
						["arifle_MX_SW_F",nil,15000],
						["100Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],
						["srifle_EBR_F",nil,20000],
						["20Rnd_762x51_Mag",nil,250],
						["muzzle_snds_B",nil,1000],
						["hgun_ACPC2_snds_F",nil,1000],
						["9Rnd_45ACP_Mag",nil,50],
						["optic_Aco",nil,1000],
						["optic_Nightstalker",nil,175000],
						["optic_Hamr",nil,1000],
						["optic_tws",nil,1000],
						["optic_SOS",nil,1000],
						["acc_flashlight",nil,50],
						["acc_pointer_IR",nil,50],
						["SmokeShellGreen",nil,500],
						["NVGoggles",nil,2000],
						["Medikit",nil,500],
						["FirstAidKit",nil,50],
						["ToolKit",nil,250],
						["ItemGPS",nil,0],
						["Binocular",nil,0],
						["Rangefinder",nil,0],
						["Laserdesignator",nil,200],
						["Laserbatteries",nil,100],
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400]
					]
				];
			};
		};
	};

	case "cop_chef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 7): {"Du bist kein Polizeichef!"};
			default
			{
				["Altis Polizeichef/SEK Leiter",
					[
						["SMG_02_ACO_F",nil,10000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_ACPC2_F",nil,12500],
						["9Rnd_45ACP_Mag",nil,150],
						["arifle_MX_F",nil,22500],
						["arifle_MXM_F",nil,22500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,100],
						["arifle_MX_SW_F",nil,27500],
						["100Rnd_65x39_caseless_mag",nil,300],
						["srifle_EBR_F",nil,20000],
						["20Rnd_762x51_Mag",nil,250],
						["muzzle_snds_B",nil,1000],
						["srifle_LRR_F",nil,42500],
						["7Rnd_408_Mag",nil,1000],
						["muzzle_snds_H",nil,2750],
						["muzzle_snds_H_MG","MG Schalldaempfer",2750],
						["muzzle_snds_acp",nil,2750],
						["muzzle_snds_L",nil,2750],
						["muzzle_snds_M",nil,2750],
						["Rangefinder",nil,1000],
						["optic_Aco",nil,1000],
						["optic_Nightstalker",nil,175000],
						["optic_Hamr",nil,1000],
						["optic_tws",nil,1000],
						["optic_SOS",nil,1000],
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400]
						
					]
				];
			};
		};
	};
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Notarzt"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles_OPFOR",nil,1200]
						//["B_Kitbag_cbr",nil,3000]
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
						["arifle_TRG20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,100],
						["arifle_SDAR_F",nil,15000],
						["20Rnd_556x45_UW_mag","UW",1000],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,500],
						["arifle_MX_Black_F",nil,50000],
						["arifle_MXC_Black_F",nil,50000],
						["arifle_MXM_Black_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,500],						
						["arifle_MX_SW_F",nil,75000],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["LMG_Mk200_F",nil,650000],
						["200Rnd_65x39_cased_Box",nil,1500],
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["srifle_EBR_F",nil,100000],
						["20Rnd_762x51_Mag",nil,500],
						["srifle_LRR_camo_F",nil,800000],
						["7Rnd_408_Mag",nil,1000],
						["optic_Aco",nil,1000],
						["optic_Hamr",nil,1000],
						["optic_NVS",nil,1000],
						["optic_Arco",nil,1000],
						["optic_MRCO",nil,1000],
						["optic_LRPS",nil,1000],
						["optic_SOS",nil,1000],
						["muzzle_snds_H",nil,1500],
						["muzzle_snds_L",nil,1500],
						["muzzle_snds_M",nil,1500],
						["muzzle_snds_B",nil,1500],
						["muzzle_snds_H_MG",nil,1500],
						["Rangefinder",nil,1000]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["arifle_TRG20_F",nil,15000],
						["30Rnd_556x45_Stanag",nil,50],
						["arifle_Katiba_F",nil,7500],
						["30Rnd_65x39_caseless_green",nil,250],
						["arifle_SDAR_F",nil,7500],
						["20Rnd_556x45_UW_mag",nil,500],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MXM_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,250],						
						["arifle_MX_SW_F",nil,37500],
						["100Rnd_65x39_caseless_mag",nil,500],
						["SMG_01_F",nil,5000],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,500],
						["srifle_LRR_F",nil,400000],
						["7Rnd_408_Mag",nil,500],
						["srifle_GM6_F",nil,500000],
						["5Rnd_127x108_APDS_Mag",nil,2000],
						["optic_DMS",nil,500],
						["optic_NVS",nil,750],
						["optic_MRCO",nil,750],
						["optic_DMS",nil,750],
						["optic_Arco",nil,750],
						["optic_Aco",nil,750],
						["optic_Hamr",nil,750],
						["optic_tws",nil,125000],
						["optic_SOS",nil,750],
						["muzzle_snds_H",nil,750],
						["muzzle_snds_L",nil,750],
						["muzzle_snds_M",nil,750],
						["muzzle_snds_B",nil,750],
						["muzzle_snds_H_MG",nil,750],
						["B_UavTerminal",nil,7500],
						["Rangefinder",nil,250]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["arifle_TRG20_F",nil,15000],
						["30Rnd_556x45_Stanag",nil,50],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MXM_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,250],						
						["arifle_MX_SW_F",nil,37500],
						["100Rnd_65x39_caseless_mag",nil,500],
						["SMG_01_F",nil,5000],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,500],
						["srifle_LRR_F",nil,400000],
						["7Rnd_408_Mag",nil,500],
						["srifle_GM6_F",nil,500000],
						["5Rnd_127x108_APDS_Mag",nil,2000],
						["optic_Aco",nil,500],
						["optic_Hamr",nil,500],
						["optic_tws",nil,200000],
						["optic_SOS",nil,500],
						["Rangefinder",nil,250],
						["srifle_LRR_F",nil,150000],
						["7Rnd_408_Mag",nil,1000],
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_APDS_Mag",nil,500],
						["optic_Nightstalker",nil,200000]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
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
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
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
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
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
				["NVGoggles",nil,2000]
			]
		];
	};
	
	case "tankstelle":
	{
		["Werkzeugladen",
			[
				["Binocular",nil,500],
				["ItemGPS",nil,500],
				["Itemwatch",nil,750],
				["ItemCompass",nil,1000],
				["ItemMap",nil,1000],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,1000],
				["NVGoggles",nil,4000]
			]
		];
	};
	
	case "kopf_zubehör":
	{
		["Kopfgeldjäger Zubehör",
			[
				["Binocular",nil,500],
				["ItemGPS",nil,500],
				["Itemwatch",nil,750],
				["ItemCompass",nil,1000],
				["ItemMap",nil,1000],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,1000],
				["NVGoggles",nil,4000]
			]
		];
	};
	
	case "adac_zubehör":
	{
		["ADAC Zubehör",
			[
				["Binocular",nil,500],
				["ItemGPS",nil,500],
				["Itemwatch",nil,750],
				["ItemCompass",nil,1000],
				["ItemMap",nil,1000],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,1000],
				["NVGoggles",nil,4000]
			]
		];
	};
	
	case "taxi_zubehör":
	{
		["Taxi Zubehör",
			[
				["Binocular",nil,500],
				["ItemGPS",nil,500],
				["Itemwatch",nil,750],
				["ItemCompass",nil,1000],
				["ItemMap",nil,1000],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,1000],
				["NVGoggles",nil,4000]
			]
		];
	};
};
