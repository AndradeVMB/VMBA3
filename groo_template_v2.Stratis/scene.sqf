titlecut [" ","BLACK IN",10];
_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];

playmusic "deixaosgarotobrincar";

titletext ["GROO FRAMEWORK\nFeatures:\nMonsada's UPSMON\nBangabob's EOS\nFHQ Task Tracker\n=BTC= Logistics\nFarooq Revive\nZuff Group Management\nJamac Vehicle Service\nGroo PlayerTags","PLAIN"];

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


_camera cameraeffect ["terminate","back"];
camdestroy _camera;



[str ("Groo Template") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("STRATIS")] spawn BIS_fnc_infoText;
