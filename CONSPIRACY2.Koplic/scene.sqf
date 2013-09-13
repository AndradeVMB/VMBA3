titlecut [" ","BLACK IN",10];
_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];

playmusic "balalaika";

titlecut [" ","BLACK"];

titletext ["CONSPIRACY Ep.2 WOLFSLAIR\nMissao Oficial Virtual MILSIM Brasil","PLAIN"];

Sleep 10;

titletext ["MILSIM S3 Team\nCol.Viper\nLt.Andrade\nLt.OfKings\nLt.Nascimento\nSgt.Jesus","PLAIN"];

sleep 5;

titletext ["GROO FRAMEWORK V2\nFeatures:\nMonsada's UPSMON\nBangabob's EOS\nFHQ Task Tracker\n=BTC= Logistics\nFarooq Revive\nZuff Group Management\nJamac Vehicle Service\nGroo PlayerTags","PLAIN"];

sleep 5;

titlecut [" ","BLACK IN",5];

;comment "19:49:15";
_camera camPrepareTarget [52720.80,-81701.87,22875.35];
_camera camPreparePos [3482.04,2279.82,1.00];
_camera camPrepareFOV 0.010;
_camera camCommitPrepared 0;

titletext ["Esteja alerta pois forcas rebeldes desembarcaram na ilha.","PLAIN"];

;comment "19:50:34";
_camera camPrepareTarget [52720.80,-81701.87,22875.35];
_camera camPreparePos [3482.04,2279.82,1.00];
_camera camPrepareFOV 0.639;
_camera camCommitPrepared 20;
waitUntil {camCommitted _camera;};

;comment "19:54:02";
_camera camPrepareTarget [-68907.09,-71224.66,0.89];
_camera camPreparePos [1114.78,168.18,1.49];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

sleep 5;

titletext ["Investigue a presenca russa e resgate os agentes da CIA capturados","PLAIN"];

;comment "20:19:39";
_camera camPrepareTarget [-77835.13,-53054.33,1.28];
_camera camPreparePos [5426.97,2331.27,0.56];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "20:20:19";
_camera camPrepareTarget [-77835.13,-53054.33,1.28];
_camera camPreparePos [5426.97,2331.27,1.80];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;
waitUntil {camCommitted _camera;};

titletext ["Destrua os blindados Inimigos","PLAIN"];

;comment "20:21:47";
_camera camPrepareTarget [-81201.86,54965.55,4.76];
_camera camPreparePos [4061.42,2714.50,0.58];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "20:21:56";
_camera camPrepareTarget [-81201.86,54965.55,4.76];
_camera camPreparePos [4061.40,2714.48,1.40];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};

titletext ["Boa Sorte","PLAIN"];

;comment "20:22:58";
_camera camPrepareTarget [96066.63,41933.91,5.43];
_camera camPreparePos [4087.10,2706.34,8.89];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

;comment "20:23:10";
_camera camPrepareTarget [96066.63,41933.91,5.43];
_camera camPreparePos [4142.91,2693.46,8.89];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera;};


_camera cameraeffect ["terminate","back"];
camdestroy _camera;


[str ("Conspiracy: Wolfslair") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("STRATIS")] spawn BIS_fnc_infoText;
