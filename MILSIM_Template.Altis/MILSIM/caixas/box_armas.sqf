// _nul =[this] execVM "MILSIM\box_armas.sqf"; this addAction ["<t color='#FFFF00'>" + "Armamentos Padroes" + "</t>","",("Armamentos Padroes")]; this allowDamage false;

_crate = _this select 0;

while {alive _crate} do {
	clearMagazineCargo _crate;
	clearWeaponCargo _crate;
	clearItemCargoGlobal _crate;

// Rifles
	_crate addweaponcargo ["arifle_MX_F",50];
	_crate addweaponcargo ["arifle_MX_GL_F",50];
	_crate addweaponcargo ["arifle_MXC_F",50];
	_crate addweaponcargo ["arifle_MXM_F",50];
	_crate addweaponcargo ["arifle_SDAR_F",50];
	_crate addweaponcargo ["LMG_Mk200_F",50];
	_crate addweaponcargo ["LMG_Zafir_F",50];
	_crate addweaponcargo ["SMG_01_F",50];
	_crate addweaponcargo ["SMG_02_F",50];
	_crate addweaponcargo ["srifle_EBR_F",50];
	_crate addweaponcargo ["srifle_GM6_F",50];
	_crate addweaponcargo ["srifle_LRR_F",50];
	_crate addMagazinecargo ["30Rnd_65x39_caseless_mag",300];
	_crate addMagazinecargo ["30Rnd_65x39_caseless_mag_Tracer",300];
	_crate addMagazinecargo ["20Rnd_556x45_UW_mag",300];
	_crate addMagazinecargo ["30Rnd_556x45_Stanag",300];
	_crate addMagazinecargo ["30Rnd_556x45_Stanag_Tracer_Green",300];
	_crate addMagazinecargo ["30Rnd_556x45_Stanag_Tracer_Red",300];
	_crate addMagazinecargo ["30Rnd_556x45_Stanag_Tracer_Yellow",300];
	_crate addMagazinecargo ["200Rnd_65x39_cased_Box",300];
	_crate addMagazinecargo ["200Rnd_65x39_cased_Box_Tracer",300];
	_crate addMagazinecargo ["150Rnd_762x51_Box",300];
	_crate addMagazinecargo ["150Rnd_762x51_Box_Tracer",300];
	_crate addMagazinecargo ["30Rnd_45ACP_Mag_SMG_01",300];
	_crate addMagazinecargo ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",300];
	_crate addMagazinecargo ["20Rnd_762x51_Mag",300];
	_crate addMagazinecargo ["5Rnd_127x108_Mag",300];
	_crate addMagazinecargo ["7Rnd_408_Mag",300];

	// Pistolas (Black, Gold, Red e Blue)
	_crate addweaponcargo ["hgun_P07_F",50];
	_crate addweaponcargo ["hgun_ACPC2_F",50];
	_crate addweaponcargo ["hgun_Rook40_F",50];
	_crate additemcargo ["muzzle_snds_L",50];
	_crate addMagazinecargo ["16Rnd_9x21_Mag",100];
	_crate addMagazinecargo ["30Rnd_9x21_Mag",300];
	
	// Acessório para Armas
	_crate additemcargo ["optic_Arco",50];
	_crate additemcargo ["optic_SOS",50];
	_crate additemcargo ["optic_Hamr",50];
	_crate additemcargo ["optic_Aco",50];
	_crate additemcargo ["optic_ACO_grn",50];
	_crate additemcargo ["optic_Holosight",50];
	_crate additemcargo ["optic_MRCO",50];
	_crate additemcargo ["muzzle_snds_B",50];
	_crate additemcargo ["muzzle_snds_H",50];
	_crate additemcargo ["muzzle_snds_H_MG",50];
	_crate additemcargo ["muzzle_snds_L",50];
	_crate additemcargo ["muzzle_snds_M",50];
	_crate additemcargo ["acc_flashlight",50];
	_crate additemcargo ["acc_pointer_IR",50];

	sleep 1800;
};