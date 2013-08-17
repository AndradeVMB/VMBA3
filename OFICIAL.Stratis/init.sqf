if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

_missionName = "Operation Socrates";
_missionVersion = "2.3";

//PARAMS
PARAMEDITMODE = false;
PARAMSHOWINTRO = false;
// Init Groo Framework Scripts
call compile preprocessFileLineNumbers "groo\groo_init.sqf";
[format["INFO: Starting %1 version %2 init Script",_missionName,_missionVersion],"green"] spawn groo_fnc_consoleMSG;

if (PARAMEDITMODE) then {
	player allowDamage false; 
	sleep 2;
	onMapSingleClick "player setpos _pos";
	hint 'left click on the map to teleport, you are in ghost mode';
	// Not needed for convoy scripts
	[]execVM "NORRN_cam\start_cam.sqf";
};

// TAW Viewdistance
[] execVM "taw_vd\init.sqf";

// MILSIM playernames
[] execVM "MILSIM\scripts\playernames.sqf";

// Group Maneagement Script
[player] execVM "scripts\groupsMenu\initGroups.sqf";

// MILSIM LoadOut Script
MILSIM_Ammo_action = player addAction ["<t color='#0000FF'>" + "MILSIM LoadOut Menu" + "</t>","MILSIM\dialog\LoadOutMenu.sqf",[],10,false,false,"","_this distance MILSIMBox < 40"];

										
[] spawn 
{
	private["_old","_recorded"];
	while {true} do
	{
		_recorded = vehicle player;
		if(!alive player) then
		{
			_old = player;
			_old removeAction MILSIM_Ammo_action;
			waitUntil {alive player};
			MILSIM_Ammo_action = player addAction ["<t color='#0000FF'>" + "MILSIM LoadOut Menu" + "</t>","MILSIM\dialog\LoadOutMenu.sqf",[],10,false,false,"","_this distance MILSIMBox < 40"];
		};
		
		waitUntil {_recorded != vehicle player || !alive player};
	};
};


//Init UPSMON scritp (must be run on all clients)
call compile preprocessFileLineNumbers "scripts\UPSMON\!R\markerAlpha.sqf";
call compile preprocessFileLineNumbers "scripts\fhqtt.sqf";
call compile preprocessFileLineNumbers "scripts\functions\GrooInit.sqf";
call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";	
call compile preprocessFileLineNumbers "=BTC=_Logistic\=BTC=_logistic_Init.sqf";
call compile preprocessFileLineNumbers "=BTC=_revive\=BTC=_revive_init.sqf";

//Ocupation
#include "mission\occupation.hpp";


// Veicle Service Scripts
call compile preProcessFile "gvs\cfg_lookup.sqf";
call compile preProcessFile "gvs\simple_text_control.sqf";
call compile preprocessFile "gvs\sounds.sqf";
if (isNil "Public_Banned_Vehicle_Service_List") then {Public_Banned_Vehicle_Service_List = []};
if (isNil "Public_GVS_Delay") then {Public_GVS_Delay = 500};
if (isNil "Public_Servicepoint") then {Public_Servicepoint = 0};
if (isServer) then {execVM "gvs\gvs_watcher.sqf"};

//Finish world initialization before mission is launched. 
finishMissionInit;

[format["INFO: Starting %1 version %2 init load finished",_missionName,_missionVersion],"green"] spawn groo_fnc_consoleMSG;






