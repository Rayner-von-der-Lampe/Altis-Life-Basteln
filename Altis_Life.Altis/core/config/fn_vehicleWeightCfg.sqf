/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {96};                        //Offroad
	case "B_G_Offroad_01_F": {25};                      //Offroad HMG
	case "B_Quadbike_01_F": {24};                      	//Quad
	case "I_Truck_02_covered_F": {252};                 //Zamak Plane
	case "I_Truck_02_transport_F": {252};               //Zamak Offen
	case "C_Hatchback_01_F": {48};                      //Sportwagen
	case "C_Hatchback_01_sport_F": {40};                //Sportwagen
	case "C_SUV_01_F": {48};                            //Suv
	case "C_Van_01_transport_F": {144};                 //Pritche
	case "C_Van_01_box_F": {168};                       //Box
	case "C_Boat_Civil_01_F": {85};                     /////////////
	case "C_Boat_Civil_01_police_F": {85};              ///Boot
	case "C_Boat_Civil_01_rescue_F": {85};              /////////////
	case "C_Rubberboat": {85};                          /////////////
	case "B_Truck_01_box_F": {720};                     //Hemett
	case "B_Truck_01_transport_F": {420};               //Hemett Priche
	case "B_Truck_01_covered_F": {420};                 //Hemett Plane
	case "B_Truck_01_mover_F": {50};                    //Hemett Abschleppwagen
	case "B_MRAP_01_F": {60};                           //Hunter cop
	case "O_MRAP_02_F": {60};                           //Ifrit
	case "I_MRAP_03_F": {60};                           //Sriker
	case "B_Heli_Light_01_F": {96};                     //Littel Birt
	case "O_Heli_Light_02_unarmed_F": {240};            //Orca
	case "O_Boat_Armed_01_hmg_F": {85};                 ///////////////
	case "B_Boat_Armed_01_minigun_F": {85};             ///////////////
	case "I_Boat_Armed_01_minigun_F": {85};             ///////////////
	case "B_G_Boat_Transport_01_F": {85};               //Boot
	case "B_Boat_Transport_01_F": {85};                 ///////////////
	case "I_Heli_Transport_02_F": {264};                //Mohak
	case "O_Truck_03_transport_F": {300};               //Tempes Pritche
	case "O_Truck_03_covered_F": {300};                 //Tempes Plane
	case "O_Truck_03_repair_F": {300};                  //Tempes
	case "O_Truck_03_device_F": {240};                  //Tempes Erntegerät
	case "Land_WaterTank_F": {210};                      //Wassertank
	case "Box_NATO_AmmoVeh_F": {115};                       ////////
	case "Land_Cargo20_blue_F": {130};                   ////////
	case "Land_Cargo40_blue_F": {175};                   ////////
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	default {-1};
};