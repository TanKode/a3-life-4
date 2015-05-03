/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(life_cash > 0) then
{
 [[life_cash],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
    [[getPlayerUID _robber,_robber getVariable["realname",name _robber],"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
    [[1,"STR_NOTF_Robbed",true,[_robber getVariable["realname",name _robber],profileName,[life_cash] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    [[player, _robber, life_cash, 4, life_atmcash, 0],"TON_fnc_handleDBLog",false] spawn life_fnc_MP; //By Nukefliege <----- Hier
    life_cash = 0;
    ["1"] call SOCK_fnc_syncData;
}
	else
{
	[[2,"STR_NOTF_RobFail",true,[profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
};