/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {7};
	case "oilp": {6};
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "Birnen": {1};
	case "Kabelbinder": {1}; //für Kopfgeldjäger
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "handcuffs": {1};
	case "pole": {0};
	case "bark": {0};
	case "licht": {0};
	case "speedtrap": {0};
	case "laptop": {0};	
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {6};
	case "cocainep": {4};
	case "uranu": {8};
	case "uranp": {7};
	case "spikeStrip": {15};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "axe": {2};
	case "holz": {5};
	case "planke": {3};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "nitro": {5};
	case "tracker": {3};
	case "methu": {6};
    case "methp": {4};
	case "lsdu": {5};
    case "lsdp": {3};
	case "trauu": {2};
    case "traup": {1};
	case "flaschu": {2};
    case "flaschp": {1};
	case "muschu": {2};
    case "muschp": {1};
	case "storagesmall": {5};
	case "storagebig": {10};
	// case "weapons": {7};
	//1
	// case "strawberry": {2};
	// case "axe": {2};
	// case "shovel": {2};
	// case "wood": {7};
	// case "steel": {4};
	// case "coal": {3};
	// case "marmelade": {1};
	// case "cigars": {5};
	// case "tabaco": {2};
	// case "plastic": {3};
	// case "gum": {3};
	// case "actionf": {12};
	// //2
	// case "window": {18};
	// case "wheels": {6};
	// case "stinkbomb": {4};
	// case "flower": {3};
	// case "parfum": {4};
	// case "wheat": {4};
	// case "meat": {4};
	// case "crabs": {2};
	// case "bread": {3};
	// case "crabburger": {2};
	// case "meatburger": {4};
	// case "motor": {18};
	// case "ferro": {7};
	// case "interieur": {18};
	// case "chassi": {18};
	// //3
	// case "ruby": {2};
	// case "saphire": {1};
	// case "smaragd": {1};
	// case "rubyu": {3};
	// case "saphireu": {3};
	// case "smaragdu": {3};
	// case "quarz": {3};
	// case "silizium": {3};
	// case "microchips": {1};
	// case "pc": {5};
	// case "tv": {7};
	// case "smartphones": {2};
	// case "pickaxet": {2};
	// case "axet": {2};
	// case "shovelt": {2};
	// case "titan": {7};
	// case "titanore": {5};
	// case "mg": {8};
	// case "mgore": {5};
	// case "silverore": {5};
	// case "silver": {12};
	
	// case "ringti": {2};
	// case "ringtis": {2};
	// case "ringtir": {2};
	// case "ringtid": {2};
	// case "ringtism": {2};
		
	
	default {1};
};
