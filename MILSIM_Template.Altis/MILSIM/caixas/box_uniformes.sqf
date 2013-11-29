// _nul =[this] execVM "MILSIM\box_uniformes.sqf"; this addAction ["<t color='#FFFF00'>" + "Uniformes" + "</t>","",("Uniformes")]; this allowDamage false;

_crate = _this select 0;

while {alive _crate} do {
	clearMagazineCargo _crate;
	clearWeaponCargo _crate;
	clearItemCargoGlobal _crate;

	// Mochilas
	_crate addbackpackcargo ["B_AssaultPack_blk",50];
	_crate addbackpackcargo ["B_AssaultPack_rgr",50];
	
	// Capacetes
	_crate AddWeaponCargo ["H_HelmetB",50];
	_crate AddWeaponCargo ["H_HelmetB_plain_blk",50];
	_crate AddWeaponCargo ["H_HelmetCrew_B",50];
	_crate AddWeaponCargo ["H_HelmetSpecB",50];
	_crate AddWeaponCargo ["H_HelmetSpecB_blk",50];
	
	// Uniformes
	_crate AddWeaponCargo ["U_B_CombatUniform_mcam",50];
	_crate AddWeaponCargo ["U_B_CombatUniform_mcam_tshirt",50];
	_crate AddWeaponCargo ["U_B_CombatUniform_mcam_vest",50];
	_crate AddWeaponCargo ["U_B_CombatUniform_mcam_worn",50];
	_crate AddWeaponCargo ["U_B_Wetsuit",50];
	
	// Coletes Equipe Gold
	_crate AddWeaponCargo ["V_RebreatherIR",50];
	_crate AddWeaponCargo ["V_PlateCarrierGL_rgr",50];

	_crate addGoggles ["G_Diving",50];
	
	sleep 1800;
};