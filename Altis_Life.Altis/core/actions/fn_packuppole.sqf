/*
    File: fn_packupLightpole.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: german impulz

    Description:
    Packs up a deployed lightpole.
*/
private["_pole"];
_pole = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0;
if(isNil "_pole") exitWith {};

if(([true,"pole",1] call life_fnc_handleInv)) then
{
    titleText["Du hast den Leitkegel aufgehoben.","PLAIN"];
    player removeAction life_action_packuppole;
    life_action_packuppole = nil;
    deleteVehicle _pole;
};