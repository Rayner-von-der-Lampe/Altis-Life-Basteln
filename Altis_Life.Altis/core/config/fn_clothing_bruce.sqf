/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",250],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
		["U_C_Poloshirt_stripped","Poloshirt stripped",125],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
		["U_C_Poor_2","Rag tagged clothes",250],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",735],
		["U_IG_Guerilla2_3","The Outback Rangler",1200],
		["U_C_HunterBody_grn","The Hunters Look",1500],
		["U_C_WorkerCoveralls","Mechanic Coveralls",2500],
		["U_OrestesBody","Surfing On Land",1100],
		["U_NikosAgedBody","Casual Wears",5000],
		["U_C_Scientist","Strahlenanzug",150000]
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
			["H_Booniehat_oli",nil,500],
			["H_Booniehat_tan",nil,500],
			["H_Booniehat_khk",nil,500],
			["H_Hat_blue",nil,500],
			["H_Hat_brown",nil,500],
			["H_Hat_grey",nil,500],
			["H_Hat_tan",nil,500],
			["H_Hat_checker",nil,500],
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
			["H_Cap_khaki_specops_UK",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
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
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};