/*
	File: welcomecredits.sqf
	Author: german-impulz.com
	Edit: by Marc
	Date: 12.08.2014
	Description: Intro in der rechten unteren Ecke.
*/

_onScreenTime = 8;

sleep 7; //Sekunden nach dem joinen sobald das Intro beginnen soll
 
_role1 = "Herzlich Willkommen auf dem Altis Life Server von:";
_role1names = ["german-impulz.com"];
_role2 = "Eure Projektleitung";
_role2names = ["Leitwolf","Rayner von der Lampe"];
_role3 = "Eure Admins";
_role3names = ["Leitwolf","MarcMarc"];
_role4 = "Scripter";
_role4names = ["Timme"];
_role5 = "Supporter";
_role5names = ["Odin","ToWe","DanDansen"];
_role6 = "Forum:";
_role6names = ["www.german-impulz.com/forum"];
_role7 = "Teamspeak 3:";
_role7names = ["178.33.77.80:2138"];
_role8 = "Beachtet unsere Server Regeln!";
_role8names = ["Viel Spaß"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.90' color='#FF0000' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.75' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]
];