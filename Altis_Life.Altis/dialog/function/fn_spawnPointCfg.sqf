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
			["cop_spawn_1","Kavala HQ","icons\cop_spawn.paa"],
			["cop_spawn_2","Pyrgos HQ","icons\cop_spawn.paa"],
			["cop_spawn_3","Athira","icons\cop_spawn.paa"],
			["cop_spawn_4","Flughafen","icons\cop_spawn.paa"],
			["cop_spawn_5","Autobahnpolizei","icons\cop_patrol_spawn.paa"]
		];
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_1","Kavala","icons\civ_spawn.paa"],
			["civ_spawn_2","Pyrgos","icons\civ_spawn.paa"],
			["civ_spawn_3","Athira","icons\civ_spawn.paa"],
			["civ_spawn_4","Sofia","icons\civ_spawn.paa"]
		];
		
		if(license_civ_rebel && playerSide == civilian) then {
			_return = [
				["rebellen_hq","Rebellen HQ","icons\rebell_spawn.paa"],
				["civ_spawn_1","Kavala","icons\civ_spawn.paa"],
				["civ_spawn_2","Pyrgos","icons\civ_spawn.paa"],
				["civ_spawn_3","Athira","icons\civ_spawn.paa"],
				["civ_spawn_4","Sofia","icons\civ_spawn.paa"]
			];
		};
		
		if(license_civ_kopf && playerSide == civilian) then {
			_return = [
				["kopf_hq","KopfGJ HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_1","Kavala","icons\civ_spawn.paa"],
				["civ_spawn_2","Pyrgos","icons\civ_spawn.paa"],
				["civ_spawn_3","Athira","icons\civ_spawn.paa"],
				["civ_spawn_4","Sofia","icons\civ_spawn.paa"]
			];
		};
		
		if(license_civ_taxi && playerSide == civilian) then {
			_return = [
				["taxi_hq","Taxistand","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_1","Kavala","icons\civ_spawn.paa"],
				["civ_spawn_2","Pyrgos","icons\civ_spawn.paa"],
				["civ_spawn_3","Athira","icons\civ_spawn.paa"],
				["civ_spawn_4","Sofia","icons\civ_spawn.paa"]
			];
		};
		
		if(license_civ_adac && playerSide == civilian) then {
			_return = [
				["adac_hq","Adac HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_1","Kavala","icons\civ_spawn.paa"],
				["civ_spawn_2","Pyrgos","icons\civ_spawn.paa"],
				["civ_spawn_3","Athira","icons\civ_spawn.paa"],
				["civ_spawn_4","Sofia","icons\civ_spawn.paa"]
			];
		};
		
		if(license_civ_vmg && playerSide == civilian) then {
			_return = [
				["vmg_hq","Clan HQ","icons\civ_spawn.paa"]
			];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"icons\civ_spawn.paa"]];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Hospital","icons\cop_spawn.paa"],
			["medic_spawn_2","Athira Regional","icons\cop_spawn.paa"],
			["medic_spawn_3","Pygros Hospital","icons\cop_spawn.paa"]
		];
	};
};

_return;