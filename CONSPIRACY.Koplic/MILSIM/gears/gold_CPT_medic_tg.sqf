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
_unit addbackpack "GoldTeam_BlackBP_Medic_base";

_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "9Rnd_45ACP_Mag";

_unit addWeapon "AR_GoldTeam";
_unit addWeapon "hgun_ACPC2_F";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addItem "muzzle_snds_H";
_unit addHandgunItem "muzzle_snds_acp";
_unit addItem "optic_MRCO";

_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "9Rnd_45ACP_Mag";
_unit addmagazine "9Rnd_45ACP_Mag";

_unit addWeapon "Binocular";

_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
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

_unit addItem "MediKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";

_unit addWeapon "rangefinder";
_unit addGoggles "G_Combat";
_unit addGoggles "G_Tactical_Clear";

if(true) exitWith{};