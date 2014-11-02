#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
	
	if (__GETC__(life_coplevel) > 0) then {			
		life_paycheck = 3000; //Paycheck Amount
	};
	if (__GETC__(life_coplevel) > 1) then {			
		life_paycheck = 3500; //Paycheck Amount
	};
	if (__GETC__(life_coplevel) > 2) then {			
		life_paycheck = 4000; //Paycheck Amount
	};
	if (__GETC__(life_coplevel) > 3) then {			
		life_paycheck = 4500; //Paycheck Amount
	};
	if (__GETC__(life_coplevel) > 4) then {			
		life_paycheck = 5000; //Paycheck Amount
	};
	if (__GETC__(life_coplevel) > 5) then {			
		life_paycheck = 6000; //Paycheck Amount
	};
	if (__GETC__(life_coplevel) > 6) then {			
		life_paycheck = 7500; //Paycheck Amount
	};
};

[] spawn life_fnc_updateClothing;
player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
///////////////////NEU//////////////////////////////////////
private["_getRank"];
_getRank = switch (__GETC__(life_coplevel)) do {case 1: {1}; case 2: {2}; case 3: {3}; case 4: {4}; case 5: {5}; case 6: {6}; case 7: {7}; default {0};};
player setVariable["coplevel",_getRank,TRUE];



//-------------------------
//-------Kleidungen--------
//-------------------------
 
if (__GETC__(life_coplevel)== 1)  then {
 
//Ränge hier eintragen
[] spawn
{
        while {true} do
        {
                waitUntil {uniform player == "U_Rangemaster"};
                player setObjectTextureGlobal [0,"icons\images\Polizei\Uniformen\Rang_1.paa"];
                waitUntil {uniform player != "U_Rangemaster"};
		};
	};
};

if (__GETC__(life_coplevel)== 2)  then {
 
//Ränge hier eintragen
[] spawn
{
        while {true} do
        {
                waitUntil {uniform player == "U_Rangemaster"};
                player setObjectTextureGlobal [0,"icons\images\Polizei\Uniformen\Rang_2.paa"];
                waitUntil {uniform player != "U_Rangemaster"};
		};
	};
};

if (__GETC__(life_coplevel)== 3)  then {
 
//Ränge hier eintragen
[] spawn
{
        while {true} do
        {
                waitUntil {uniform player == "U_Rangemaster"};
                player setObjectTextureGlobal [0,"icons\images\Polizei\Uniformen\Rang_3.paa"];
                waitUntil {uniform player != "U_Rangemaster"};
        };
	};
};

if (__GETC__(life_coplevel)== 4)  then {
 
//Ränge hier eintragen
[] spawn
{
        while {true} do
        {
                waitUntil {uniform player == "U_B_CombatUniform_mcam"};
                player setObjectTextureGlobal [0,"icons\images\Polizei\Uniformen\Rang_4.paa"];
                waitUntil {uniform player != "U_B_CombatUniform_mcam"};
        };
	};
};

if (__GETC__(life_coplevel)== 5)  then {
 
//Ränge hier eintragen
[] spawn
{
        while {true} do
        {
                waitUntil {uniform player == "U_B_CombatUniform_mcam"};
                player setObjectTextureGlobal [0,"icons\images\Polizei\Uniformen\Rang_5.paa"];
                waitUntil {uniform player != "U_B_CombatUniform_mcam"};
        };
	};
};

if (__GETC__(life_coplevel)== 6)  then {
 
//Ränge hier eintragen
[] spawn
{
        while {true} do
        {
                waitUntil {uniform player == "U_B_CombatUniform_mcam"};
                player setObjectTextureGlobal [0,"icons\images\Polizei\Uniformen\Rang_6.paa"];
                waitUntil {uniform player != "U_B_CombatUniform_mcam"};
        };
	};
};

if (__GETC__(life_coplevel)== 7)  then {
 
//Ränge hier eintragen
[] spawn
{
        while {true} do
        {
                waitUntil {uniform player == "U_B_CombatUniform_mcam"};
                player setObjectTextureGlobal [0,"icons\images\Polizei\Uniformen\Rang_7.paa"];
                waitUntil {uniform player != "U_B_CombatUniform_mcam"};
        };
	};
};