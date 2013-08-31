/*
	Fire a flare up in the sky

	Start: The start position of the flare
		- (ARRAY)

	End: The end position of the flare
		- (ARRAY)

	Horizontal Speed: The added horizontal speed to the flare
		- (NUMBER)

	Vertical Speed: The added vertical speed to the flare
		- (NUMBER)

	Class: The flare class
		- (STRING)
*/

//Params
private ["_start", "_end", "_horizontalSpeed", "_verticalSpeed","_logicarray"];
_start			= [_this, 0, [0,0,0], [[]]] call BIS_fnc_param;
_end 			= [_this, 1, [0,0,0], [[]]] call BIS_fnc_param;
_horizontalSpeed 	= [_this, 2, 5, [0]] call BIS_fnc_param;
_verticalSpeed 		= [_this, 3, 30, [0]] call BIS_fnc_param;

_center = createCenter sideLogic;
_group = createGroup _center;

sleep 5;

_logicarray = [];
for [{_x=1},{_x<=10},{_x=_x+1}] do
{


	//The flare class name
	private "_class";
	_class = [
		"F_40mm_Cir",
		"F_40mm_Green",
		"F_40mm_Red",
		"F_40mm_White",
		"F_40mm_Yellow"
	] call BIS_fnc_selectRandom;



	//The flare
	private ["_flare","_spawnpos"];
	_spawnpos = [_start, random 10, random 359] call BIS_fnc_relPos;
	if (isserver) then {_flare = _class createVehicle _spawnpos;};
	sleep 4;

	private "_logic";

	_logic = _group createUnit ["LOGIC",_spawnpos , [], 0, ""];
	_logic say3d "fogos";
	_logicarray = _logicarray + [_logic];

}

sleep 20;
deletecenter _center;
deletegroup _group;
{deleteVehicle _x} foreach _logicarray;

