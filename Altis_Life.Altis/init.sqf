diag_log "------------------------------------------------------------------------------------------------------";
diag_log "---------------------------------- Starting ImpulZ Life Server Init ----------------------------------";
diag_log "---------------------------------- <<<<<<www.german-impulz.com>>>>> ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG Custom";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "nosidechat.sqf";

// marksystem start //
if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "Market prices generated!";
	
	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log format["Market prices updated! %1", _this select 1];
	};
	
	//Start server fsm	
	[] execFSM "core\fsm\server.fsm";
	diag_log "Server FSM executed";
};
// marktsystem stop //

StartProgress = true;


// Antihack
[] execVM "core\addons\Antihack\AntiCheat.sqf";

// Monitor
[] execVM "core\news\monitor.sqf";

//Teargas
[] execVM "core\addons\Teargas\teargas.sqf";

if (!isDedicated) then {
	[] execVM "IgiLoad\IgiLoadInit.sqf";
};

[] spawn
{
	sleep 60;
	[] call life_fnc_updateClothing;
};

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
