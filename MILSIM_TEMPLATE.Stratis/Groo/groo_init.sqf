// VARIABLES
// Server Console Messages
groo_console_enabled = true;
groo_editmode_enabled = true;

// FUNCTIONS

//VAR
_missionName = "MILSIM Template";
_missionVersion = "0.13";

//PARAMS

// Console Functions
call compile preprocessFileLineNumbers "groo\functions\consoleFunctions.sqf";

if groo_editmode_enabled then {
	player allowDamage false;
	[]execVM "NORRN_cam\start_cam.sqf";
	onMapSingleClick "player setpos _pos";
	["INFO: Edit mode Enabled - Player Damage Disabled - Mapclick Teleport Enabled","green"] spawn groo_fnc_consoleMSG;
};

// TAW Viewdistance
[] execVM "taw_vd\init.sqf";
["INFO: TAW ViewDistance Enabled","green"] spawn groo_fnc_consoleMSG;

