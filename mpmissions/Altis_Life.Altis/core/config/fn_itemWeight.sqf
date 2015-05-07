/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {6};
	case "oilp": {3};
	case "heroinu": {6};
	case "heroinp": {3};
	case "cannabis": {6};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {1};
	case "ornate": {1};
	case "mackerel": {1};
	case "tuna": {1};
	case "mullet": {1};
	case "catshark": {1};
	case "turtle": {6};
	case "fishing": {1};
	case "turtlesoup": {3};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {1};
	case "fuelF": {2};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {6};
	case "ironore": {6};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {6};
	case "salt": {6};
	case "salt_r": {3};
	case "glass": {3};
	case "diamond": {6};
	case "diamondc": {3};
	case "cocaine": {6};
	case "cocainep": {3};
	case "spikeStrip": {2};
	case "rock": {6};
	case "cement": {3};
	case "goldbar": {10};
	case "blastingcharge": {2};
	case "boltcutter": {2};
	case "defusekit": {2};
	case "storagesmall": {1};
	case "storagebig": {2};
	case "tracker": {2};
	default {1};
};
