/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_G_Story_Protagonist_F",nil,10000],
			["U_BG_Guerilla2_1",nil,11000],
			["U_BG_Guerilla2_2",nil,11500],
			["U_BG_Guerilla2_3",nil,15610],
			["U_BG_Guerilla1_1",nil,11500],
			["U_BG_Guerilla3_1",nil,15610],
			["U_BG_Guerrilla_6_1",nil,11500],
			["U_BG_leader",nil,17500],
			["U_I_G_resistanceLeader_F",nil,17500],
			["U_I_GhillieSuit",nil,80000],
			["U_B_GhillieSuit",nil,80000],
			["U_O_GhillieSuit",nil,80000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_blu",nil,500],
			["H_Bandanna_sand",nil,500],
			["H_Bandanna_gry",nil,500],
			["H_Bandanna_surfer_grn",nil,500],
			["H_Bandanna_surfer_blk",nil,500],
			["H_Bandanna_cbr",nil,500],
			["H_Bandanna_sgg",nil,500],
			["H_Bandanna_surfer",nil,500],
			["H_Bandanna_khk",nil,500],
			["H_Bandanna_khk_hs",nil,500],
			["H_Bandanna_mcamo",nil,500],
			["H_Bandanna_camo",nil,500],
			["H_Watchcap_cbr",nil,800],
			["H_Watchcap_camo",nil,800],
			["H_Watchcap_blk",nil,800],
			["H_Watchcap_khk",nil,800],
			["H_Booniehat_oli",nil,500],
			["H_Booniehat_tan",nil,500],
			["H_Booniehat_khk",nil,500],
			["H_Booniehat_khk_hs",nil,500],
			["H_Booniehat_dgtl",nil,500],
			["H_Booniehat_mcamo",nil,500],
			["H_Hat_blue",nil,500],
			["H_Hat_brown",nil,500],
			["H_Hat_grey",nil,500],
			["H_Hat_tan",nil,500],
			["H_Hat_checker",nil,500],
			["H_Hat_camo",nil,500],
			["H_StrawHat",nil,500],
			["H_StrawHat_dark",nil,500],
			["H_Cap_grn_BI",nil,500],
			["H_Cap_blu",nil,500],
			["H_Cap_blk_CMMG",nil,500],
			["H_Cap_grn",nil,500],
			["H_Cap_tan",nil,500],
			["H_Cap_blk_ION",nil,500],
			["H_Cap_oli",nil,500],
			["H_Cap_red",nil,500],
			["H_Cap_blk",nil,500],
			["H_Cap_surfer",nil,500],
			["H_Cap_blk_Raven",nil,500],
			["H_Cap_brn_SPECOPS",nil,500],
			["H_Cap_khaki_specops_UK",nil,500],
			["H_Cap_tan_specops_US",nil,500],
			["H_Cap_usblack",nil,500],
			["H_MilCap_blue",nil,500],
			["H_MilCap_gry",nil,500],
			["H_MilCap_ocamo",nil,500],
			["H_MilCap_mcamo",nil,500],
			["H_MilCap_dgtl",nil,500],
			["H_ShemagOpen_khk",nil,500],
			["H_ShemagOpen_tan",nil,500],
			["H_Shemag_olive",nil,500],
			["H_Shemag_olive_hs",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Bandanna_shades",nil,25],
			["G_Bandanna_beast",nil,20],
			["G_Bandanna_tan",nil,25],
			["G_Bandanna_khk",nil,20],
			["G_Bandanna_oli",nil,20],
			["G_Bandanna_aviator",nil,20],
			["G_Bandanna_blk",nil,25],
			["G_Bandanna_sport",nil,25],
			["G_Balaclava_combat",nil,25],
			["G_Balaclava_lowprofile",nil,25],
			["G_Balaclava_oli",nil,25],
			["G_Balaclava_blk",nil,25],
			["G_Aviator",nil,25],
			["G_Spectacles",nil,25],
			["G_Spectacles_Tinted",nil,25],
			["G_Squares",nil,25],
			["G_Shades_Blue",nil,25],
			["G_Shades_Green",nil,25],
			["G_Shades_Red",nil,25],
			["G_Shades_Black",nil,25],
			["G_Sport_Red",nil,25],
			["G_Sport_Blackyellow",nil,25],
			["G_Sport_BlackWhite",nil,25],
			["G_Sport_Checkered",nil,25],
			["G_Sport_Blackred",nil,25],
			["G_Sport_Greenblack",nil,25]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Chestrig_rgr",nil,25000],
			["V_Chestrig_khk",nil,25000],
			["V_HarnessO_brn",nil,25000],
			["V_HarnessO_gry",nil,25000],
			["V_HarnessOGL_brn",nil,25000],
			["V_HarnessOGL_gry",nil,25000],
			["V_Chestrig_blk",nil,25000],
			["V_BandollierB_cbr",nil,25000],
			["V_BandollierB_rgr",nil,25000],
			["V_BandollierB_khk",nil,25000],
			["V_BandollierB_oli",nil,25000],
			["V_BandollierB_blk",nil,25000],
			["V_HarnessOSpec_brn",nil,25000],
			["V_HarnessOSpec_gry",nil,25000],
			["V_TacVest_brn",nil,25000],
			["V_TacVest_khk",nil,25000],
			["V_TacVest_oli",nil,25000],
			["V_I_G_resistanceLeader_F",nil,25000],
			["V_TacVest_camo",nil,25000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_AssaultPack_rgr",nil,2500],
			["B_AssaultPack_sgg",nil,2500],
			["B_AssaultPack_khk",nil,2500],
			["B_AssaultPack_blk",nil,2500],
			["B_AssaultPack_ocamo",nil,2500],
			["B_AssaultPack_mcamo",nil,2500],
			["B_AssaultPack_dgtl",nil,2500],
			["B_FieldPack_cbr",nil,2500],
			["B_FieldPack_khk",nil,2500],
			["B_FieldPack_oli",nil,2500],
			["B_FieldPack_blk",nil,2500],
			["B_FieldPack_ocamo",nil,2500],
			["B_FieldPack_oucamo",nil,2500],
			["B_Carryall_cbr",nil,2500],
			["B_Carryall_khk",nil,2500],
			["B_Carryall_oli",nil,2500],
			["B_Carryall_ocamo",nil,2500],
			["B_Carryall_mcamo",nil,2500],
			["B_Carryall_oucamo",nil,2500],
			["B_Kitbag_cbr",nil,2500],
			["B_Kitbag_rgr",nil,2500],
			["B_Kitbag_sgg",nil,2500],
			["B_Kitbag_mcamo",nil,2500],
			["B_TacticalPack_rgr",nil,2500],
			["B_TacticalPack_oli",nil,2500],
			["B_TacticalPack_blk",nil,2500],
			["B_TacticalPack_ocamo",nil,2500],
			["B_TacticalPack_mcamo",nil,2500],
			["B_Parachute",nil,10000]
		];
	};
};