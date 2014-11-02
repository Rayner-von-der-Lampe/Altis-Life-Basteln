/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
	["diamondc", 2400, 150, 4500, 5, 2, 
		[ 
			["oilp",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["flaschp",1],
			["traup",1],
			["cement",1]
		]
	],
	
	["oilp", 1350, 250, 4000, 3, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["flaschp",1],
			["traup",1],
			["cement",1]
		]
	],
	
	["traup", 250, 110, 600, 3, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["flaschp",1],
			["cement",1]
		]
	],
	
	["flaschp", 200, 110, 500, 3, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["traup",1],
			["cement",1]
		]
	],
	
	["salt_r", 1500, 150, 2750, 2, 1,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["oilp",1],
			["glass",1],
			["flaschp",1],
			["traup",1],
			["cement",1]
		]
	],
	
	["iron_r", 1800, 150, 2500, 3, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["flaschp",1],
			["traup",1],
			["cement",1]
		]
	],
	
	["glass", 1250, 150, 2000, 2, 1,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["oilp",1],
			["flaschp",1],
			["traup",1],
			["cement",1]
		]
	],
	
	["cement", 1200, 150, 2500, 2, 1,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["flaschp",1],
			["traup",1],
			["oilp",1]
		]
	],
	
	["copper_r", 1150, 150, 2500, 2, 1,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["oilp",1],
			["salt_r",1],
			["glass",1],
			["flaschp",1],
			["traup",1],
			["cement",1]
		]
	],
	
	///////////////////////////////////
	
	["uranp", 7200, 450, 12500, 11, 8,
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["heroinp",1],
			["methp",1],
			["lsdp",1]
		]
	],
	
	["cocainep", 5500, 450, 9000, 11, 8, 
		[
			["marijuana",1],
			["heroinp",1],
			["methp",1],
			["moonshine",1],
			["uranp",1],
			["methp",1],
			["lsdp",1]
		]
	],
	
	["heroinp", 4800, 450, 8000, 11, 8, 
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["uranp",1],
			["methp",1],
			["lsdp",1]
		]
	],
	
	["lsdp", 4200, 450, 6000, 12, 8,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["turtle",1],
			["uranp",1],
			["methp",1],
			["heroinp",1]
		] 
	],
	
	["methp", 3800, 450, 6000, 12, 8,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["turtle",1],
			["uranp",1],
			["heroinp",1]
		] 
	],
	
	["marijuana", 4200, 450, 6000, 7, 5,
		[
			["heroinp",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["uranp",1],
			["methp",1],
			["lsdp",1]
		]
	],
	
	["turtle", 8000, 450, 15000, 13, 10,
		[
			["marijuana",1],
			["cocainep",1],
			["heroinp",1],
			["uranp",1],
			["lsdp",1],
			["methp",1]
		]
	]		
		
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};