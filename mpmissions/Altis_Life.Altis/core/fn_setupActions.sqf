/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
	};
{
	case civilian:
	{
	//Polizeimarke
    life_actions = life_actions + [player addAction["<t color='#00FF00'>Polizeimarke zeigen</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
	}
};
{
	case west:
	{
	//Schranke
    life_actions = life_actions + [player addAction["<t color='#FF0000'>Schranke aufheben</t>",life_fnc_packupschranke,"",0,false,false,"",' _schranke = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0; !isNil "_schranke" && !isNil {(_schranke getVariable "item")}']];
	}
};