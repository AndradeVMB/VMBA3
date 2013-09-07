//PARAMS
// Mission Params
if isMultiplayer then {
	groo_param_showintro =  if ((paramsarray select 0) == 1) then {true} else {false};
	groo_param_editmode = if ((paramsarray select 1) == 1) then {true} else {false};
	groo_param_timeofday = paramsarray select 2;
	groo_param_weather = paramsarray select 3;
}else{
	groo_param_showintro =  true;
	groo_param_editmode = true;
	groo_param_timeofday = 12;
	groo_param_weather = 1;
};


// Code params
groo_param_queueFactor = 0.5;

//INIT VARS
groo_var_execQueue = 0;

// BRIEFING

player createDiaryRecord ["Diary",
										["Créditos",
										"Groo Framework V2<br/>"+
										"UPSMON Arma3<br/>"+
										"Bangabob/Groo EOS<br/>"+
										"TAW's ViewDistance<br/>"+
										"FHQ's Task Tracker<br/>"+
										"Jamac's Vehicle Service<br/>"+
										"Farooq's Revive<br/>"+
										"Vehicle Respawn<br/>"+
										"Groo's Player Markers<br/>"+
										"Zuff's Groups Menu<br/>"+
										"MarKer's Vehicle HUD<br/>"+
										"<br/><br/>"]
										];

// TASKS

// INICIALIZACAO

// param_editmode
if groo_param_editmode then {
	player allowDamage false;
	onMapSingleClick "player setpos _pos";
	[]execVM "scripts\NORRN_cam\start_cam.sqf";
};

// param_timeofday
skiptime (((groo_param_timeofday) - daytime + 24) % 24);


// param_weather
switch groo_param_weather do {
  case 1: { 0 setOvercast 0; 0 setRain 0; 0 setFog 0 };
  case 2: { 0 setOvercast 1; 0 setRain 1; 0 setFog 0.2 };
  case 3: { 0 setOvercast 0.7; 0 setRain 0; 0 setFog 0 };
  case 4: { 0 setOvercast 0.7; 0 setRain 1; 0 setFog 0.7 };
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
if (isServer) then {execVM "scripts\gvs\gvs_watcher.sqf"};

// TAW Viewdistance
[] execVM "scripts\taw_vd\init.sqf";

// BTC Logistics
call compile preprocessFileLineNumbers "scripts\=BTC=_Logistic\=BTC=_logistic_Init.sqf";

// Farooq'a Revive
call compileFinal preprocessFileLineNumbers "scripts\FAR_revive\FAR_revive_init.sqf";

// Groo playernames
[] execVM "scripts\playernames.sqf";

// Vehicle Hud
[] execvm "scripts\Veh_Hud\crew.sqf";

// Zuff Group Maneagement Script
[player] execVM "scripts\groupsMenu\initGroups.sqf";






//INICIALIZACAO DA MISSAO
//#include "mission\occupation.hpp";

// Intro
//	[] spawn {


//			scriptName "initMission.hpp: mission start";
//			["core\DWSIntro.ogv", false] spawn BIS_fnc_titlecard;
//			waitUntil {!(isNil "BIS_fnc_titlecard_finished")};
//	};

