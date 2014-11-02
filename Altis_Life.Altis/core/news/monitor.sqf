waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
systemChat format["Willkommen auf dem Jump Street Life", _rscLayer];

[] spawn {
    sleep 5;
    _counter = 360;
    _timeSinceLastUpdate = 0;
    while {true} do
    {
        sleep 5;
        _counter = _counter - 1;
                ((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["FPS: %1 | Polizei: %2 | Zivilisten: %3 | Sanitäter: %4 | Teamspeak-IP: 178.33.77.80:2138", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, _counter];
    }; 
};