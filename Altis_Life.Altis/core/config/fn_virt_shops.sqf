/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","rabbit","apple","Birnen","redgull","tbacon","lockpick","pickaxe","axe","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Rebel Market",["Kabelbinder","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","methp","lsdp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark","muschp"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["handcuffs","donuts","coffee","spikeStrip","bark","licht","water","rabbit","apple","redgull","fuelF","pole","speedtrap","laptop","defusekit"]]};
	case "gas": {["Supermarkt",["water","redgull","tbacon","fuelE","fuelF","pickaxe","axt"]]};
	case "med": {["Sani/Medic",["water","redgull","tbacon","fuelE","fuelF"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "blackmarket": {["Schwarzmarkt",["uranp"]]};
	case "tuning": {["Tuningshop",["nitro","tracker","speedtrapdetector"]]};
	case "moebelladen": {["Moebelladen",["planke"]]};
	case "kopf": {["Kopfgeldjäger Markt", ["Kabelbinder","fuelF","water","redgull","rabbit","apple","tbacon","peach"], ["kopf"]]};
	case "adac": {["ADAC Markt", ["fuelF","water","redgull","rabbit","apple","tbacon","peach"], ["adac"]]};
	case "taxi": {["Taxi Markt", ["fuelF","water","redgull","rabbit","apple","tbacon","peach"], ["taxi"]]};
	case "saft": {["Getränke Markt", ["traup","flaschp"], ["saft"]]};
};