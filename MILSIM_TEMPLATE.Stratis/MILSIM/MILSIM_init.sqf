// Constants
MILSIM_var_oficial = false;

if(isDedicated) exitWith {};
waitUntil {!isNull player && player == player};

// TAW Viewdistance
[] execVM "taw_vd\init.sqf";
["INFO: TAW ViewDistance Enabled","green"] spawn groo_fnc_consoleMSG;

// MILSIM LoadOut Script
MILSIM_Ammo_action = player addAction ["<t color='#0000FF'>" + "MILSIM LoadOut Menu" + "</t>","MILSIM\dialog\LoadOutMenu.sqf",[],10,false,false,"","_this distance MILSIMBox < 20"];

// MILSIM playernames
[] execVM "MILSIM\scripts\playernames.sqf";

// Group Maneagement Script
["INFO: Group Maneagement Script Enabled","green"] spawn groo_fnc_consoleMSG;
[player] execVM "scripts\groupsMenu\initGroups.sqf";


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
			MILSIM_Ammo_action = player addAction ["<t color='#0000FF'>" + "MILSIM LoadOut Menu" + "</t>","MILSIM\dialog\LoadOutMenu.sqf",[],10,false,false,"","_this distance MILSIMBox < 20"];
		};
		
		waitUntil {_recorded != vehicle player || !alive player};
	};
};