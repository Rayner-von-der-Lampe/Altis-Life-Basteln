#include <macro.h>
/*
	File: fn_adminMarkers.sqf
	Sourced from Lystics Player Markers Loop
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
life_markers = !life_markers;
if(life_markers) then {
	PlayerMarkers = [];
	FinishedLoop = false;
	hint localize "STR_ANOTF_MEnabled";
	while{life_markers} do {
		{
			if !(_x in allUnits) then {
				deleteMarkerLocal str _x;
			};
			if !(_x in vehicles) then {
				deleteMarkerLocal str _x;
			};
		} forEach PlayerMarkers;
		PlayerMarkers = [];
		{
			if(alive _x && isPlayer _x) then {
				deleteMarkerLocal str _x;
				_pSee = createMarkerLocal [str _x,getPos _x];
				_pSee setMarkerTypeLocal "mil_triangle";
				_pSee setMarkerPosLocal getPos _x;
				_pSee setMarkerSizeLocal [1,1];
				_pSee setMarkerTextLocal format['%1',_x getVariable["realname",name _x]];
				_pSee setMarkerColorLocal ("ColorRed");
				PlayerMarkers = PlayerMarkers + [_x];
			};
		} forEach allUnits;
		sleep 0.2;
		{
			if( (_x isKindof "Air" ) || (_x isKindof "Tank") || (_x isKindOf "Land") || (_x isKindOf "Ship"))  then {
				_VehMark = str _x;
				deleteMarkerLocal _VehMark;
				_VehMark = createMarkerLocal [_VehMark, getPos _x];
				_VehMark setMarkerTypeLocal "waypoint";
				_VehMark setMarkerPosLocal getPos _x;
				_VehMark setMarkerSizeLocal [0.5,0.5];
				_VehMark setMarkerTextLocal format['%1',typeOf _x];
				if ((_x isKindOf "Air") || (_x isKindOf "Tank")) then {
					_VehMark setMarkerColorLocal ("ColorGreen");
				} else {
					if ((_x isKindOf "Land") || (_x isKindOf "Ship")) then {
						_VehMark setMarkerColorLocal ("ColorBlue");
					};
				};
			};
		} forEach vehicles;
		sleep 0.2;
	};

FinishedLoop = true;
} else {
	if(isNil "FinishedLoop") exitWith {};
	hint localize "STR_ANOTF_MDisabled";
	waitUntil{FinishedLoop};
	{
		deleteMarkerLocal str _x;
	} forEach PlayerMarkers;	
};