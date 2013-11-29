// _nul =[this] execVM "MILSIM\box_equips.sqf"; this addAction ["<t color='#FFFF00'>" + "Equipamentos" + "</t>","",("Equipamentos")]; this allowDamage false;

_crate = _this select 0;

while {alive _crate} do {
	clearMagazineCargo _crate;
	clearWeaponCargo _crate;
	clearItemCargoGlobal _crate;
	
	// Equipamentos
	_crate additemcargo ["Medikit",50];
	_crate additemcargo ["FirstAidKit",300];
	_crate additemcargo ["NVGoggles",50];
	_crate additemcargo ["ACRE_PRC343_ID_13",50];
	_crate additemcargo ["ACRE_PRC148_UHF_ID_11",50];
	_crate addweaponcargo ["Binocular",50];
	_crate addweaponcargo ["Rangefinder",50];
	_crate addweaponcargo ["MineDetector",50];
	_crate addweaponcargo ["Toolkit",50];
	_crate addweaponcargo ["ItemCompass",50];
	_crate addweaponcargo ["ItemGPS",50];
	_crate addweaponcargo ["ItemMap",50];
	_crate addweaponcargo ["ItemRadio",50];
	_crate addweaponcargo ["ItemWatch",50];
	_crate addweaponcargo ["Laserdesignator",50];
	_crate addMagazinecargo ["Laserbatteries",50];
	
	sleep 1800;
};