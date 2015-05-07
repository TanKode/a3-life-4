/*
    File: fn_mauer.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_schranke"];
_schranke = "Land_BarGate_F" createVehicle [0,0,0];
_schranke attachTo[player,[0,5.5,0.2]];
_schranke setDir 90;
_schranke setVariable["item","schrankeDeployed",true];

life_action_schrankeDeploy = player addAction["<t color='#00FF00'>Schranke aufstellen</t>",{if(!isNull life_schranke) then {detach life_schranke; life_schranke = ObjNull;}; player removeAction life_action_schrankeDeploy; life_action_schrankeDeploy = nil;},"",999,false,false,"",'!isNull life_schranke'];
life_schranke = _schranke;
waitUntil {isNull life_schranke};
if(!isNil "life_action_schrankeDeploy") then {player removeAction life_action_schrankeDeploy;};
if(isNull _schranke) exitWith {life_schranke = ObjNull;};
_schranke setPos [(getPos _schranke select 0),(getPos _schranke select 1),0];
_schranke allowDamage false;