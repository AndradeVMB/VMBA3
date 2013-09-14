// Now whenever you want to spawn air patrols just call the precompiled function like this
private ["_air_patrol"];
_air_patrol = [
	3750,												// Search radius for patrol locations (Starting from map center position)
 	[														// Array of air patrol starting positions (Use whatever you like. Just make sure the result is a 2D position in format [x,y])
 		getMarkerPos "mkrAirPatSta_01"
	],
 	"O_Heli_Attack_02_black_F",				// Air patrol vehicle type (Anything that can fly and has a crew)
 	East,												// Side of air patrol (West,East,Resistance,Civilian)
 	100,												// Patrol altitude (Meters above ground)
 	"YELLOW",										// Patrol combat mode (Blue / Green / White / Yellow / Red)
 	"AWARE",										// Patrol behaviour (Careless / Safe / Aware / Combat)
 	"NORMAL",										// Patrol speed (Limited / Normal / Full)
 	"SAD",											// Waypoint type (Move / Sad / Destroy)
	0.75,												// Skill of the crew steering the patrol vehicle (0.0 - 1.0)
	4,													// Amount of air patrols to spawn (spawn positions will be randomized based on above defined marker locations)
 	300,												// Minimum patrol time (used as timer for alive / canMove check)
 	TRUE												// Randomize waypoints (True / False)
] call DMC_Air_Patrol;

if !isserver exitwith{};

private ["_Reinf_pos","_units","_newGroup","_param"];

_Reinf_pos = [1100.15,123.627,0.0013988];

_units 	=[
			"O_mas_rus_Soldier_lite_F_u",
			"O_mas_rus_Soldier_lite_F_u",
			"O_mas_rus_Soldier_lite_F_u",
			"O_mas_rus_Soldier_lite_F_u",
			"O_mas_rus_Soldier_lite_F_u",
			"O_mas_rus_Soldier_lite_F_u",
			"O_mas_rus_Soldier_lite_F_u",
			"O_mas_rus_Soldier_lite_F_u",
			"O_mas_rus_Soldier_lite_F_u"
			];

_newGroup = [_Reinf_pos,east,_units,[],[],[0.7,0.9]]call BIS_fnc_spawnGroup;
_param = [(leader _newGroup),"mkrHillpatrol7","NOSLOW","SPAWNED"];
nul= _param execVM "scripts\UPSMON.sqf";


_newGroup = [_Reinf_pos,east,_units,[],[],[0.7,0.9]]call BIS_fnc_spawnGroup;
_param = [(leader _newGroup),"mkrHillpatrol7","NOSLOW","SPAWNED"];
nul= _param execVM "scripts\UPSMON.sqf";
