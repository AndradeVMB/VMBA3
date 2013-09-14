// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

// Wait until player is initialized
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

// Wait until BIS Functions Initialized
waitUntil{!isNil "BIS_fnc_init"};

// Init MILSIM Template
0 = [] execVM "MILSIM\MILSIM_init.sqf";

//groo_INIT
#include "groo\groo_init.sqf"

//Finish world initialization before mission is launched.
finishMissionInit;








