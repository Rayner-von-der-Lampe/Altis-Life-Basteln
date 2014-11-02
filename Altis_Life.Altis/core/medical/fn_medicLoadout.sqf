/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	//[[player,0,"icons\images\notarzt\uniform\medic_uniform2.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;\\
	Description:
	Loads the medic out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
removeUniform player;
removeVest player;
removeGoggles player;
removeHeadGear player;
player forceAddUniform  "U_I_HeliPilotCoveralls";
player addBackpack "B_Kitbag_cbr";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "Medikit";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
	player unlinkItem (hmd player);
};

[] call life_fnc_updateClothing;