/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_lwatch": {"Wecker"};
	case "life_inv_calc": {"Taschenrechner"};
	case "life_inv_woodleg": {"Holzbein"};
	case "life_inv_shoki": {"Schokoriegel"};
	case "life_inv_luckycookie": {"Glückskeks"};
	case "life_inv_lighter": {"Feuerzeug"};
	case "life_inv_robo1": {"Kopf eines Roboterspielzeugs"};
	case "life_inv_robo2": {"Rechter Arm eines Roboterspielzeugs"};
	case "life_inv_robo3": {"Linker Arm eines Roboterspielzeugs"};
	case "life_inv_robo4": {"Torso eines Roboterspielzeugs"};
	case "life_inv_robo5": {"Rechtes Bein eines Roboterspielzeugs"};
	case "life_inv_robo6": {"Linkes Bein eines Roboterspielzeugs"};
	case "life_inv_robo": {"Roboterspielzeug"};
	case "life_inv_bppickaxet": {"Bauplan Spitzhacke MK II"};
	case "life_inv_bpaxet": {"Bauplan Axt MK II"};
	case "life_inv_cables": {"Kabel"};
	case "life_inv_tnt": {"TNT"};
	case "life_inv_dinobone": {"dinobone"};
	case "life_inv_pickaxet": {"pickaxet"};
	case "life_inv_axet": {"axet"};
	
	
	
	case "life_inv_oilu": {"Rohoel"};
	case "life_inv_oilp": {"Oel"};
	case "life_inv_heroinu": {"Unreines Heroin"};
	case "life_inv_heroinp": {"Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_Birnen": {"Birnen"};
	case "life_inv_Kabelbinder": {"Kabelbinder"}; //für Kopfgeldjäger
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_salema": {"Salema Fleisch"};
	case "life_inv_ornate": {"Ornate Fleisch"};
	case "life_inv_mackerel": {"Makrelen Fleisch"};
	case "life_inv_tuna": {"Thunfisch Fleisch"};
	case "life_inv_mullet": {"Seebarsch Fleisch"};
	case "life_inv_catshark": {"Katzenhai Fleich"};
	case "life_inv_turtle": {"Schildkroete"};
	case "life_inv_fishingpoles": {"Angelrute"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Caffee"};
	case "life_inv_turtlesoup": {"Schildkroetensuppe"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Benzinkanister Leer"};
	case "life_inv_fuelF": {"Benzinkanister Voll"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisenbarren"};
	case "life_inv_copperr": {"Kupferbarren"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salz"};
	case "life_inv_saltr": {"Reines Salz"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_diamond": {"Rohdiamant"};
	case "life_inv_diamondr": {"Diamant"};
	case "life_inv_tbacon": {"Speck"};
	case "life_inv_redgull": {"RedBull"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_coke": {"Unreines Kokain"};
	case "life_inv_cokep": {"Kokain"};
	case "life_inv_spikeStrip": {"Nagelbaender"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zementsack"};
	case "life_inv_handcuffs": {"Handschellen"};
	case "life_inv_uranu": {"Uran"};
	case "life_inv_uranp": {"Uranium"};
	case "life_inv_goldbar": {"Platin"};
	case "life_inv_axe": {"Axt"};
	case "life_inv_holz": {"Unverarbeitetes Holz"};
	case "life_inv_planke": {"Holzlatten"};
	case "life_inv_blastingcharge": {"Sprengladung"};
	case "life_inv_boltcutter": {"Bolzenschneider"};
	case "life_inv_defusekit": {"Entschärfungs Kit"};
	case "life_inv_speedtrap": {"Radarfalle"};    
	case "life_inv_speedtrapdetector": {"Radarwarner"};
	case "life_inv_laptop": {"Laptop"};
	case "life_inv_bark": {"Straßensperre"};
	case "life_inv_licht": {"Scheinwerfer"};
	case "life_inv_pole": {"Leitkegel"};
	case "life_inv_nitro": {"NOS Einspritzung"};
	case "life_inv_tracker": {"GPS Verfolgung"};
	case "life_inv_methu": {"Unverarbeitetes Meth"};
    case "life_inv_methp": {"Crystal Meth"};
	case "life_inv_lsdu": {"Unverarbeitetes LSD"};
    case "life_inv_lsdp": {"Reines LSD"};
	case "life_inv_trauu": {"Schmutzige Trauben"};
    case "life_inv_traup": {"Traubensaft"};
	case "life_inv_flaschu": {"Gebrauchte Flaschen"};
    case "life_inv_flaschp": {"Neue Flaschen"};
	case "life_inv_muschu": {"Geschlossende Muschel"};
	case "life_inv_muschp": {"Reine Muscheln"};
	case "life_inv_storagesmall": {"Kleine Truhe"};
	case "life_inv_storagebig": {"Grosse Truhe"};
	
	//License Block
	case "license_civ_driver": {"Fuehrerschein B"};
	case "license_civ_air": {"Pilotenschein"};
	case "license_civ_heroin": {"Herointraining"};
	case "license_civ_gang": {"Gang Lizenz"};
	case "license_civ_oil": {"Oel Lizenz"};
	case "license_civ_dive": {"Taucherschein"};
	case "license_civ_boat": {"Bootsschein"};
	case "license_civ_gun": {"Waffenschein"};
	case "license_cop_air": {"Pilotenschein"};
	case "license_cop_swat": {"SEK"};
	case "license_cop_cg": {"Kuestenwache"};
	case "license_civ_rebel": {"Rebellentraining"};
	case "license_civ_truck": {"Fuehrerschein C"};
	case "license_civ_diamond": {"Diamant Lizenz"};
	case "license_civ_copper": {"Kupfer Lizenz"};
	case "license_civ_iron": {"Eisen Lizenz"};
	case "license_civ_sand": {"Glas Lizenz"};
	case "license_civ_salt": {"Salz Lizenz"};
	case "license_civ_coke":{"Kokaintraining"};
	case "license_civ_uran": {"Urantraining"};
	case "license_civ_holzv": {"HolzverarbeitungsLizenz"};
	case "license_civ_marijuana": {"Marijuanatraining"};
	case "license_civ_cement": {"Zement Lizenz"};
	case "license_med_air": {"Pilotenschein Notarzt"};
	case "license_civ_home": {"Mietvetrag"};
	case "license_civ_vmg": {"VMG"};					      //Spender
	case "license_civ_kopf": {"Kopfgeldjägerausbildung"};     //Kopfgeldjäger
	case "license_civ_adac": {"ADAC-Schulung"};               //ADAC
	case "license_civ_taxi": {"Taxischein"};                  //Taxi
	case "license_civ_meth": {"Meth Verarbeiter"};            //Meth
	case "license_civ_lsd": {"LSD Ausbildung"};               //LSD
	case "license_civ_trau": {"Saft Verarbeitung"};           //Saft
	case "license_civ_flasch": {"Recycling"};                 //Recycling
	case "license_civ_musch": {"Muscheln Koch"};			  //Muscheln
	case "license_civ_skill": {"Sammler"};					  //Skill
	case "license_civ_addinv": {"Rucksack Tetris"};				//Rucksack inventar erweitern
};
