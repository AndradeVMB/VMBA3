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

_unit addUniform "U_B_HeliPilotCoveralls";
_unit addvest "V_PlateCarrierGL_rgr";
_unit addHeadgear "H_HelmetCrew_B";

_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "9Rnd_45ACP_Mag";

_unit addWeapon "FHQ_M4A1_BLK";
_unit addWeapon "hgun_ACPC2_F";

_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "FHQ_30Rnd_556x45_Stanag_Tracer_Yellow";
_unit addmagazine "9Rnd_45ACP_Mag";
_unit addmagazine "9Rnd_45ACP_Mag";


_unit addmagazine "SmokeShellBlue";
_unit addmagazine "SmokeShellRed";

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
_unit addItem "FirstAidKit";

_unit addGoggles "G_Combat";

if(true) exitWith{};