//PARAMS
groo_param_editmode = true;
groo_param_queueFactor = 0.5;


//INIT VARS
groo_var_execQueue = 0;



// BRIEFING


// TASKS


// INICIALIZACAO

if (groo_param_editmode) then {
	player allowDamage false;
	onMapSingleClick "player setpos _pos";
	[]execVM "scripts\NORRN_cam\start_cam.sqf";
};


// INICIALIZACAO UPSMON
//Init UPSMON scritp (must be run on all clients)
call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";


// INICIALIZACAO FHQ Task Tracker
call compile preprocessFileLineNumbers "scripts\fhqtt.sqf";


// Veicle Service Scripts
call compile preProcessFile "scripts\gvs\cfg_lookup.sqf";
call compile preProcessFile "scripts\gvs\simple_text_control.sqf";
call compile preprocessFile "scripts\gvs\sounds.sqf";

if (isNil "Public_Banned_Vehicle_Service_List") then {Public_Banned_Vehicle_Service_List = []};
if (isNil "Public_GVS_Delay") then {Public_GVS_Delay = 500};
if (isNil "Public_Servicepoint") then {Public_Servicepoint = 0};
if (isServer) then {execVM "gvs\gvs_watcher.sqf"};

// TAW Viewdistance
[] execVM "scripts\taw_vd\init.sqf";

// BTC Logistics
call compile preprocessFileLineNumbers "=BTC=_Logistic\=BTC=_logistic_Init.sqf";



//INICIALIZACAO DA MISSAO
#include "mission\occupation.hpp";
