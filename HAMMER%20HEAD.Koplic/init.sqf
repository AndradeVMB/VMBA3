
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

_missionName = "HAMMER HEAD";
_missionVersion = "0.4";
//Chairs
MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;

};
//PARAMS
PARAMEDITMODE = false;
PARAMSHOWINTRO = false;

// IED'S
iedcounter = 0;


Disarm = {
         _unit = _this select 0;
		 _b = _this select 1;
		 _unit addAction ["Disarm", "IED\Disarm.sqf", ( _b), 0, false, true, "", "(_target distance _this) < 3"];

};

removeAct = {
             _unit = _this select 0;
			 _unit removeaction 0;
			 };

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






