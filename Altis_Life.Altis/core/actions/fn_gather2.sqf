private["_randomlist","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone","_items","_random","_randomitem"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","meth_1","lsd_1","heroin_1","cocaine_1","weed_1","Birnen_1","Birnen_2","Birnen_3","Birnen_4","trau_1","trau_2","trau_3","trau_3","flasch_1","flasch_2","flasch_3","flasch_4","flasch_5","musch_1","musch_2","musch_3"];
_zone = "";
if(life_action_inUse) exitWith {};

{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	
	life_action_inUse = false;
};
_random =  ["lwatch","cables","woodleg","shoki","luckycookie","calc"];
_randomitem = _random select (floor (random (count _random))); 
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","meth_1","lsd_1","heroin_1","cocaine_1","weed_1","Birnen_1","Birnen_2","Birnen_3","Birnen_4","trau_1","trau_2","trau_3","trau_3","flasch_1","flasch_2","flasch_3","flasch_4","flasch_5","musch_1","musch_2","musch_3"]): {_randomitem; _val = 1;};

};

if(vehicle player != player) exitWith {};

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
