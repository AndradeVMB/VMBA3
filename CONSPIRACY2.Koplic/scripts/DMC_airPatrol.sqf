/******************************************************************************/
/***                                                                        ***/
/*** DMC Air Patrol v1.1                                                    ***/
/*** by Demon Cleaner                                                       ***/
/***                                                                        ***/
/*** Changelog:                                                             ***/
/***                                                                        ***/
/*** v1.2                                                                   ***/
/*** - Added automatic world recognition                                    ***/
/*** - Removed parameter to specify the name of the current game world      ***/
/*** - Reduced the search radius for locations on Altis                     ***/
/*** - Default patrol time changed to 5 Minutes                             ***/
/***                                                                        ***/
/*** v1.1                                                                   ***/
/*** - Added parameter to specify the amount of air patrols to spawn        ***/
/*** - Added parameter to specify the minimum patrol time                   ***/
/*** - Converted script to a function that can be precompiled at init and   ***/
/***   called when needed                                                   ***/
/*** - Added recursive function call in order to respawn destroyed patrols  ***/
/***   automatically.                                                       ***/
/***                                                                        ***/
/*** v1.0                                                                   ***/
/*** - Initial release ported over from ArmA 2                              ***/
/***                                                                        ***/
/******************************************************************************/

// Easy script identifier
scriptName "DMC_AIR_PATROL";

// Run on server only
if (!isServer) exitWith {};

private [
"_locSRD","_locPST","_patVHT","_patSID","_patALT","_patROE","_patBEH",
"_patSPE","_patWPT","_patSKL","_patNUM","_patMPT","_patRND","_locPST_keep",
"_locSSP","_nLocs","_posArr","_angArr","_a","_idx","_mpos","_angle",
"_radius","_fpos","_b","_spwArr","_spwVeh","_c","_nPat"
];

// Fetch arguments - try to compensate for user input errors
_locSRD = [_this,0,5000,[0]] call BIS_fnc_param;
_locPST = [_this,1,[0,0],[0,[1,2]]] call BIS_fnc_param;
_patVHT = [_this,2,"O_Heli_Attack_02_F",[""]] call BIS_fnc_param;
_patSID = [_this,3,EAST] call BIS_fnc_param;
_patALT = [_this,4,100,[0]] call BIS_fnc_param;
_patROE = [_this,5,"YELLOW",["","BLUE","GREEN","WHITE","YELLOW","RED"]] call BIS_fnc_param;
_patBEH = [_this,6,"SAFE",["","SAFE","AWARE","COMBAT","STEALTH"]] call BIS_fnc_param;
_patSPE = [_this,7,"NORMAL",["","LIMITED","NORMAL","FULL"]] call BIS_fnc_param;
_patWPT = [_this,8,"MOVE",["",["MOVE","SAD","DESTROY"]]] call BIS_fnc_param;
_patSKL = [_this,9,0.75,[0,[0,1]]] call BIS_fnc_param;
_patNUM = [_this,10,1,[0,[1,((count _locPST) - 1)]]] call BIS_fnc_param;
_patMPT = [_this,11,300,[0]] call BIS_fnc_param;
_patRND = [_this,12,TRUE] call BIS_fnc_param;

// Safekeep initial spawn position(s)
_locPST_keep = _locPST;

// Find cities, villages and other locations within a specified radius
_locSSP = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");
_nLocs = nearestLocations [_locSSP,["NameCityCapital","NameCity","NameVillage","Name"],_locSRD];

// Select the air patrol spawn position(s) based on the results of the above query
_angArr = [];
_posArr = [];
for [{_a = 0},{_a < _patNUM},{_a = _a + 1}] do {
	_idx = round (random ((count _locPST) - 1));
	_mpos = _locPST select _idx;
	_locPST = [_locPST,_idx] call BIS_fnc_removeIndex;
	_angle = round (random 360 / pi);
	_angArr set [_a,_angle];
	_radius = 50 + (round (random 50));
	_fpos = [(_mpos select 0)+(sin(_angle)*_radius),(_mpos select 1)+(cos(_angle)*_radius)];
	_posArr set [_a,_fpos];
};

// Spawn air patrol group(s)
_spwArr = [];
for [{_b = 0},{_b < _patNUM},{_b = _b + 1}] do {
	_spwVeh = [(_posArr select _b),(_angArr select _b),_patVHT,_patSID] call BIS_fnc_spawnVehicle;
	_spwArr set [_b,_spwVeh];
};

// Plot flight path(s) for air patrol
for [{_c = 0},{_c < _patNUM},{_c = _c + 1}] do {
	_nPat = [
	(_spwArr select _c),_nLocs,_patALT,_patROE,_patBEH,_patSPE,_patWPT,_patSKL,
	_patMPT,_patRND,_locSRD,_locPST_keep,_patVHT,_patSID
	] spawn {
		private [
		"_veh","_units","_grp","_locs","_nLoc","_wp","_eLoc","_alt","_roe","_beh",
		"_spe","_wpt","_mpt","_rnd","_srd","_pst","_vht","_sid","_skl","_am","_d",
		"_idx","_air_patrol"
		];

		// Fetch arguments
		_veh = (_this select 0) select 0;		// Vehicle
		_units = (_this select 0) select 1; // Units
		_grp = (_this select 0) select 2;   // Group
		_locs = _this select 1;             // Patrol locations
		_alt = _this select 2;              // Flight altitude
		_roe = _this select 3;              // Rules of engagement
		_beh = _this select 4;              // Combat Behaviour
		_spe = _this select 5;              // Speed
		_wpt = _this select 6;              // Waypoints
		_skl = _this select 7;							// Unit skill
		_mpt = _this select 8;							// Min patrol time
		_rnd = _this select 9;              // Randomize waypoints
		_srd = _this select 10;							// Search distance
		_pst = _this select 11;							// Patrol starting positions
		_vht = _this select 12;							// Vehicle type
		_sid = _this select 13;							// Side

		// Patrol vehicle properties
		_veh = vehicle leader _veh;
		_veh setVehicleLock "LOCKED";
		_veh flyInHeight _alt;

		// Air patrol behaviour
		_grp setCombatMode _roe;
		_grp setBehaviour _beh;
		_grp setSpeedMode _spe;
		{_x setSkill _skl} forEach _units;

		// Plot flight path
		_nLoc = [_locs,((count _locs) - 1)] call BIS_fnc_removeIndex;
		// Randomized waypoints
		if (_rnd) then {
			_am = count _nLoc;
			for [{_d = 1},{_d <= _am},{_d = _d + 1}] do {
				_idx = [_nLoc] call BIS_fnc_randomIndex;
				_wp = _grp addWaypoint [getPos (_nLoc select _idx),5];
				_wp setWaypointType _wpt;
				_nLoc = [_nLoc,_idx] call BIS_fnc_removeIndex;
			};
		// Fifo waypoints
		} else {
			{
				_wp = _grp addWaypoint [getPos _d,5];
				_wp setWaypointType _wpt;
			} forEach _nLoc;
		};
		// Final waypoint set to cycle to keep the patrol moving
		_eLoc = _locs select ((count _locs) - 1);
		_wp = _grp addWaypoint [getPos _eLoc,5];
		_wp setWaypointType "CYCLE";

		// Wait for minimum patrol timer to run out
		sleep _mpt;

		// Wait for patrol to be destroyed or immobilized (eg: ran out of fuel, crash landed ...)
		waitUntil {((!(alive vehicle _veh)) || (!(canMove vehicle _veh)))};

		// Recursively call function to spawn a replacement patrol for the destroyed instance using user supplied parameters
		_air_patrol = [
			_srd,	// Search radius for patrol locations (Starting from map center position)
 			_pst,	// Array of air patrol starting positions (Use whatever you like. Just make sure the result is a 2D position in format [x,y])
 			_vht,	// Air patrol vehicle type (Anything that can fly and has a crew)
 			_sid,	// Side of air patrol (West,East,Resistance,Civilian)
 			_alt,	// Patrol altitude (Meters above ground)
 			_roe,	// Patrol combat mode (Blue / Green / White / Yellow / Red)
 			_beh,	// Patrol behaviour (Careless / Safe / Aware / Combat)
 			_spe,	// Patrol speed (Limited / Normal / Full)
 			_wpt,	// Waypoint type (Move / Sad / Destroy)
 			_skl,	// Skill of the crew steering the patrol vehicle (0.0 - 1.0)
			1,		// Amount of air patrols to spawn (spawn positions will be randomized based on above defined marker locations)
 			_mpt,	// Minimum patrol time (used as timer for alive / canMove check)
 			_rnd	// Randomize waypoints (True / False)] call DMC_Air_Patrol;
		] call DMC_Air_Patrol;
	};
};

// Return multidimensional array e.g: [[0,[vehicle,[crew],group]],[,[]]]
_spwArr
