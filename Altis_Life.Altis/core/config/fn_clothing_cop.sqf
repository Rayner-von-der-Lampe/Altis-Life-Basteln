#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
	    if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["U_Rangemaster","Polizeibeamter",350]];
		};	
		
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["U_Rangemaster","Polizeibeamter",350]];
		};
		
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["U_Rangemaster","Polizeibeamter",350]];
            _ret set[count _ret,["U_B_Wetsuit","Taucheranzug",1000]];
		};
		
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Ausbilder",350]];
			_ret set[count _ret,["U_B_Wetsuit","Taucheranzug",1000]];
		};
		
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Ausbilder",350]];
			_ret set[count _ret,["U_B_Wetsuit","Taucheranzug",1000]];
		};
		
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","SEK",350]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","Leiter",350]];
			_ret set[count _ret,["U_B_Wetsuit","Taucheranzug",1000]];
		};
		
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Polizeichef",350]];
		};
	};
	
	//Hats - Edit(Cilith)
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_Beret_02","Dienstmuetze",0]];
			_ret set[count _ret,["H_PilotHelmetFighter_B","Gasmaske",1000]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
		    _ret set[count _ret,["H_Beret_02","Dienstmuetze",0]];
			_ret set[count _ret,["H_CrewHelmetHeli_B",Gassmaske,100]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["H_Beret_02","Dienstmuetze",0]];
			_ret set[count _ret,["H_CrewHelmetHeli_B",Gassmaske,100]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_Beret_02","Dienstmuetze",0]];
			_ret set[count _ret,["H_CrewHelmetHeli_B",Gassmaske,100]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["H_Beret_02","Dienstmuetze",0]];
			_ret set[count _ret,["H_CrewHelmetHeli_B",Gassmaske,100]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Balaclava_blk",nil,150],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Tactical_Black",nil,250],
			["G_Tactical_Clear",nil,250],
			["G_Diving",nil,500]
		];
	};
	
	//Vest - Edit(Cilith)
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];			
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_TacVest_khk",nil,12500]];
			_ret set[count _ret,["V_BandollierB_cbr",nil,4500]];
			_ret set[count _ret,["V_HarnessO_brn",nil,7500]];
			_ret set[count _ret,["V_TacVest_blk_POLICE","Polizeiweste",4900]];
			_ret set[count _ret,["V_PlateCarrier1_blk","BPOL-Sicherheitsweste",7000]];
			_ret set[count _ret,["V_RebreatherB","Sauerstoffflasche",5500]];
			_ret set[count _ret,["V_TacVestIR_blk","Schutzweste",4500]];	
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_AssaultPack_blk",nil,500],
			["B_FieldPack_blk",nil,2000],
			["B_Bergen_blk",nil,2200],
			["B_Carryall_ocamo",nil,2500],
			["B_Parachute","Fallschirm",2500]
		];
	};
};

_ret;