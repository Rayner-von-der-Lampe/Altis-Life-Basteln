if (playerSide == independent) then {
	if ((uniform player) == "U_I_HeliPilotCoveralls") then
	{
		[[player,"textures\medic_uniform2.paa"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
};