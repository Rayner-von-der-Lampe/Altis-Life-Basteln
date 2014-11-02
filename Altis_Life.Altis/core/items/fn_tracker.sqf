private["_unit"];
_unit = cursorTarget;

if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "Hier kannst du keine GPS Verfolgung einbauen."};
if(player distance _unit > 10) exitWith {hint "Du musst innerhalb von 10 Metern sein!"};
if(_unit in life_tracked) exitWith {hint "Du verfolgst dieses Fahrzeug schon."};
if(!([false,"tracker",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;

life_action_inUse = true;

player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};

life_action_inUse = false;
if(player distance _unit > 10) exitWith {titleText["Du bist nicht in Reichweite!","PLAIN"];};

life_tracked set [count life_tracked, _unit];
titleText["Du hast eine GPS Verfolgung fuer dieses Fahrzeug eingebaut.","PLAIN"];