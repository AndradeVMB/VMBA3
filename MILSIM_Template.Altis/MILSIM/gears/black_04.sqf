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
_unit addvest "BLACKTEAM_VEST";
_unit addHeadgear "BlackTeam_Helmet_A04";
_unit addbackpack "BlackTeam_BP_EOD";

_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "9Rnd_45ACP_Mag";

_unit addWeapon "AR_BlackTeam_SOPMOD_GL";
_unit addWeapon "hgun_ACPC2_F";
_unit addHandgunItem "muzzle_snds_acp";

_unit addWeapon "rangefinder";

_unit addmagazine "SatchelCharge_Remote_Mag";
_unit addmagazine "DemoCharge_Remote_Mag";
_unit addmagazine "DemoCharge_Remote_Mag";
_unit addmagazine "DemoCharge_Remote_Mag";
_unit addmagazine "DemoCharge_Remote_Mag";

_unit addmagazine "APERSMine_Range_Mag";
_unit addmagazine "APERSMine_Range_Mag";
_unit addmagazine "APERSMine_Range_Mag";
_unit addmagazine "APERSMine_Range_Mag";

_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";

_unit addmagazine "SmokeShell";
_unit addmagazine "SmokeShell";

_unit addmagazine "SmokeShellOrange";

_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";

_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";
_unit addmagazine "30Rnd_65x39_caseless_mag";

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

_unit addmagazine "9Rnd_45ACP_Mag";
_unit addmagazine "9Rnd_45ACP_Mag";
_unit addmagazine "9Rnd_45ACP_Mag";

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

_unit addItem "MineDetector";
_unit addItem "ToolKit";

_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";

_unit additem "acc_flashlight";
_unit addGoggles "G_Tactical_Black";

if(true) exitWith{};