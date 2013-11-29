// _nul =[this] execVM "MILSIM\box_explosivos.sqf"; this addAction ["<t color='#FFFF00'>" + "Explosivos" + "</t>","",("Explosivos")]; this allowDamage false;

_crate = _this select 0;

while {alive _crate} do {
	clearMagazineCargo _crate;
	clearWeaponCargo _crate;
	clearItemCargoGlobal _crate;

	// Lançadores de Míssel
	_crate addweaponcargo ["launch_B_Titan_F",50];
	_crate addweaponcargo ["launch_B_Titan_short_F",50];
	_crate addweaponcargo ["launch_I_Titan_F",50];
	_crate addweaponcargo ["launch_I_Titan_short_F",50];
	_crate addweaponcargo ["launch_O_Titan_F",50];
	_crate addweaponcargo ["launch_O_Titan_short_F",50];
	_crate addweaponcargo ["launch_Titan_F",50];
	_crate addweaponcargo ["launch_Titan_short_F",50];
	_crate addweaponcargo ["launch_NLAW_F",50];
	_crate addweaponcargo ["launch_RPG32_F",50];
	_crate addMagazinecargo ["Titan_AA",50];
	_crate addMagazinecargo ["Titan_AP",50];
	_crate addMagazinecargo ["Titan_AT",50];
	_crate addMagazinecargo ["NLAW_F",50];	
	//_crate addMagazinecargo ["RPG32_AA_F",50];
	_crate addMagazinecargo ["RPG32_F",50];
	
	// Granadas de Mão
	_crate addMagazinecargo ["REV1_flash",100]; // Flashbang
	_crate addMagazinecargo ["HandGrenade",100];
	_crate addMagazinecargo ["HandGrenade_Stone",100];
	_crate addMagazinecargo ["MiniGrenade",100];
	_crate addMagazinecargo ["SmokeShell",100];
	_crate addMagazinecargo ["SmokeShellYellow",100];
	_crate addMagazinecargo ["SmokeShellGreen",100];
	_crate addMagazinecargo ["SmokeShellRed",100];
	_crate addMagazinecargo ["SmokeShellPurple",100];
	_crate addMagazinecargo ["SmokeShellOrange",100];
	_crate addMagazinecargo ["SmokeShellBlue",100];
	
	// Bastões Luminosos
	_crate addMagazinecargo ["Chemlight_green",100];
	_crate addMagazinecargo ["Chemlight_red",100];
	_crate addMagazinecargo ["Chemlight_yellow",100];
	_crate addMagazinecargo ["Chemlight_blue",100];
	
	// Granadas para M203
	_crate addMagazinecargo ["1Rnd_HE_Grenade_shell",100];
	_crate addMagazinecargo ["1Rnd_Smoke_Grenade_shell",100];
	_crate addMagazinecargo ["1Rnd_SmokeBlue_Grenade_shell",100];
	_crate addMagazinecargo ["1Rnd_SmokeGreen_Grenade_shell",100];
	_crate addMagazinecargo ["1Rnd_SmokeOrange_Grenade_shell",100];
	_crate addMagazinecargo ["1Rnd_SmokePurple_Grenade_shell",100];
	_crate addMagazinecargo ["1Rnd_SmokeRed_Grenade_shell",100];
	_crate addMagazinecargo ["1Rnd_SmokeYellow_Grenade_shell",100];
	_crate addMagazinecargo ["UGL_FlareCIR_F",100];
	_crate addMagazinecargo ["UGL_FlareGreen_F",100];
	_crate addMagazinecargo ["UGL_FlareRed_F",100];
	_crate addMagazinecargo ["UGL_FlareWhite_F",100];
	_crate addMagazinecargo ["UGL_FlareYellow_F",100];
	
	// Explosivos
	_crate addMagazinecargo ["DemoCharge_Remote_Mag",100];
	_crate addMagazinecargo ["SatchelCharge_Remote_Mag",100];
	_crate addMagazinecargo ["ATMine_Range_Mag",100];
	_crate addMagazinecargo ["ClaymoreDirectionalMine_Remote_Mag",100];
	_crate addMagazinecargo ["APERSMine_Range_Mag",100];
	_crate addMagazinecargo ["APERSBoundingMine_Range_Mag",100];
	_crate addMagazinecargo ["SLAMDirectionalMine_Wire_Mag",100];
	_crate addMagazinecargo ["APERSTripMine_Wire_Mag",100];

	sleep 1800;
};