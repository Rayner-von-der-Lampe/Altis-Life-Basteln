/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "oil": {_var = "license_civ_oil"}; //Oil processing license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "swat": {_var = "license_cop_swat"}; //Swat License cost
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "salt": {_var = "license_civ_salt"};
			case "cocaine": {_var = "license_civ_coke"};
			case "uran": {_var = "license_civ_uran"};
			case "holzv": {_var = "license_civ_holzv"};
			case "sand": {_var = "license_civ_sand"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "vmg": {_var = "license_civ_vmg"};		  //Spender
			case "kopf": {_var = "license_civ_kopf"};     //Kopfgeldjäger
			case "adac": {_var = "license_civ_adac"};     //ADAC
			case "taxi": {_var = "license_civ_taxi"};     //Taxi
			case "meth": {_var = "license_civ_meth"};
			case "lsd": {_var = "license_civ_lsd"};
			case "trau": {_var = "license_civ_trau"};
			case "flasch": {_var = "license_civ_flasch"};
			case "musch": {_var = "license_civ_musch"};
			//
			// case "oilin": {_var = "license_civ_oilin"}; //Oil processing license cost
			// case "oilin2": {_var = "license_civ_oilin2"};
			// case "oilin3": {_var = "license_civ_oilin3"};
			// case "lowin": {_var = "license_civ_lowin"};
			// case "midin": {_var = "license_civ_midin"};
			// case "highin": {_var = "license_civ_highin"};
			// case "cigars": {_var = "license_civ_cigars"};
			// case "bau": {_var = "license_civ_bau"};
			// case "toys": {_var = "license_civ_toys"};
			// case "toys2": {_var = "license_civ_toys2"};
			// case "toys3": {_var = "license_civ_toys3"};
			// case "food1": {_var = "license_civ_food1"};
			// case "food2": {_var = "license_civ_food2"};
			// case "mechanic1": {_var = "license_civ_mechanic1"};
			// case "mechanic2": {_var = "license_civ_mechanic2"};
			// case "jewellery": {_var = "license_civ_jewellery"};
			// case "copper": {_var = "license_civ_copper"};
			// case "cement": {_var = "license_civ_cement"};
			// case "spwAthira": {_var = "license_civ_spwAthira"};
			// case "spwPyrgos": {_var = "license_civ_spwPyrgos"};
			// case "spwKavala": {_var = "license_civ_spwKavala"};
			// case "spwSofia": {_var = "license_civ_spwSofia"};
			case "addinv": {_var = "license_civ_addinv"};
			case "skill": {_var = "license_civ_skill"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_civ_oil": {_var = "oil"}; //Oil processing license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_salt": {_var = "salt"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_uran": {_var = "uran"};
			case "license_civ_holzv": {_var = "holzv"};
			case "license_civ_sand": {_var = "sand"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "license_civ_kopf": {_var = "kopf"};     //Kopfgeldjäger
			case "license_civ_adac": {_var = "adac"};     //ADAC
			case "license_civ_taxi": {_var = "taxi"};     //Taxi
			case "license_civ_meth": {_var = "meth"};
			case "license_civ_lsd": {_var = "lsd"};
			case "license_civ_trau": {_var = "trau"};
			case "license_civ_flasch": {_var = "flasch"};
			case "license_civ_musch": {_var = "musch"};
			//
						
			// case "license_civ_oilin": {_var = "oilin"};
			// case "license_civ_lowin": {_var = "lowin"};
			// case "license_civ_midin": {_var = "midin"};
			// case "license_civ_highin": {_var = "highin"};
			// case "license_civ_cigars": {_var = "cigars"};
			// case "license_civ_bau": {_var = "bau"};
			// case "license_civ_toys": {_var = "toys"};
			// case "license_civ_food1": {_var = "food1"};
			// case "license_civ_food2": {_var = "food2"};
			// case "license_civ_mechanic1": {_var = "mechanic1"};
			// case "license_civ_mechanic2": {_var = "mechanic2"};
			// case "license_civ_jewellery": {_var = "jewellery"};
			case "license_civ_addinv": {_var = "addinv"};
			case "license_civ_skill": {_var = "skill"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;