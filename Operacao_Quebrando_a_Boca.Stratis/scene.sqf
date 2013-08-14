titlecut [" ","BLACK IN",1];
_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];

playmusic "deixaosgarotobrincar";

titletext ["GROO FRAMEWORK\nFeatures:\nMonsada's UPSMON\nBangabob's EOS\nFHQ Task Tracker\n=BTC= Logistics\n=BTC= Revive\nZuff Group Management\nJamac Vehicle Service","PLAIN"];

;comment "4:31:15";
_camera camPrepareTarget [77995.62,-58545.58,-12301.61];
_camera camPreparePos [2863.73,6265.50,9.59];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "4:32:54";
_camera camPrepareTarget [65409.50,-70816.36,-12303.38];
_camera camPreparePos [2763.79,6149.87,9.62];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["A Mission By\n The VMB S3 Team\nCpl.OfKings - Mission Editing\nSub.Andrade - Scripting Sorcery","PLAIN"];

;comment "4:34:47";
_camera camPrepareTarget [65409.50,-70816.36,-12303.45];
_camera camPreparePos [2763.79,6149.86,9.65];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "4:36:45";
_camera camPrepareTarget [65746.25,-71230.11,-6701.53];
_camera camPreparePos [2763.79,6149.86,47.68];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["FEATURING:\nMILSIM Units by Maj.BlackHawk\nLoadOut Scripts by Col.Viper","PLAIN"];

;comment "4:36:45";
_camera camPrepareTarget [65746.25,-71230.11,-6701.53];
_camera camPreparePos [2763.79,6149.86,47.68];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "4:43:46";
_camera camPrepareTarget [65637.43,-71096.44,13037.18];
_camera camPreparePos [3197.35,5644.44,13.17];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["OPERACAO QUEBRANDO O TRAFICO","PLAIN"];

;comment "4:48:44";
_camera camPrepareTarget [33050.56,-89002.70,13082.98];
_camera camPreparePos [3288.15,5563.90,5.78];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "4:50:22";
_camera camPrepareTarget [33050.56,-89002.70,13082.77];
_camera camPreparePos [3497.15,5623.12,61.78];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["Special Thanks:\nCpl.OfKings\nFor create this map.","PLAIN"];

;comment "4:58:22";
_camera camPrepareTarget [63486.66,-73118.20,77.15];
_camera camPreparePos [2592.66,6255.24,77.20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil {camCommitted _camera;};

;comment "5:03:02";
_camera camPrepareTarget [62718.71,-72122.19,-17389.74];
_camera camPreparePos [2901.44,5991.23,114.30];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "5:04:47";
_camera camPrepareTarget [62718.71,-72122.19,-17389.81];
_camera camPreparePos [3263.18,5527.34,51.20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

;comment "5:07:19";
_camera camPrepareTarget [63899.16,-73666.22,7618.51];
_camera camPreparePos [3350.81,5529.14,0.38];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;
waitUntil {camCommitted _camera;};

titletext ["QUANDO A NOITE CAI O SUBMUNDO GANHA AS RUAS","PLAIN"];

sleep 8;

titletext ["QUEM POUPA O LOBO, SACRIFICA A OVELHA!","PLAIN"];



;comment "5:07:19";
_camera camPrepareTarget [63899.16,-73666.22,7618.51];
_camera camPreparePos [3350.81,5529.14,0.38];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

sleep 5;

;comment "5:14:27";
_camera camPrepareTarget [63899.16,-73666.22,7618.42];
_camera camPreparePos [3292.04,5605.87,3.98];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 8;
waitUntil {camCommitted _camera;};

;comment "5:16:46";
_camera camPrepareTarget [-16284.77,-92179.63,7615.61];
_camera camPreparePos [3392.04,5520.78,17.66];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "5:17:35";
_camera camPrepareTarget [-16284.77,-92179.63,7615.62];
_camera camPreparePos [3752.17,5446.40,37.67];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

;comment "5:19:41";
_camera camPrepareTarget [51563.87,-81824.07,7621.90];
_camera camPreparePos [3246.20,5282.47,2.49];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "5:21:15";
_camera camPrepareTarget [51563.87,-81824.07,7621.78];
_camera camPreparePos [3521.25,5421.47,28.67];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};



_camera cameraeffect ["terminate","back"];
camdestroy _camera;

[str ("TOMANDO O MORRO") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("STRATIS")] spawn BIS_fnc_infoText;

exit;