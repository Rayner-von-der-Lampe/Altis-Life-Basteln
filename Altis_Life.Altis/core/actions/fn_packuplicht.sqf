/*
    File: fn_packupLightlicht.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: german impulz

    Description:
    Packs up a deployed lightlicht.
*/
private["_licht"];
_licht = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0;
if(isNil "_licht") exitWith {};

if(([true,"licht",1] call life_fnc_handleInv)) then
{
    titleText["Du hast die Scheinwerfer aufgehoben.","PLAIN"];
    player removeAction life_action_packuplicht;
    life_action_packuplicht = nil;
    deleteVehicle _licht;
};