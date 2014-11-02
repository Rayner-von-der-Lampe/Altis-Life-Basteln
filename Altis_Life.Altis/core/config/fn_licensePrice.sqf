/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{	
	case "driver": {1500}; //Drivers License cost
	case "boat": {5000}; //Boating license cost
	case "pilot": {50000}; //Pilot/air license cost
	case "gun": {85000}; //Firearm/gun license cost
	case "dive": {4500}; //Diving license cost
	case "oil": {15000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {55000}; //Heroin processing license cost
	case "marijuana": {60000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {200000}; //Gang license cost
	case "rebel": {2500000}; //Rebel license cost
	case "truck": {35000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {15000};
	case "cocaine": {85000};
	case "uran": {95000};
	case "holzv": {5000};
	case "sand": {15000};
	case "iron": {15000};
	case "copper": {15000};
	case "cement": {15000};
	case "mair": {15000};
	case "meth": {75000};
	case "lsd": {65000};
	case "trau": {8000};
	case "flasch": {8000};
	case "musch": {5000};
	case "home": {1500000};
	// case "oilin": {22000}; //Oilindustry processing training cost
	// case "oilin2": {60000};
	// case "oilin3": {160000};
	// case "jewellery": {125000};
	// case "lowin": {27000};
	// case "midin": {68000};
	// case "highin": {200000};
	// case "cigars": {12500};
	// case "bau": {6500};
	// case "toys": {35000};
	// case "toys2": {70000};
	// case "toys3": {120000};
	// case "food1": {14500};
	// case "food2": {65000};
	// case "mechanic1": {20000};
	// case "mechanic2": {60000};
	// case "spwAthira": {15000};
	// case "spwPyrgos": {15000};
	// case "spwKavala": {15000};
	// case "spwSofia": {15000};
	case "skill": {250000};
};