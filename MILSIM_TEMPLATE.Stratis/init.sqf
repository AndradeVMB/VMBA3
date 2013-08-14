if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};



// Init Groo Framework Scripts
call compile preprocessFileLineNumbers "groo\groo_init.sqf";
[format["INFO: Starting %1 version %2 init Script",_missionName,_missionVersion],"green"] spawn groo_fnc_consoleMSG;


// Init MILSIM Template
0 = [] execVM "MILSIM\MILSIM_init.sqf";


//Finish world initialization before mission is launched. 
finishMissionInit;

["INFO: Mission Init Finished","green"] spawn groo_fnc_consoleMSG;