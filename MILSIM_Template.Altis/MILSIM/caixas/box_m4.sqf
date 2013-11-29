// _nul =[this] execVM "MILSIM\box_m4.sqf"; this addAction ["<t color='#FFFF00'>" + "M4 MK18 PDW" + "</t>","",("M4 MK18 PDW")]; this allowDamage false;

_crate = _this select 0;

while {alive _crate} do {
	clearMagazineCargo _crate;
	clearWeaponCargo _crate;
	clearItemCargoGlobal _crate;
	
	// Rifles de Assalto Pacote M4 (Black e Gold)
	_crate addweaponcargo ["FHQ_M4A1_TAN",50];
	_crate addweaponcargo ["FHQ_M4A1_BLK",50];
	_crate addweaponcargo ["FHQ_M4A1_WDL",50];
	_crate addweaponcargo ["FHQ_M4A1_M203_TAN",50];
	_crate addweaponcargo ["FHQ_M4A1_M203_BLK",50];
	_crate addweaponcargo ["FHQ_M4A1_M203_WDL",50];
	_crate additemcargo ["FHQ_optic_ACOG",50];
	_crate additemcargo ["FHQ_optic_ACOG_tan",50];
	_crate additemcargo ["FHQ_optic_AIM",50];
	_crate additemcargo ["FHQ_optic_AIM_tan",50];
	_crate additemcargo ["FHQ_optic_TWS3050",50];
	_crate additemcargo ["FHQ_acc_ANPEQ15",50];
	_crate additemcargo ["FHQ_acc_LLM01L",50];
	_crate additemcargo ["FHQ_acc_LLM01F",50];
	_crate additemcargo ["FHQ_optic_HWS_G33",50];
	_crate additemcargo ["FHQ_optic_HWS_G33_tan",50];
	_crate additemcargo ["FHQ_optic_MicroCCO",50];
	_crate additemcargo ["FHQ_optic_MicroCCO_tan",50];
	_crate additemcargo ["FHQ_optic_MicroCCO_low",50];
	_crate additemcargo ["FHQ_optic_MicroCCO_low_tan",50];
	_crate additemcargo ["FHQ_optic_LeupoldERT",50];
	_crate additemcargo ["FHQ_optic_LeupoldERT_tan",50];
	_crate additemcargo ["FHQ_M4_muzzle_snds_556_tan",50];
	_crate additemcargo ["FHQ_M4_muzzle_snds_556_blk",50];
	_crate additemcargo ["FHQ_M4_muzzle_snds_556_wdl",50];
	_crate addMagazinecargo ["FHQ_30Rnd_556x45_Stanag_Tracer_Green",300];
	_crate addMagazinecargo ["FHQ_30Rnd_556x45_Stanag_Tracer_Red",300];
	_crate addMagazinecargo ["FHQ_30Rnd_556x45_Stanag_Tracer_Yellow",300];
	_crate addMagazinecargo ["FHQ_30Rnd_556x45_Stanag_Tracer_IR",300];

	// Rifles de Assalto Pacote RHARD_MK18 (Black e Gold)
	_crate addweaponcargo ["RHARD_MK18_F",50];
	_crate addweaponcargo ["RHARD_MK18D_F",50];
	_crate addweaponcargo ["RHARD_MK18P_F",50];
	_crate addweaponcargo ["RHARD_MK18PD_F",50];
	_crate addweaponcargo ["RHARD_MK18AFG_F",50];
	_crate addweaponcargo ["RHARD_MK18AFGD_F",50];
	_crate additemcargo ["PEQ15_A3_Top",50];
	_crate additemcargo ["Muzzle_MK18D_L",50];
	_crate additemcargo ["Muzzle_MK18_L",50];
	_crate addMagazinecargo ["30Rnd_556x45_mag_Tracer",300];
	_crate addMagazinecargo ["30Rnd_556x45_green_mag_Tracer",300];
	_crate addMagazinecargo ["30Rnd_556x45_red_mag_Tracer",300];

	// Rifles de Assalto Pacote RH_PDW (Red e Blue)
	_crate addweaponcargo ["RH_pdw",50];
	_crate additemcargo ["muzzle_snds_H",50];
	_crate addMagazinecargo ["30Rnd_65x39_caseless_mag",300];
	_crate addMagazinecargo ["30Rnd_65x39_caseless_mag_Tracer",300];
	
	sleep 1800;
};