/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","meth_1","lsd_1","heroin_1","cocaine_1","weed_1","Birnen_1","Birnen_2","Birnen_3","Birnen_4","trau_1","trau_2","trau_3","trau_3","flasch_1","flasch_2","flasch_3","flasch_4","flasch_5","musch_1","musch_2","musch_3"];
_zone = "";
// _nmb = [0,1,1,2,2,2,3,4];
// _random = _nmb select floor random count _nmb;
if(life_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	/*hint localize "STR_NOTF_notNearResource";*/
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = round(random 4);};
	case (_zone in ["peaches_1","peaches_2","peaches_3"]): {_gather = "peach"; _val = round(random 4);};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = round(random 4);};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = round(random 4);};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = round(random 4);};
	case (_zone in ["Birnen_1","Birnen_2","Birnen_3","Birnen_4"]): {_gather = "Birnen"; _val = round(random 4);};
	case (_zone in ["trau_1","trau_2","trau_3","trau_3"]): {_gather = "trauu"; _val = round(random 4);};
	case (_zone in ["flasch_1","flasch_2","flasch_3","flasch_4","flasch_5"]): {_gather = "flaschu"; _val = round(random 4);};
	case (_zone in ["musch_1","musch_2","musch_3"]): {_gather = "flaschu"; _val = round(random 4);};
	case (_zone in ["meth_1"]): {_gather = "methu"; _val = round(random 4);};
	case (_zone in ["lsd_1"]): {_gather = "lsdu"; _val = round(random 4);};
	// case (_zone in ["meat_1"]): {_gather = "meat"; _val = round(random 4);};
	// case (_zone in ["crab_1"]): {_gather = "crabs"; _val = round(random 4);};
	// case (_zone in ["tabaco_1"]): {_gather = "tabaco"; _val = round(random 4);};
	// case (_zone in ["flower_1"]): {_gather = "flower"; _val = round(random 4);};	
	// case (_zone in ["wheat_1"]): {_gather = "wheat"; _val = round(random 4);};
	
};
//gather check??
if(vehicle player != player) exitWith {/*hint localize "STR_NOTF_GatherVeh";*/};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
