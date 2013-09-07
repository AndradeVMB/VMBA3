enableSaving[false,false];

// Init Groo Framework Scripts
call compile preprocessFileLineNumbers "groo\groo_init.sqf";

// Nitro Script
cli_nitroLock = true;

//Finish world initialization before mission is launched.
finishMissionInit;

