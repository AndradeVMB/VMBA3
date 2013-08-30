/* =============================================
	!R
	Hide area markers.

	create Game Logic Object
	put in initialization field:

		nul = call compile preprocessFile "scripts\UPSMON\!R\markerAlpha.sqf";

	all markers area must be named area0, area1...area13

================================================= */

{ _x setmarkeralpha 0; } foreach [

"mkrURBAN1",
"mkrURBAN2",
"mkrURBAN3",
"mkrURBAN4",
"mkrURBAN5",
"mkrURBAN6",
"mkrURBAN7",
"mkrURBAN8",
"mkrURBAN9",
"mkrURBAN10",
"mkrURBAN11",
"mkrURBAN12",
"mkrURBAN13",
"mkrURBAN14",
"mkrURBAN15",
"mkrURBAN16",
"mkrURBAN17",
"mkrURBAN18",
"mkrURBAN19",

"mkrRoadblock1",
"mkrRoadblock2",
"mkrRoadblock3",
"mkrRoadblock4",
"mkrRoadblock5",
"mkrRoadblock6",
"mkrRoadblock7",
"mkrRoadblock8",
"mkrRoadblock9",
"mkrRoadblock10",
"mkrRoadblock11",
"mkrRoadblock12",
"mkrRoadblock13",
"mkrRoadblock14",
"mkrRoadblock15",
"mkrRoadblock16",
"mkrRoadblock17",

"mkrHillPatrol1",
"mkrHillPatrol2",
"mkrHillPatrol3",
"mkrHillPatrol4",
"mkrHillPatrol5",
"mkrHillPatrol6",
"mkrHillPatrol7",
"mkrHillPatrol8",
"mkrHillPatrol9",
"mkrHillPatrol10",
"mkrHillPatrol11",
"mkrHillPatrol12",
"mkrHillPatrol13",
"mkrHillPatrol14",
"mkrHillPatrol15",
"mkrHillPatrol16",
"mkrHillPatrol17",
"mkrHillPatrol18",
"mkrHillPatrol19",
"mkrHillPatrol20",
"mkrHillPatrol21",
"mkrHillPatrol22",
"mkrHillPatrol23",
"mkrHillPatrol24"


];