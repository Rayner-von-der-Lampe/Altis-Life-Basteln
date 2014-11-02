/*
    File: fn_packupLightbark.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: german impulz

    Description:
    Packs up a deployed lightbark.
*/
private["_bark"];
_bark = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_bark") exitWith {};

if(([true,"bark",1] call life_fnc_handleInv)) then
{
    titleText["Du hast die Straßensperre aufgehoben.","PLAIN"];
    player removeAction life_action_packupbark;
    life_action_packupbark = nil;
    deleteVehicle _bark;
};