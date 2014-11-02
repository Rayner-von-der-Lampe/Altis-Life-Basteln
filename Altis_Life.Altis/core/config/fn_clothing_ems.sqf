/*
	File: fn_clothing_ems.sqf
	Author: Hungry?
	
	Description:
	Uniform Shop für EMS
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Uniform Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_HeliPilotCoveralls","Rettungsdienst Uniform",850]
		];
	};
	
	//Hats
	case 1:
	{
		[
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		["B_Carryall_cbr",nil,500]
		];
	};
};