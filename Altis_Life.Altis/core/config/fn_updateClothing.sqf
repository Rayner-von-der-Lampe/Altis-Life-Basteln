/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/


///Uniform
////////////////

if (playerSide == independent) then
{
	[] spawn    
		{
			while {true} do
			{
				waitUntil {uniform player == "U_I_HeliPilotCoveralls"};
				[[player,"textures\medic_uniform2.paa"],  "life_fnc_setUniform", true, true] spawn life_fnc_MP;
				waitUntil {uniform player != "U_I_HeliPilotCoveralls"};
			};
		};

		[] spawn    
		{
			while {true} do
			{
				waitUntil {uniform player == "B_Kitbag_cbr"};
				[[player,"textures\medic_backpack.jpg"], "life_fnc_setUniform", true, true] spawn life_fnc_MP;
				waitUntil {uniform player != "B_Kitbag_cbr"};
			};
		};
		
	};