/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "Birnen": {"life_inv_Birnen"};
			case "Kabelbinder": {"life_inv_Kabelbinder"}; //für Kopfgeldjäger
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "handcuffs": {"life_inv_handcuffs"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "uranu": {"life_inv_uranu"};
			case "uranp": {"life_inv_uranp"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "axe": {"life_inv_axe"};
			case "holz": {"life_inv_holz"};
			case "planke": {"life_inv_planke"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "speedtrap": {"life_inv_speedtrap"};
			case "speedtrapdetector": {"life_inv_speedtrapdetector"};
			case "laptop": {"life_inv_laptop"};
			case "pole": {"life_inv_pole"};
			case "bark": {"life_inv_bark"};
			case "licht": {"life_inv_licht"};
			case "nitro": {"life_inv_nitro"};
			case "tracker": {"life_inv_tracker"};
			case "methu": {"life_inv_methu"};
            case "methp": {"life_inv_methp"};
			case "lsdu": {"life_inv_lsdu"};
            case "lsdp": {"life_inv_lsdp"};
			case "trauu": {"life_inv_trauu"};
            case "traup": {"life_inv_traup"};
			case "flaschu": {"life_inv_flaschu"};
            case "flaschp": {"life_inv_flaschp"};
			case "muschu": {"life_inv_muschu"};
            case "muschp": {"life_inv_muschp"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_Birnen": {"Birnen"};
			case "life_inv_Kabelbinder": {"Kabelbinder"}; //für Kopfgeldjäger
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_handcuffs": {"handcuffs"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_uranu": {"uranu"};
			case "life_inv_uranp": {"uranp"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_pole": {"pole"};
			case "life_inv_bark": {"bark"};
			case "life_inv_licht": {"licht"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_axe": {"axe"};
			case "life_inv_holz": {"holz"};
			case "life_inv_planke": {"planke"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_speedtrap": {"speedtrap"};
			case "life_inv_speedtrapdetector": {"speedtrapdetector"};
			case "life_inv_laptop": {"laptop"};
			case "life_inv_nitro": {"nitro"};
			case "life_inv_tracker": {"tracker"};
			case "life_inv_methu": {"methu"};
            case "life_inv_methp": {"methp"};
			case "life_inv_lsdu": {"lsdu"};
            case "life_inv_lsdp": {"lsdp"};
			case "life_inv_trauu": {"trauu"};
            case "life_inv_traup": {"traup"};
			case "life_inv_flaschu": {"flaschu"};
            case "life_inv_flaschp": {"flaschp"};
			case "life_inv_muschu": {"muschu"};
            case "life_inv_muschp": {"muschp"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
		};
	};
};
