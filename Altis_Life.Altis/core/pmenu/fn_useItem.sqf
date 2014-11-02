/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	case (_item == "pole"):
	{
		if(!isNull life_pole) exitWith {hint "Es steht schon ein Leitkegel!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_pole;
		};
	};
	
	case (_item == "bark"):
	{
		if(!isNull life_bark) exitWith {hint "Es steht schon eine Straßensperre!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_bark;
		};
	};
	
	case (_item == "licht"):
	{
		if(!isNull life_licht) exitWith {hint "Es steht schon ein Scheinwerfer!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_licht;
		};
	};
	case (_item == "axt"):
	{
		[] spawn life_fnc_axtUse;
	};
	
	case (_item == "nitro"):
	{
		[] spawn life_fnc_nos;
	};
	
	case (_item == "tracker"):
	{
		[] spawn life_fnc_tracker;
	};
	
	case (_item == "speedtrap"):
	{
        [] spawn king_fnc_speedtrapAdd;
        closeDialog 0;
	};    
       
	case (_item == "speedtrapdetector"):
	{
		hint "...es blinkt...";
	};
	
	case (_item == "laptop"):
	{
        [] spawn
        {   
            private["_status"];
            _status = 0;
            while {_status < 100} do
            {
                hintsilent format ["Bitte warten - Ladet das System %1%", _status];
                _status = _status + 1;
                sleep 0.1;
            };
            hintsilent format ["[Error 42] Kernel-panik..."];
        };
	};
	
	case (_item == "fuelManipulator"):
	{
        closeDialog 0;
		[] spawn king_fnc_fuelchangerManipulate;
	};    
       
 	case (_item == "fuelPipe"):
	{
        closeDialog 0;
		[] spawn king_fnc_fuelPipe;
	};
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;