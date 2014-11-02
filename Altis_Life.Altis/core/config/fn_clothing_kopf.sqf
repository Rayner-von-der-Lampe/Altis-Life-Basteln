/* 
File: fn_clothing_kopf.sqf 
Author: Bryan "Tonic" Boardwine 

Description: 
Master config for clothing shop. //Kopfgeldjäger
*/ 
private["_filter"]; 
_filter = [_this,0,0,[0]] call BIS_fnc_param; 
//Classname, Custom Display name (use nil for Cfg->DisplayName, price 
switch (_filter) do 
{ 
//Uniforms 
case 0: 
{ 
[ 
["U_I_CombatUniform_shortsleeve","Uniform Grün",500],
["U_KerryBody","Uniform Grau",500]
]; 
}; 

//Hats 
case 1: 
{ 
[ 
["H_Beret_blk_POLICE","Dienstmütze Schwarz",120], 
["H_Beret_Colonel","Dienstmütze Grün",130]
]; 
}; 

//Glasses 
case 2: 
{ 
[ 
["G_Shades_Black",nil,0], 
["G_Shades_Blue",nil,0], 
["G_Sport_Blackred",nil,0], 
["G_Sport_Checkered",nil,0], 
["G_Sport_Blackyellow",nil,0], 
["G_Sport_BlackWhite",nil,0]
]; 
}; 

//Vest 
case 3: 
{ 
[ 
["V_PlateCarrier1_rgr",nil,2500]
]; 
}; 

//Backpacks 
case 4: 
{ 
[ 
["B_Carryall_oli",nil,5000] 
]; 
}; 
};