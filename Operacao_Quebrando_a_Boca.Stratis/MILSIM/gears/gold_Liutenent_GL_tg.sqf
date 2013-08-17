waitUntil {!isNull player};

_unit = _this select 1;

removeAllItems _unit;
removeVest _unit;
removeUniform _unit; 
removeAllWeapons _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeAllAssignedItems _unit;
removeallcontainers _unit;

_unit addUniform "MILSIM_BlackTGBDU";
_unit addvest "GOLDTEAM_BLACKVEST";
_unit addHeadgear "GoldTeam_BlackHelmet_LEADER"; 
_unit addbackpack "GoldTeam_BlackBP_Leader_Base";

_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "Titan_AT";
_unit addmagazine "16Rnd_9x21_Mag";

_unit addWeapon "FHQ_M4A1_M203_TAN";
_unit addWeapon "hgun_P07_F";
_unit addWeapon "launch_B_Titan_short_F";

_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "PEQ15_A3_Top";
_unit additem "FHQ_M4_muzzle_snds_556_tan";
_unit addItem "muzzle_snds_L";
_unit addItem "optic_MRCO";



_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "16Rnd_9x21_Mag";
_unit addmagazine "16Rnd_9x21_Mag";
_unit addmagazine "16Rnd_9x21_Mag";

_unit addWeapon "Binocular";

_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";

_unit addmagazine "SmokeShell";
_unit addmagazine "SmokeShell";
_unit addmagazine "SmokeShell";
_unit addmagazine "SmokeShellOrange";
_unit addmagazine "SmokeShellOrange";
_unit addmagazine "SmokeShellOrange";

_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "1Rnd_HE_Grenade_shell";

_unit additem "NVGoggles";
_unit assignItem "NVGoggles";
_unit additem "ItemMap";
_unit assignItem "ItemMap";
_unit additem "ItemGPS";
_unit assignItem "ItemGPS";
_unit additem "ItemCompass";
_unit assignItem "ItemCompass";
_unit additem "ItemWatch";
_unit assignItem "ItemWatch";

_unit addItem "ACRE_PRC343_ID_13";
_unit assignItem "ACRE_PRC343_ID_13";
_unit addItem "ACRE_PRC148_UHF_ID_11";


_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";

_unit addWeapon "rangefinder";
_unit addGoggles "G_Combat";
_unit addGoggles "G_Tactical_Clear";

if(true) exitWith{};