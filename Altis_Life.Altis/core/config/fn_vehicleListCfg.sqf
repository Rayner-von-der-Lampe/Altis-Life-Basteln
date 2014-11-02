#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_SUV_01_F",7500],
			["C_Offroad_01_F",6300],
			["C_Hatchback_01_sport_F",15000],
			["C_Van_01_box_F",12550]
		];
	};
	
	case "med_air_hs": 
	{	
		_return = [
			["B_Heli_Light_01_F",65000],
			["O_Heli_Light_02_unarmed_F",125000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1800],
			["C_Hatchback_01_F",9600],
			["C_Offroad_01_F",7200],
			["C_SUV_01_F",12500],
			["C_Van_01_transport_F",36000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",42000],
			["I_Truck_02_transport_F",94500],
			["I_Truck_02_covered_F",94500],
			["O_Truck_03_transport_F",170000],
			["O_Truck_03_covered_F",170000],
			["B_Truck_01_transport_F",420000],
			["O_Truck_03_ammo_F",420000],
			["B_Truck_01_box_F",900000],
			["O_Truck_03_device_F",12000000]
		];	
	};
	
	case "civ_kiste":
	{
		_return =
		[
			["Land_WaterTank_F",155000],
			["Box_NATO_AmmoVeh_F",70000],
			["Land_Cargo20_blue_F",100000],
			["Land_Cargo40_blue_F",115000]
		];
	};
	
	case "kopf_car":
	{
		if(license_civ_kopf) then
		{
			_return set[count _return,
			["B_MRAP_01_F",500000]];
		};
		
	};
	
	case "adac_car":
	{
		if(license_civ_adac) then
		{
			_return set[count _return,
			["C_SUV_01_F",750000]];
			_return set[count _return,
			["C_Offroad_01_F",750000]];
		};
		
	};
	
	case "taxi_car":
	{
		if(license_civ_taxi) then
		{
			_return set[count _return,
			["C_SUV_01_F",750000]];
			_return set[count _return,
			["C_Offroad_01_F",750000]];
		};
		
	};
		
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2400]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,["B_G_Offroad_01_F",35000]];
			_return set[count _return,["B_MRAP_01_F",300000]];
			_return set[count _return,["O_MRAP_02_F",300000]];
			_return set[count _return,["B_G_Offroad_01_armed_F",750000]];
			_return set[count _return,["O_Truck_03_repair_F",170000]];
			_return set[count _return,["B_Heli_Light_01_F",240000]];
			_return set[count _return,["I_Heli_Transport_02_F",3300000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",25000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",150000]];
			_return set[count _return,
			["B_Truck_01_mover_F",25000]];
			_return set[count _return,
			["I_Truck_02_covered_F",45000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_MRAP_03_F",120000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",12000]];
			
			//CUSTOM TEST
			_return set[count _return,
			["I_MRAP_03_hmg_F",500000]];
			//CUSTOM TEST END
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",240000],
			["O_Heli_Light_02_unarmed_F",1800000]
		];
	};
	
	case "kopf_air":
	{
		if(license_civ_kopf) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",250000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",450000]];
		};
	};
	
	case "adac_air":
	{
		if(license_civ_adac) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",750000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",750000]];
		};
	};
	
	case "taxi_air":
	{
		if(license_civ_taxi) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",750000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",750000]];
		};
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",25000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",250000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",250000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",100000]];
		};
	};
	
	case "cop_airhq":
	{
	    if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_F",25000]];
			_return set[count _return,
			["C_Offroad_01_F",5000]];
			_return set[count _return,
			["C_SUV_01_F",20000]];
			_return set[count _return,
			["B_Heli_Light_01_F",25000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",100000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",100000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",250000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
	
	case "donator_1":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return =  [
							["B_Quadbike_01_F",3450],
							["C_Hatchback_01_sport_F",48750],
							["C_Offroad_01_F",10500],
							["C_SUV_01_F",37500],
							["C_Van_01_transport_F",45000],
							["C_Van_01_Fuel_F",52400],
							["B_Truck_01_transport_F",1312400],
							["B_Truck_01_covered_F",1687500],
							["B_Truck_01_box_F",2240000]
					];
		};
		if(__GETC__(life_donator) == 2) then
		{
			_return =  [
							["B_Quadbike_01_F",2300],
							["C_Hatchback_01_sport_F",32400],
							["C_Offroad_01_F",7000],
							["C_SUV_01_F",24000],
							["C_Van_01_transport_F",30000],
							["C_Van_01_Fuel_F",26500],
							["O_Truck_03_transport_F",350000],
							["O_Truck_03_covered_F",500000],
							["O_Truck_03_ammo_F",750000],
							["O_Truck_03_device_F",450000],
							["B_Truck_01_transport_F",875000],
							["B_Truck_01_covered_F",1124000],
							["B_Truck_01_box_F",1500000]
						];
		};
		if(__GETC__(life_donator) >= 3) then
		{
			_return =  [
							["B_Quadbike_01_F",1150],
							["C_Hatchback_01_sport_F",16250],
							["C_Offroad_01_F",3500],
							["C_SUV_01_F",12400],
							["C_Van_01_transport_F",15000],
							["C_Van_01_Fuel_F",18500],
							["O_Truck_03_transport_F",175000],
							["O_Truck_03_covered_F",240000],
							["O_Truck_03_ammo_F",375000],
							["B_Truck_01_transport_F",437500],
							["B_Truck_01_covered_F",562400],
							["B_Truck_01_box_F",750000]
						];
		};
	};
	case "donaheli_1":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return =  [
							["B_Heli_Light_01_F",600000],
							["O_Heli_Light_02_unarmed_F",1050000],
							["I_Heli_Transport_02_F",3750000]
					];
		};
		if(__GETC__(life_donator) == 2) then
		{
			_return =  [
							["B_Heli_Light_01_F",400000],
							["O_Heli_Light_02_unarmed_F",700000],
							["I_Heli_Transport_02_F",2400000]
						];
		};
		if(__GETC__(life_donator) >= 3) then
		{
			_return =  [
							["B_Heli_Light_01_F",200000],
							["O_Heli_Light_02_unarmed_F",350000],
							["I_Heli_Transport_02_F",1240000]
						];
		};
	};
};

_return;
