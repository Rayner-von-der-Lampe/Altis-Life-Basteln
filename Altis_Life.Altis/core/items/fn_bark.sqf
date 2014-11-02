/*
	File: fn_bark.sqf
	Author: German ImpulZ
	
	Description:
	Creates a wall and preps it.
*/
private["_position","_bark"];
_bark = "RoadBarrier_F" createVehicle [0,0,0];
_bark attachTo[player,[0,5.5,0.2]];
_bark setDir 90;
_bark setVariable["item","mauerDeployed",true];

life_action_barkDeploy = player addAction["Straßensperre aufstellen",{if(!isNull life_bark) then {detach life_bark; life_bark = ObjNull;}; player removeAction life_action_barkDeploy; life_action_barkDeploy = nil;},"",999,false,false,"",'!isNull life_bark'];
life_bark = _bark;
waitUntil {isNull life_bark};
if(!isNil "life_action_barkDeploy") then {player removeAction life_action_barkDeploy;};
if(isNull _bark) exitWith {life_bark = ObjNull;};
_bark setPos [(getPos _bark select 0),(getPos _bark select 1),0];
_bark allowDamage false;
life_action_packupbark = player addAction["Straßensperre aufheben",life_fnc_packupbark,"",0,false,false,"",' _bark = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_bark" && !isNil {(_bark getVariable "item")}'];