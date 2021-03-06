/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
private["_illegal","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone","_items","_random","_randomitem","_randomitem2"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","meth_1","lsd_1","heroin_1","cocaine_1","weed_1","Birnen_1","Birnen_2","Birnen_3","Birnen_4","trau_1","trau_2","trau_3","trau_3","flasch_1","flasch_2","flasch_3","flasch_4","flasch_5","musch_1","musch_2","musch_3"];
_zone = "";
if(life_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	/*hint localize "STR_NOTF_notNearResource";*/
	life_action_inUse = false;
};
_random =  ["robo1","robo2","robo3","robo4","robo5","robo6","dinobone"];//new random items ,"bppickaxet","bpaxet", */
_randomitem = _random select (floor (random (count _random))); //select one of them
_illegal =  ["robo1","robo2","robo3","robo4","robo5","robo6","tnt","dinobone"];//new random items
_randomitem2 = _illegal select (floor (random (count _illegal))); //select one of them

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","meth_1","lsd_1","heroin_1","cocaine_1","weed_1","Birnen_1","Birnen_2","Birnen_3","Birnen_4","trau_1","trau_2","trau_3","trau_3","flasch_1","flasch_2","flasch_3","flasch_4","flasch_5","musch_1","musch_2","musch_3"]): {_randomitem; _val = 1;};
	case (_zone in ["meth_1","lsd_1","heroin_1","cocaine_1","weed_1"]): {_randomitem2; _val = 1;};

};
//gather check??
if(vehicle player != player) exitWith {/*hint localize "STR_NOTF_GatherVeh";*/};

_diff = [_randomitem,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_randomitem,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_randomitem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
