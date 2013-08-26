titlecut [" ","BLACK IN",1];
_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];

playmusic "NOVATRILHA";
titletext ["A Mission By\n The VMB S3 Team\nCpl.OfKings - Mission Editing\nSub.Andrade - Scripting Sorcery","PLAIN"];
titletext ["FEATURING:\nMILSIM Units by Maj.BlackHawk\nLoadOut Scripts by Col.Viper","PLAIN"];
titletext ["CONSPIRACY - Episodio 1 - Operação Pasha","PLAIN"];
titletext ["Special Thanks:\nLt.Godspeed\nCdt.Nascimento\nFor support testing the mission.","PLAIN"];
titletext ["**MILSIM & A3CN**","PLAIN"];
titletext ["A MELHOR ARMA DO MUNDO É UM SOLDADO BEM TREINADO. FERRO E AÇO NÃO É NADA COMPARADO A CORAGEM E HONRA!","PLAIN"];
_camera cameraeffect ["terminate","back"];
camdestroy _camera;

[str ("OP.PASHA") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Koplic")] spawn BIS_fnc_infoText;

exit;