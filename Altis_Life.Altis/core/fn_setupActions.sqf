/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
    {
		//Lights?
		//life_actions = life_actions + [player addAction["Siren Lights ON",{[[vehicle player,0.22],"life_fnc_copLights",true,false] spawn life_fnc_MP; vehicle player setVariable["lights",true,true];},"",0,false,false,"",' vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"] && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && !(vehicle player getVariable "lights")']];
		//life_actions = life_actions + [player addAction["Siren Lights OFF",{vehicle player setVariable["lights",false,true];},"",0,false,false,"", ' vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"] && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable "lights") ']];


		life_actions = life_actions + [player addAction["Blaulicht aktivieren",{vehicle player setVariable["lights",false,true];},"",0,false,false,"",' vehicle player != player && isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player)']];

		life_actions = life_actions + [player addAction["Blaulichter an",{[[vehicle player,0.22],"life_fnc_copLights",true,false] spawn life_fnc_MP; vehicle player setVariable["lights",true,true];},"",0,false,false,"",' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && !(vehicle player getVariable "lights")']];
		life_actions = life_actions + [player addAction["Blaulichter aus",{vehicle player setVariable["lights",false,true];},"",0,false,false,"", ' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable "lights") ']];


		// Police Lights
		// life_actions = life_actions + [player addAction["Blaulichter an2",{[[vehicle player,0.22],"life_fnc_copLights",true,false] spawn life_fnc_MP; vehicle player setVariable["lights",true,true];},"",0,false,false,"",' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && !(vehicle player getVariable "lights")']];
		// life_actions = life_actions + [player addAction["Blaulichter aus2",{vehicle player setVariable["lights",false,true];},"",0,false,false,"",' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable "lights") ']];
	
		// nano EMP Little Bird
		//life_actions = life_actions + [player addAction["<t color='#FF0000'>EMP Operator Konsole oeffnen</t>",life_fnc_openEmpMenu,[],8,false,false,"",'[_this] call life_fnc_isEmpOperator']];
		
		//Speedtrap
        life_actions = life_actions + [player addAction["<t color='##7FFF00'>Einschalten</t>",king_fnc_speedtrapActivate,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && (cursorTarget isKindOf "Land_Runway_PAPI_4") && !(cursorTarget getVariable["speedtrap_active", false]) && (cursorTarget getVariable["speedtrap_registered", false]) ']];

        life_actions = life_actions + [player addAction["<t color='##7FFF00'>Ausschalten</t>",king_fnc_speedtrapActivate,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && (cursorTarget isKindOf "Land_Runway_PAPI_4") && (cursorTarget getVariable["speedtrap_active", false]) && (cursorTarget getVariable["speedtrap_registered", false]) ']];
        
        //life_actions = life_actions + [player addAction["<t color='##7FFF00'>Film rausholen</t>",king_fnc_speedtrapGetPhotoList,1,10,false,false,"",
        //'!isNull cursorTarget && (player distance cursorTarget) < 20 && (cursorTarget isKindOf "Land_Runway_PAPI_4") && (cursorTarget getVariable["speedtrap_registered", false]) ']];
        
        //life_actions = life_actions + [player addAction["<t color='##7FFF00'>Daten anschauen</t>",king_fnc_speedtrapGetPhotoList,0,10,false,false,"",
        //'!isNull cursorTarget && (player distance cursorTarget) < 20 && (cursorTarget isKindOf "Land_Runway_PAPI_4") && (cursorTarget getVariable["speedtrap_registered", false]) ']];
        
        life_actions = life_actions + [player addAction["<t color='##7FFF00'>Geschwindigkeit setzen</t>",king_fnc_speedtrapSetSpeedLimit,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && (cursorTarget isKindOf "Land_Runway_PAPI_4") && (cursorTarget getVariable["speedtrap_registered", false]) ']];

        life_actions = life_actions + [player addAction["<t color='##7FFF00'>Abbauen</t>",king_fnc_speedtrapRemove,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && (cursorTarget isKindOf "Land_Runway_PAPI_4") && (cursorTarget getVariable["speedtrap_registered", false]) ']];
		
		//NOS aktivieren
		//life_actions = life_actions + [player addAction["<t color='#00FF00'>NOS aktivieren</t>",life_fnc_boostNitro,false,2,false,false,"",
		//' (vehicle player != player) && (driver vehicle player == player) && (((vehicle player) getVariable["nitro", 0]) > 0) ']];
		
		//Polizeimarke
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Polizeimarke zeigen</t>",life_fnc_copShowLicense,"",1,false,true,"",'
		playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
		
		//Seize weapons 
		life_actions = life_actions + [player addAction["Waffen beschlagnahmen",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'
		!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
		
		//seize Objects 
		life_actions = life_actions + [player addAction["Beschlagnahmen",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'
		count(nearestObjects [player,["weaponholder"],3])>0']];
	};
	
	case independent: 
	{
		//Lights?
		//life_actions = life_actions + [player addAction["Siren Lights ON",{[[vehicle player,0.22],"life_fnc_copLights",true,false] spawn life_fnc_MP; vehicle player setVariable["lights",true,true];},"",0,false,false,"",' vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"] && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && !(vehicle player getVariable "lights")']];
		//life_actions = life_actions + [player addAction["Siren Lights OFF",{vehicle player setVariable["lights",false,true];},"",0,false,false,"", ' vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"] && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable "lights") ']];


		life_actions = life_actions + [player addAction["Blaulicht aktivieren",{vehicle player setVariable["lights",false,true];},"",0,false,false,"",' vehicle player != player && isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player)']];

		life_actions = life_actions + [player addAction["Blaulichter an",{[[vehicle player,0.22],"life_fnc_copLights",true,false] spawn life_fnc_MP; vehicle player setVariable["lights",true,true];},"",0,false,false,"",' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && !(vehicle player getVariable "lights")']];
		life_actions = life_actions + [player addAction["Blaulichter aus",{vehicle player setVariable["lights",false,true];},"",0,false,false,"", ' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable "lights") ']];


		// Police Lights
		// life_actions = life_actions + [player addAction["Blaulichter an2",{[[vehicle player,0.22],"life_fnc_copLights",true,false] spawn life_fnc_MP; vehicle player setVariable["lights",true,true];},"",0,false,false,"",' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && !(vehicle player getVariable "lights")']];
		// life_actions = life_actions + [player addAction["Blaulichter aus2",{vehicle player setVariable["lights",false,true];},"",0,false,false,"",' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable "lights") ']];
		
	};
	
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction["Drop Fishing Net",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		//Kidnappen
		//life_actions = [player addAction["<t color='#00FF00'>Kidnappen</t>",life_fnc_restrainAction,cursorTarget,9999999,false,false,"",'
        //!isNull cursorTarget && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 ']];

		//Suicide Bomb Vest.
		//life_actions = life_actions + [player addAction["Activate Suicide Vest",life_fnc_suicideBomb,"",0,false,false,"",
		//'vest player == "V_HarnessOGL_brn" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		
		//NOS aktivieren
		life_actions = life_actions + [player addAction["<t color='#00FF00'>NOS aktivieren</t>",life_fnc_boostNitro,false,2,false,false,"",
		' (vehicle player != player) && (driver vehicle player == player) && (((vehicle player) getVariable["nitro", 0]) > 0) ']];
		
		//Ausweis
		//life_actions = life_actions + [player addAction["<t color='#00FF00'>Ausweis zeigen</t>",life_fnc_civShowLicense,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
	};
};