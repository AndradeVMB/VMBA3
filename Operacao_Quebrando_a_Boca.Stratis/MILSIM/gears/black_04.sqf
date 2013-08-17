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
_unit addvest "BLACKTEAM_BLACKVEST";
_unit addHeadgear "BlackTeam_BlackHelmet_A04"; 
_unit addbackpack "BlackTeam_BlackBP_EOD_base";

_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "1Rnd_HE_Grenade_shell";
_unit addmagazine "16Rnd_9x21_Mag";

_unit addWeapon "FHQ_M4A1_M203_BLK";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "PEQ15_A3_Top";
_unit addPrimaryWeaponItem "FHQ_M4_muzzle_snds_556_tan";
_unit addWeapon "hgun_P07_F";
_unit addItem "optic_MRCO";
_unit addHandgunItem "muzzle_snds_L";

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

_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";
_unit addmagazine "30rnd_556x45_Stanag";

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

_unit addmagazine "16Rnd_9x21_Mag";
_unit addmagazine "16Rnd_9x21_Mag";
_unit addmagazine "16Rnd_9x21_Mag";

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