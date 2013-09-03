titlecut [" ","BLACK IN",1];
_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];

playmusic "menu3";

titletext ["GROO FRAMEWORK\nFeatures:\nMonsada's UPSMON\nBangabob's EOS\nFHQ Task Tracker\n=BTC= Logistics\n=BTC= Revive\nZuff Group Management\nJamac Vehicle Service","PLAIN"];

;comment "20:10:18";
_camera camPrepareTarget [103642.02,22291.55,4.48];
_camera camPreparePos [4816.00,6953.62,0.59];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "20:11:42";
_camera camPrepareTarget [103642.02,22291.55,4.48];
_camera camPreparePos [5092.53,6987.63,0.57];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["A Mission By\n The VMB S3 Team\nCpl.OfKings - Mission Editing\nLt.Andrade - Scripting Sorcery","PLAIN"];

;comment "20:13:26";
_camera camPrepareTarget [97095.03,-24650.28,-22008.62];
_camera camPreparePos [4803.28,6934.08,1.12];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "20:14:07";
_camera camPrepareTarget [97095.03,-24650.28,-22008.62];
_camera camPreparePos [4722.76,6958.85,48.84];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["FEATURING:\nMILSIM Units by Maj.BlackHawk\nLoadOut Scripts by Col.Viper","PLAIN"];

;comment "0:41:21";
_camera camPrepareTarget [7554.14,-90313.02,-20795.94];
_camera camPreparePos [4065.61,7192.74,0.27];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "0:42:11";
_camera camPrepareTarget [7554.14,-90313.02,-20795.94];
_camera camPreparePos [4065.61,7192.74,98.08];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["***OPERAÇÃO HAMMER HEAD***","PLAIN"];

;comment "0:45:27";
_camera camPrepareTarget [103018.55,16855.95,7.02];
_camera camPreparePos [3757.05,4920.25,11.27];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "0:46:18";
_camera camPrepareTarget [103018.55,16855.95,7.02];
_camera camPreparePos [3757.05,4920.25,93.40];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["Special Thanks:\nFor All FRIENDS\nFor support us in this mission.","PLAIN"];

;comment "0:49:14";
_camera camPrepareTarget [83018.64,65801.23,7.01];
_camera camPreparePos [3938.94,4588.01,1.89];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera;};

;comment "0:49:14";
_camera camPrepareTarget [83018.64,65801.23,7.01];
_camera camPreparePos [3938.94,4588.01,1.89];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "0:50:44";
_camera camPrepareTarget [83018.64,65801.23,7.01];
_camera camPreparePos [3834.90,4723.30,3.40];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

;comment "0:51:56";
_camera camPrepareTarget [-12977.45,103160.62,9.90];
_camera camPreparePos [4456.68,5011.77,23.93];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera;};


titletext ["O TERRITORIO É EXTREMAMENTE HOSTIL, MANTENHA SE ATENTO!!","PLAIN"];



;comment "0:52:54";
_camera camPrepareTarget [-12977.45,103160.62,9.90];
_camera camPreparePos [3964.33,4772.31,23.93];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;

sleep 5;

;comment "20:19:37";
_camera camPrepareTarget [5501.79,107427.45,1.98];
_camera camPreparePos [4634.45,7531.74,3.01];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera;};



_camera cameraeffect ["terminate","back"];
camdestroy _camera;

[str ("HAMMER HEAD") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Koplic")] spawn BIS_fnc_infoText;