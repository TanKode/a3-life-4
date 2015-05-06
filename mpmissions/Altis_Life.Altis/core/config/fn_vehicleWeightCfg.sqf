/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
    //AUTOS
    case "C_Quadbike_01_black_F ": {60};  // Quadbike
    case "C_Hatchback_01_F": {75};		// Limo
    case "C_Hatchback_01_sport_F": {75};		// Limo Sport
    case "C_SUV_01_F": {90};		// SUV
    case "C_Offroad_01_F": {105};		// Offroader
    case "C_Van_01_transport_F": {120};		// Truck
    case "C_Van_01_fuel_F": {135};		// Truck Fuel
    case "C_Van_01_box_F": {150};		// Truck Box
    case "B_MRAP_01_F": {75};		// Hunter
    case "O_MRAP_02_F": {75};		// Ifrit
    case "I_MRAP_03_F": {75};		// Strider
    //LKW
    case "O_Truck_02_transport_F": {250};		// Zamak Transport
    case "O_Truck_02_fuel_F": {450};		// Zamak Tank
    case "O_Truck_02_covered_F": {300};		// Zamak Abgedeckt
    case "O_Truck_03_transport_F": {650};		// Tempest Transport
    case "O_Truck_03_fuel_F": {650};		// Tempest Tank
    case "O_Truck_03_covered_F": {850};		// Tempest Abgedeckt
    case "O_Truck_03_device_F": {750};		// Tempest Gereat
    case "B_Truck_01_transport_F": {1000};		// Hemmt Transport
    case "B_Truck_01_fuel_F": {1000};		// Hemmt Tank
    case "B_Truck_01_covered_F": {1200};		// Hemmt Abgedeckt
    case "B_Truck_01_box_F": {1500};		// Hemmt Box
    //BOOTE
    //HELIS
    case "O_Heli_Transport_04_F": {10};		// Taru
    case "Land_Pod_Heli_Transport_04_box_F": {900};		//Container  Taru
    case "C_Heli_Light_01_civil_F": {10};		// M-900
    case "B_Heli_Light_01_F": {10};		// Hummingbird
    case "O_Heli_Transport_04_bench_F": {65};		// Taru Bank
    case "O_Heli_Light_02_unarmed_F": {65};		// Orca
    case "I_Heli_light_03_unarmed_F": {165};		// Hellcat
    case "B_Heli_Transport_01_F": {265};		// Ghost Hawk
    case "O_Heli_Transport_04_fuel_F": {350};		// Taru Tank
    case "O_Heli_Transport_04_box_F": {350};		// Taru Box
    case "I_Heli_Transport_02_F": {400};		// Mohawk
    case "B_Heli_Transport_03_unarmed_F": {450};		// HURON
	case "Land_CargoBox_V1_F": {5000};		// -
	case "Box_IND_Grenades_F": {350};		// -
	case "B_supplyCrate_F": {2000};		// Hausbox
	default {-1};
};