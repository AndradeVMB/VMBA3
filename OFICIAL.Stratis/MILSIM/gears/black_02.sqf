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
_unit addHeadgear "BlackTeam_Helmet_A02"; 
_unit addbackpack "BlackTeam_BP_base";
_unit addGoggles "G_Tactical_Black";

_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "9Rnd_45ACP_Mag";

_unit addWeapon "srifle_EBR_F";
_unit addPrimaryWeaponItem "optic_SOS";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "muzzle_snds_B";
_unit additem "optic_MRCO";
_unit additem "acc_flashlight";

_unit addWeapon "hgun_ACPC2_F";
_unit addHandgunItem "muzzle_snds_L";

_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";
_unit addmagazine "HandGrenade";

_unit addmagazine "SmokeShell";
_unit addmagazine "SmokeShellOrange";

_unit addmagazine "REV1_flash";
_unit addmagazine "REV1_flash";

_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";
_unit addmagazine "20Rnd_762x51_Mag";

_unit addmagazine "9Rnd_45ACP_Mag";

 _unit addmagazine "DemoCharge_Remote_Mag";

_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";

_unit addWeapon "rangefinder";
_unit addWeapon "LaserDesignator";
_unit addmagazine "Laserbatteries";

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

if(true) exitWith{};