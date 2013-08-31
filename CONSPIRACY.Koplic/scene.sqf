titlecut [" ","BLACK IN",1];
_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];

playmusic "menu4";

titletext ["GROO FRAMEWORK\nFeatures:\nMonsada's UPSMON\nBangabob's EOS\nFHQ Task Tracker\n=BTC= Logistics\n=BTC= Revive\nZuff Group Management\nJamac Vehicle Service","PLAIN"];

;comment "4:31:21";
_camera camPrepareTarget [97818.73,-25333.70,0.57];
_camera camPreparePos [1897.74,2189.88,0.28];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "4:32:43";
_camera camPrepareTarget [97818.73,-25333.70,0.57];
_camera camPreparePos [1897.74,2189.88,79.56];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["A Mission By\n The VMB S3 Team\nCpl.OfKings - Mission Editing\nLt.Andrade - Scripting Sorcery","PLAIN"];

;comment "4:34:41";
_camera camPrepareTarget [96015.15,-25294.38,-18709.15];
_camera camPreparePos [1727.71,2245.43,76.08];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "4:35:40";
_camera camPrepareTarget [96015.15,-25294.38,-18709.15];
_camera camPreparePos [2627.45,1960.70,75.63];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["FEATURING:\nMILSIM Units by Maj.BlackHawk\nLoadOut Scripts by Col.Viper","PLAIN"];

;comment "4:38:06";
_camera camPrepareTarget [-6346.93,-89800.72,-24606.35];
_camera camPreparePos [6521.37,6044.39,5.45];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "4:38:54";
_camera camPrepareTarget [-6346.93,-89800.72,-24606.35];
_camera camPreparePos [6521.37,6044.38,83.45];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["CONSPIRACY - Ep.1 - Op.Pasha","PLAIN"];

;comment "4:40:17";
_camera camPrepareTarget [-6346.93,-89800.72,-24606.35];
_camera camPreparePos [6208.04,6025.35,25.53];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "4:40:59";
_camera camPrepareTarget [-6346.93,-89800.72,-24606.35];
_camera camPreparePos [6616.28,5970.05,28.06];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["Special Thanks:\nFor All FRIENDS\nFor support us in this mission.","PLAIN"];

;comment "4:44:43";
_camera camPrepareTarget [-92758.10,-290.84,5.70];
_camera camPreparePos [7148.31,4034.76,0.44];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera;};

;comment "4:46:41";
_camera camPrepareTarget [96946.76,-27331.44,30834.20];
_camera camPreparePos [7139.66,4035.20,0.20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "4:51:20";
_camera camPrepareTarget [-886.19,-90751.00,30835.16];
_camera camPreparePos [7142.72,4036.66,0.24];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

;comment "4:52:59";
_camera camPrepareTarget [-70714.70,-58000.23,-9043.49];
_camera camPreparePos [7170.24,4053.18,0.20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera;};


titletext ["A MELHOR ARMA DO MUNDO É UM SOLDADO BEM TREINADO, FERRO E AÇO NÃO É NADA COMPARADO A CORAGEM E HONRA","PLAIN"];



;comment "4:53:42";
_camera camPrepareTarget [-70714.70,-58000.23,-9043.49];
_camera camPreparePos [7170.24,4053.18,76.26];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 15;

sleep 5;

;comment "4:54:37";
_camera camPrepareTarget [-70714.70,-58000.23,-9043.49];
_camera camPreparePos [6780.62,3740.53,75.49];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 4;
waitUntil {camCommitted _camera;};



_camera cameraeffect ["terminate","back"];
camdestroy _camera;

[str ("Operation Pasha") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Koplic")] spawn BIS_fnc_infoText;