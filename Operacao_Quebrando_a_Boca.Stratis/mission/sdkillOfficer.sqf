// Side mission for kill an Enemy Officer
// By Groo

if (!isServer) exitwith {};

private ["_newGroup","_triggerKill","_triggerReact","_mkrName","_posArray","_i","_newSpawnpos","_marker","_markerEOS"];

_mkrName = "mkrTaskKillOfficer";
_posArray = [

			[3714.12,4961.1,0.00219727],
			[3540.89,5047.02,0.00106812],
			[3199.73,5062.48,0.00157166]
			
			];
					
_i = floor(random (count _posArray));
_newSpawnpos = _posArray select _i;

_marker = createMarker [_mkrName, _newSpawnpos];
_marker setmarkertype "hd_dot";
_marker setmarkertext "Kill the Officer";
_marker setmarkercolor "colorBlack";

_markerEOS = createMarker [_mkrName+"EOS", _newSpawnpos];
_markerEOS setmarkersize [400,400];
_markerEOS setMarkerShape "ELLIPSE";
_markerEOS setMarkerBrush "DiagGrid";
_markerEOS setmarkercolor "colorRED";

// Create the target

_newGroup = createGroup east;
"O_officer_F" createUnit [_newSpawnpos, _newGroup,"Officer = this;Removeallweapons this;this disableai ""MOVE""", 0.9, "COLONEL"];
sleep 1;

//Create enemy Resistance
nul=[_mkrName+"EOS",100,"Garrison"] execVM "scripts\GrooEOS.sqf";

_mkrName+"EOS" setmarkeralpha 0;
_mkrName setmarkeralpha 0;

// Create Mission Task
[west,
["taskKillOfficer", "Encontre e elimine o traficante Naldinho Batore, chefe do trafico na favela do Galo Rouco. Naldinho Batore e sempre visto nas bocas de fumo da parte alta da favela.",
"Kill the Officer", ""]
] call FHQ_TT_addTasks;


	_triggerreact = createTrigger ["EmptyDetector",_newSpawnpos]; 
	_triggerreact setTriggerArea [20,20,0,true]; 
	_triggerreact setTriggerActivation ["WEST","PRESENT",false]; 
	_triggerreact setTriggerStatements ["this","Officer addMagazine ""16Rnd_9x21_Mag"";Officer addMagazine ""16Rnd_9x21_Mag"";Officer addWeapon ""hgun_Rook40_F"";Officer enableai ""MOVE""",""]; 
	_triggerreact setTriggerType "NONE"; 
	_triggerreact;
	sleep 1;
	
waituntil {!alive Officer};

hint "Mission Suceeded";
["taskKillOfficer","succeeded"] call FHQ_TT_setTaskState;

deletemarker _mkrname;
deleteVehicle _triggerreact;


