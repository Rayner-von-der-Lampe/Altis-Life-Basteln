/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{	

	case "B_Truck_01_mover_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Polize";};
		};
	};
	
	case "I_MRAP_03_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "SEK";};
		};
	};
	
	case "I_MRAP_03_hmg_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "SEK";};
		};
	};
	
	case "O_MRAP_02_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Anarchie";};
		};
	};
	
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Monster Grüen"};
			case 7: {_color = "Monster Weiss"};
			case 8: {_color = "Doge"};
			case 9: {_color = "Simmi";};
			case 10: {_color = "Polizei"};
			case 11: {_color = "Notarzt"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "Pimp";};
			case 9: {_color = "Sport"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "Notarzt"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Black";};
			case 2: {_color = "Silver";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Yoko";};
			case 5: {_color = "Wolf"};
			case 6: {_color = "Sticker"};
			case 7: {_color = "Energy"};
			case 8: {_color = "Redbull";};
			case 9: {_color = "Digi Camo";};
			case 10: {_color = "Polizei"};
			case 11: {_color = "Notarzt"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "Notarzt"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Redbull"};
			case 1: {_color = "Monster";};
			case 2: {_color = "Weed";};
			case 3: {_color = "Camo Rebel";};
			case 4: {_color = "Notarzt"};
			case 5: {_color = "Polizei"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Lila Weiss"};
			case 1: {_color = "Rot Weiss"};
			case 2: {_color = "Notarzt"};
			case 3: {_color = "Polizei"};
			case 4: {_color = "Blau Weiss"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "Digicamo"};
		};
	};
	
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blau"};
			case 1: {_color = "Gruen"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Polizei"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blau"};
			case 1: {_color = "Gruen"};
			case 2: {_color = "Orange"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
		    case 0: {_color = "Polizei"};
			case 1: {_color = "SEK"};
		};
	};
};

_color;