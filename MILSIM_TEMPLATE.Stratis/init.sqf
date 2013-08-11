if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

//VAR
_missionName = "MILSIM Template";
_missionVersion = "0.12";

//PARAMS
PARAMEDITMODE = false;

// Init Groo Framework Scripts
call compile preprocessFileLineNumbers "groo\groo_init.sqf";
[format["INFO: Starting %1 version %2 init Script",_missionName,_missionVersion],"green"] spawn groo_fnc_consoleMSG;


if PARAMEDITMODE then {
	player allowDamage false;
	[]execVM "NORRN_cam\start_cam.sqf";
	onMapSingleClick "player setpos _pos";
	["INFO: Edit mode Enabled - Player Damage Disabled - Mapclick Teleport Enabled","green"] spawn groo_fnc_consoleMSG;
};

// TAW Viewdistance
[] execVM "taw_vd\init.sqf";
["INFO: TAW ViewDistance Enabled","green"] spawn groo_fnc_consoleMSG;

// MILSIM LoadOut Script
player addAction ["<t color='#0000FF'>" + "MILSIM LoadOut Menu" + "</t>","MILSIM\dialog\LoadOutMenu.sqf",[],10,false,false,"","_this distance MILSIMBox < 20"];
player addEventHandler ["Respawn", { player addAction ["<t color='#0000FF'>" + "MILSIM LoadOut Menu" + "</t>","MILSIM\dialog\LoadOutMenu.sqf",[],10,false,false,"","_this distance MILSIMBox < 20"];}];

// Group Maneagement Script
["INFO: Group Maneagement Script Enabled","green"] spawn groo_fnc_consoleMSG;
[player] execVM "scripts\groupsMenu\initGroups.sqf";


//Finish world initialization before mission is launched. 
finishMissionInit;

["INFO: Mission Init Finished","green"] spawn groo_fnc_consoleMSG;