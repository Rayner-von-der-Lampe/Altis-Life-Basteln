/*
	File: fn_licht.sqf
	Author: German ImpulZ
	
	Description:
	Creates a wall and preps it.
*/
private["_position","_licht"];
_licht = "Land_PortableLight_double_F" createVehicle [0,0,0];
_licht attachTo[player,[0,5.5,0.2]];
_licht setDir 90;
_licht setVariable["item","mauerDeployed",true];

life_action_lichtDeploy = player addAction["Scheinwerfer aufstellen",{if(!isNull life_licht) then {detach life_licht; life_licht = ObjNull;}; player removeAction life_action_lichtDeploy; life_action_lichtDeploy = nil;},"",999,false,false,"",'!isNull life_licht'];
life_licht = _licht;
waitUntil {isNull life_licht};
if(!isNil "life_action_lichtDeploy") then {player removeAction life_action_lichtDeploy;};
if(isNull _licht) exitWith {life_licht = ObjNull;};
_licht setPos [(getPos _licht select 0),(getPos _licht select 1),0];
_licht allowDamage false;
life_action_packuplicht = player addAction["Scheinwerfer aufheben",life_fnc_packuplicht,"",0,false,false,"",' _licht = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0; !isNil "_licht" && !isNil {(_licht getVariable "item")}'];