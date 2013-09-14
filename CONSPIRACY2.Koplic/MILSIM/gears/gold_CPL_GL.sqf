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

_unit addUniform "MILSIM_BDU";
_unit addvest "GOLDTEAM_VEST";
_unit addHeadgear "GoldTeam_Helmet";
_unit addbackpack "GoldTeam_BP_base";

_unit addmagazine "30Rnd_65x39_caseless_mag";;
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "Titan_AT";
_unit addmagazine "9Rnd_45ACP_Mag";

_unit addWeapon "arifle_MX_GL_F";
_unit addWeapon "hgun_ACPC2_F";

_unit addWeapon "launch_B_Titan_short_F";

_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit additem "muzzle_snds_H";
_unit addItem "muzzle_snds_acp";
_unit addItem "optic_Aco";

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
_unit addmagazine "9Rnd_45ACP_Mag";

_unit addmagazine "Titan_AT";

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

_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";

_unit addWeapon "rangefinder";
_unit addGoggles "G_Tactical_Clear";

if(true) exitWith{};
