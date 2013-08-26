titlecut [" ","BLACK IN",1];
_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];

playmusic "NOVATRILHA";

titletext ["GROO FRAMEWORK\nFeatures:\nMonsada's UPSMON\nBangabob's EOS\nFHQ Task Tracker\n=BTC= Logistics\n=BTC= Revive\nZuff Group Management\nJamac Vehicle Service","PLAIN"];

;comment "22:18:49";
_camera camPrepareTarget [-57832.38,85954.12,4.76];
_camera camPreparePos [4133.93,7374.43,1.97];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "22:21:30";
_camera camPrepareTarget [-57832.38,85954.12,4.76];
_camera camPreparePos [4185.18,7413.61,2.00];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["A Mission By\n The VMB S3 Team\nCpl.OfKings - Mission Editing\nSub.Andrade - Scripting Sorcery","PLAIN"];

;comment "22:22:59";
_camera camPrepareTarget [-9437.94,88443.06,-56939.36];
_camera camPreparePos [4160.38,7436.52,54.67];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "22:24:44";
_camera camPrepareTarget [-9437.94,88443.06,-56939.36];
_camera camPreparePos [3888.35,7398.97,54.67];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["FEATURING:\nMILSIM Units by Maj.BlackHawk\nLoadOut Scripts by Col.Viper","PLAIN"];

;comment "22:31:52";
_camera camPrepareTarget [60702.46,-76366.11,-12487.39];
_camera camPreparePos [6116.97,6468.93,1.63];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "22:32:46";
_camera camPrepareTarget [60702.46,-76366.11,-12487.39];
_camera camPreparePos [6116.97,6468.93,82.75];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["CONSPIRACY: Episodio 1 - Operação Pasha","PLAIN"];

;comment "22:36:49";
_camera camPrepareTarget [60702.46,-76366.11,-12487.39];
_camera camPreparePos [6335.22,6125.64,82.33];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;

;comment "22:39:35";
_camera camPrepareTarget [60702.46,-76366.11,-12487.39];
_camera camPreparePos [6335.22,6125.64,3.13];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["Special Thanks:\nMaj.BlackHawk\nSub.Andrade\nLt.Godspeed\nCdt.Nascimento\nFor support testing the mission.","PLAIN"];

;comment "22:49:52";
_camera camPrepareTarget [29652.56,-91249.86,-3836.21];
_camera camPreparePos [6487.48,5889.93,3.65];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera;};

;comment "22:51:01";
_camera camPrepareTarget [29652.56,-91249.86,-3836.21];
_camera camPreparePos [6513.94,5896.06,3.65];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;

;comment "22:52:02";
_camera camPrepareTarget [29652.56,-91249.86,-3836.21];
_camera camPreparePos [6537.84,5806.60,3.65];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil {camCommitted _camera;};

;comment "22:59:44";
_camera camPrepareTarget [-63534.81,-64980.83,15511.77];
_camera camPreparePos [7147.26,4037.53,0.25];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera;};

titletext ["*** MILSIM & A3CN ***\nTASK FORCE TALON","PLAIN"];

sleep 10;

titletext ["Não há grandeza quando não há simplicidade..!","PLAIN"];



;comment "23:13:44";
_camera camPrepareTarget [-13762.93,-87797.16,-33593.67];
_camera camPreparePos [7145.38,4040.92,3.18];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

sleep 5;

;comment "23:14:28";
_camera camPrepareTarget [-73339.68,52945.41,-33590.35];
_camera camPreparePos [7150.57,4030.97,3.24];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;
waitUntil {camCommitted _camera;};

;comment "23:16:16";
_camera camPrepareTarget [-88476.20,-24629.31,-6770.50];
_camera camPreparePos [7058.53,3999.64,22.82];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "23:16:56";
_camera camPrepareTarget [-88476.20,-24629.31,-6770.50];
_camera camPreparePos [7058.53,3999.64,51.78];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;
waitUntil {camCommitted _camera;};

_camera cameraeffect ["terminate","back"];
camdestroy _camera;

[str ("Op.Conspiracy") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Koplic")] spawn BIS_fnc_infoText;

exit;