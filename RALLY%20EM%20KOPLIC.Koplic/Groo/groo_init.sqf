// VARIABLES
// Server Console Messages
groo_console_enabled = true;
groo_editmode_enabled = false;

// FUNCTIONS

//VAR
_missionName = "Koplic Rally";
_missionVersion = "0.1";

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


