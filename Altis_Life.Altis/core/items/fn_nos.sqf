/*
	File: fn_nos.sqf
	Author: German ImpulZ
	
	Description:
	Gathers NOS?
*/
_unit = cursorTarget;

if (count (_unit getVariable ["vehicle_info_owners", []]) < 1 || !(_unit isKindOf "Car")) exitWith {hint "Du kannst hier kein NoS einbauen.";};
if (vehicle player != player) exitWith {};
if (!([false,"nitro",1] call life_fnc_handleInv)) exitWith {};

life_action_inUse = true;

_upp = "NoS wird eingebaut...";
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
_success=false;
while{true} do
{
	sleep 0.09;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {_success=true;};
	if(player distance _unit > 6) exitWith {};
	if(!alive player) exitWith {};
	if(speed player > 2) exitWith {};
};
5 cutText ["","PLAIN"];
life_action_inUse = false;

if (_success) then
{
	_unit setVariable["nitro",3,true];
	hint "NoS wurde eingebaut.";
};