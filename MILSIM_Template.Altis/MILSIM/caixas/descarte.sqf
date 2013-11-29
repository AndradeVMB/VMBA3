// _nul =[this] execVM "MILSIM\descarte.sqf"; this addAction ["<t color='#FFFF00'>" + "Descarte" + "</t>","",("Descarte")]; this allowDamage false;

_crate = _this select 0;

while {alive _crate} do {
	clearMagazineCargo _crate;
	clearWeaponCargo _crate;
	clearItemCargoGlobal _crate;

	sleep 3600;
};