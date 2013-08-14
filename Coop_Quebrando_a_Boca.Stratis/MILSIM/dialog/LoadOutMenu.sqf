MILSIM_fnc_LoadOutMenu_Load = {

	private ["_indexTeam","_indexClass","_Player","_handle"];

	_player = Player;
	_script = "";
	
	_indexTeam	= lbcursel 2100;
	_indexClass = lbcursel 1500;
	
	if !(_indexClass < 0) then {
	
		if (_indexTeam == 0) then {_handle = MILSIM_var_LoadOutMenu_GOLD_Classes select _indexClass;_script = _handle select 1;[0,_player] execVM _script;};
		if (_indexTeam == 1) then {_handle = MILSIM_var_LoadOutMenu_BLACK_Classes select _indexClass;_script = _handle select 1;[0,_player] execVM _script;};
		if (_indexTeam == 2) then {_handle = MILSIM_var_LoadOutMenu_RED_Classes select _indexClass;_script = _handle select 1;[0,_player] execVM _script;};
		if (_indexTeam == 3) then {_handle = MILSIM_var_LoadOutMenu_BLUE_Classes select _indexClass;_script = _handle select 1;[0,_player] execVM _script;};
	};

};

MILSIM_fnc_LoadOutMenu_FillClasses = {

	private ["_index"];

	_index = lbCurSel 2100;
	ctrlEnable [1600,false];
	
	if !(_index < 0) then {
		
		lbClear 1500;
	
		if (_index == 0) then {{_class = _x select 0;_lbindex = lbadd [1500,_class];ctrlSetText [1002,"Team GOLD"];} foreach MILSIM_var_LoadOutMenu_GOLD_Classes;};
		if (_index == 1) then {{_class = _x select 0;_lbindex = lbadd [1500,_class];ctrlSetText [1002,"Team BLACK"];} foreach MILSIM_var_LoadOutMenu_BLACK_Classes;};
		if (_index == 2) then {{_class = _x select 0;_lbindex = lbadd [1500,_class];ctrlSetText [1002,"Team RED"];} foreach MILSIM_var_LoadOutMenu_RED_Classes;};
		if (_index == 3) then {{_class = _x select 0;_lbindex = lbadd [1500,_class];ctrlSetText [1002,"Team BLUE"];} foreach MILSIM_var_LoadOutMenu_BLUE_Classes;};
	
	};
			
	[] call MILSIM_fnc_LoadOutMenu_fillTeams;
	ctrlEnable[1601,true];
};

MILSIM_fnc_LoadOutMenu_FillTeams = {

	private ["_index"];

	lbclear 2100;
	
	ctrlEnable [1600,false]; // Wait Combo box fill before Button Activation
	
	_index = lbAdd [2100, "GOLD"];
	lbSetColor [2100, _index, [0, 0.5, 0.5, 1]];
	
	_index = lbAdd [2100, "BLACK"];
	lbSetColor [2100, _index, [0, 0, 0, 1]];
	
	_index = lbAdd [2100, "RED"];
	lbSetColor [2100, _index, [1, 0, 0, 1]];
	
	_index = lbAdd [2100, "BLUE"];
	lbSetColor [2100, _index, [0, 0, 1, 1]];
	
	ctrlEnable [1600,true]; // Wait Combo box fill before Button Activation

};

MILSIM_fnc_LoadOutMenu = {

	private ["_player","_handle"];

	_player = Player;

	[format["INFO:%1 Started MILSIM LoadOutMenu",str(_player)],"blue"] spawn groo_fnc_ConsoleMSG;
	_handle = createDialog "MILSIM_LoadOutMenu";
	
	// disables button LOAD by default
	ctrlEnable[1601,false];
	
	[] call MILSIM_fnc_LoadOutMenu_fillTeams;

	waitUntil { !dialog }; // hit ESC to close it
	
	[format["INFO:%1 Closed MILSIM LoadOutMenu",str(_player)],"blue"] spawn groo_fnc_ConsoleMSG;
	
};

MILSIM_var_LoadOutMenu_GOLD_Classes = [

										["Team Gold Captain Medic","MILSIM\gears\gold_CPT_Medic_tg.sqf"],

										["Team Gold Lieutenant GL","MILSIM\gears\gold_Liutenent_GL_tg.sqf"],
										["Team Gold Lieutenant Medic","MILSIM\gears\gold_Liutenent_medic_tg.sqf"],										
										
										["Team Gold Sargent Assault","MILSIM\gears\gold_SGT_Assault_tg.sqf"],
										["Team Gold Sargent Marksman","MILSIM\gears\gold_SGT_Marksman.sqf"],
										
										["Team Gold Operator Assault","MILSIM\gears\gold_CPL_Assault.sqf"],
										["Team Gold Operator Medic","MILSIM\gears\gold_CPL_medic.sqf"],
										["Team Gold Operator Support","MILSIM\gears\gold_CPL_support.sqf"],
										["Team Gold Operator Marksman","MILSIM\gears\gold_CPL_marksman.sqf"],
										["Team Gold Operator Engineer","MILSIM\gears\gold_CPL_Engineer.sqf"],
										["Team Gold Recruit","MILSIM\gears\gold_REC_Recruit.sqf"]
										];

MILSIM_var_LoadOutMenu_BLUE_Classes = [
										["BLUE Team Pilot","MILSIM\gears\blue_pilot.sqf"]
										];


MILSIM_var_LoadOutMenu_RED_Classes = [
										["Team RED Crewman","MILSIM\gears\red_crewman.sqf"]
										];
										
MILSIM_var_LoadOutMenu_BLACK_Classes = [
										["Team Black 01","MILSIM\gears\black_01.sqf"],
										["Team Black 02","MILSIM\gears\black_02.sqf"],
										["Team Black 03","MILSIM\gears\black_03.sqf"],
										["Team Black 04","MILSIM\gears\black_04.sqf"],
										["Team Black 05","MILSIM\gears\black_05.sqf"],
										["Team Black 06","MILSIM\gears\black_06.sqf"],
										["Team Black 07","MILSIM\gears\black_07.sqf"]
										];

										
										
										
[] spawn MILSIM_fnc_LoadOutMenu;