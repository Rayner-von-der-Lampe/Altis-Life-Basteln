/*
	File: fn_pole.sqf
	Author: German ImpulZ
	
	Description:
	Creates a wall and preps it.
*/
private["_position","_pole"];
_pole = "RoadCone_L_F" createVehicle [0,0,0];
_pole attachTo[player,[0,5.5,0.2]];
_pole setDir 90;
_pole setVariable["item","mauerDeployed",true];

life_action_poleDeploy = player addAction["Lichtkegel aufstellen",{if(!isNull life_pole) then {detach life_pole; life_pole = ObjNull;}; player removeAction life_action_poleDeploy; life_action_poleDeploy = nil;},"",999,false,false,"",'!isNull life_pole'];
life_pole = _pole;
waitUntil {isNull life_pole};
if(!isNil "life_action_poleDeploy") then {player removeAction life_action_poleDeploy;};
if(isNull _pole) exitWith {life_pole = ObjNull;};
_pole setPos [(getPos _pole select 0),(getPos _pole select 1),0];
_pole allowDamage false;
life_action_packuppole = player addAction["Lichtkegel aufheben",life_fnc_packuppole,"",0,false,false,"",' _pole = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_pole" && !isNil {(_pole getVariable "item")}'];