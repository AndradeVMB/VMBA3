_heli = _this select 0; 

_heli addAction ["<t color='#CFCFCF'>Open Doors</t>", "doors\Doors.sqf",1,6,false,true,"","(_target  

animationPhase 'Door_R' == 0) && (_target animationPhase 'Door_L' == 0)"];  

_heli addAction ["<t color='#CFCFCF'>Close Doors</t>", "doors\Doors.sqf",0,6,false,true,"","(_target  

animationPhase 'Door_R' == 1) && (_target animationPhase 'Door_L' == 1)"]; 

sleep 1;