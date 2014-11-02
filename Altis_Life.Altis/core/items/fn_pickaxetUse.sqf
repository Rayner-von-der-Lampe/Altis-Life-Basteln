/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 30): {_mine = "copperore"; _val = 3;};
	case (player distance (getMarkerPos "iron_1") < 30): {_mine = "ironore"; _val = 3;};
	case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = 3;};
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _val = 3;};
	case (player distance (getMarkerPos "rock_1") < 50): {_mine = "rock"; _val = 3;};
	case (player distance (getMarkerPos "saphire_1") < 50): {_mine = "saphireu"; _val = 3;};
	case (player distance (getMarkerPos "smaragd_1") < 50): {_mine = "smaragdu"; _val = 3;};
	case (player distance (getMarkerPos "ruby_1") < 50): {_mine = "rubyu"; _val = 3;};
	case (player distance (getMarkerPos "gold_1") < 50): {_mine = "goldore"; _val = 3;};
	case (player distance (getMarkerPos "titan_1") < 50): {_mine = "titanore"; _val = 3;};
	case (player distance (getMarkerPos "mg_1") < 50): {_mine = "mgore"; _val = 3;};
	case (player distance (getMarkerPos "sillver_1") < 50): {_mine = "silverore"; _val = 3;};
	case (player distance (getMarkerPos "pt_1") < 50): {_mine = "ptore"; _val = 3;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
life_action_Gahther = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
life_action_Gahther = false;