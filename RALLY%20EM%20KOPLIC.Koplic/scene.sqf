



_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];

0 = [] execVM "intro.sqf";

titlecut [" ","BLACK"];
titletext ["GROO FRAMEWORK\nFeatures:\nMonsada's UPSMON\nBangabob's EOS\nFHQ Task Tracker\n=BTC= Logistics\nFarooq Revive\nZuff Group Management\nJamac Vehicle Service\nGroo PlayerTags","PLAIN"];

playmusic "intro";
sleep 5.5;

titlecut [" ","BLACK IN"];
;comment "9:09:48";
_camera camPrepareTarget [2794.23,107570.64,4.87];
_camera camPreparePos [4763.52,7590.09,3.84];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
sleep 1;


titlecut [" ","BLACK IN"];
;comment "9:10:05";
_camera camPrepareTarget [2794.23,107570.64,4.87];
_camera camPreparePos [4792.84,7590.69,3.84];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
sleep 1;

titlecut [" ","BLACK IN"];
;comment "9:10:21";
_camera camPrepareTarget [2794.23,107570.64,4.87];
_camera camPreparePos [4821.44,7591.26,3.84];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
sleep 1;


titlecut [" ","BLACK IN",10];
;comment "9:48:14";
_camera camPrepareTarget [103935.23,2935.08,-7807.01];
_camera camPreparePos [4343.86,7472.39,0.27];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;


;comment "9:49:23";
_camera camPrepareTarget [104491.11,8129.55,4270.68];
_camera camPreparePos [4689.07,7469.31,0.20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};


titlecut [" ","BLACK"];
titletext ["Koplic Racing\nby MILSIM S3\nSgt.Nascimento (Editing)\nLt.Andrade (Scripting Sorcery)","PLAIN"];

sleep 5;
titlecut [" ","BLACK IN"];

;comment "9:50:57";
_camera camPrepareTarget [-44574.11,94274.41,4285.34];
_camera camPreparePos [4857.71,7451.79,1.65];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "9:51:19";
_camera camPrepareTarget [-44574.11,94274.41,4285.34];
_camera camPreparePos [4892.50,7471.59,1.65];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

;comment "9:57:02";
_camera camPrepareTarget [12002.83,-88710.83,-25895.55];
_camera camPreparePos [4790.67,7602.81,22.31];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "9:57:40";
_camera camPrepareTarget [-82806.39,-34568.03,-23395.48];
_camera camPreparePos [4790.67,7602.81,22.31];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;
waitUntil {camCommitted _camera;};

;comment "9:58:05";
_camera camPrepareTarget [-82806.39,-34568.03,-23395.48];
_camera camPreparePos [4790.67,7602.81,22.31];
_camera camPrepareFOV 0.127;
_camera camCommitPrepared 5;
waitUntil {camCommitted _camera;};

;comment "9:58:34";
_camera camPrepareTarget [-94237.83,-3599.93,-8215.29];
_camera camPreparePos [4790.67,7602.81,22.31];
_camera camPrepareFOV 0.328;
_camera camCommitPrepared 5;
waitUntil {camCommitted _camera;};


;comment "9:11:22";
_camera camPrepareTarget [40250.65,66515.02,-72369.28];
_camera camPreparePos [4065.74,7417.51,99.89];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "9:11:58";
_camera camPrepareTarget [40250.65,66515.02,-72369.28];
_camera camPreparePos [4576.70,7445.38,99.89];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

;comment "10:07:52";
_camera camPrepareTarget [-8300.47,106478.23,-133.14];
_camera camPreparePos [4866.68,7348.99,5.96];
_camera camPrepareFOV 0.015;
_camera camCommitPrepared 0;

;comment "10:08:42";
_camera camPrepareTarget [-8300.47,106478.23,-133.14];
_camera camPreparePos [4787.78,7338.56,5.99];
_camera camPrepareFOV 0.015;
_camera camCommitPrepared 20;
waitUntil {camCommitted _camera;};

;comment "10:09:16";
_camera camPrepareTarget [-7748.58,102304.02,-28707.55];
_camera camPreparePos [4789.89,7338.83,5.98];
_camera camPrepareFOV 0.852;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

;comment "10:09:43";
_camera camPrepareTarget [-7748.58,102304.02,-28707.55];
_camera camPreparePos [4861.66,7348.33,5.98];
_camera camPrepareFOV 0.852;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};



_camera cameraeffect ["terminate","back"];
camdestroy _camera;

[str ("Koplic Race") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("STRATIS")] spawn BIS_fnc_infoText;
