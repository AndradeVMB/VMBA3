/**
 * Converted with Arma2MapConverter v0.5.1-beta
 *
 * Source: C:\Users\Groo\Documents\Arma 3 - Other Profiles\Lt%2eAndrade\missions\filmmaking.Koplic\mission.sqm
 * Date: 05/09/13 10:43
 */

if !isserver exitwith{};

_westHQ = createCenter west;
_eastHQ = createCenter east;
_guerHQ = createCenter resistance;
_civHQ  = createCenter civilian;
_emptyHQ = createCenter civilian;


_createdUnits = [];
_createdMarkers = [];
_createdTriggers = [];

/*******************
 * MARKER CREATION *
 *******************/

/*****************
 * EMPTY VEHICLE CREATION *
 *****************/
// group _group_empty_1
_group_empty_1 = createGroup _emptyHQ;
// begin autogen_5571184252354bd7aac26fea1602acf7, part of group _group_empty_1
if (true) then
{
	autogen_5571184252354bd7aac26fea1602acf7 = createVehicle ["C_Offroad_01_F", [4706.1812, 7562.9482, 0], [], 0, "NONE"];
	autogen_5571184252354bd7aac26fea1602acf7 setDir 265;
	_createdUnits = _createdUnits + [autogen_5571184252354bd7aac26fea1602acf7];
};
// end of autogen_5571184252354bd7aac26fea1602acf7
// begin autogen_7397adca896e439c99841fdf4303e3a1, part of group _group_empty_1
if (true) then
{
	autogen_7397adca896e439c99841fdf4303e3a1 = createVehicle ["C_Offroad_01_F", [4706.1807, 7469.4468, 0], [], 0, "NONE"];
	autogen_7397adca896e439c99841fdf4303e3a1 setDir 265;
	_createdUnits = _createdUnits + [autogen_7397adca896e439c99841fdf4303e3a1];
};
// end of autogen_7397adca896e439c99841fdf4303e3a1



/*****************
 * UNIT CREATION *
 *****************/

// group _group_civ_2
_group_civ_2 = createGroup _civHQ;
// begin autogen_ce1f0b84b4334b628bb92e77c01430de, part of group _group_civ_2
if (true) then
{
	autogen_ce1f0b84b4334b628bb92e77c01430de = _group_civ_2 createUnit ["C_man_1", [4705.7686, 7478.2661, 0], [], 0, "CAN_COLLIDE"];

	autogen_ce1f0b84b4334b628bb92e77c01430de setDir 265;
	autogen_ce1f0b84b4334b628bb92e77c01430de setUnitAbility 0.60000002;
	autogen_ce1f0b84b4334b628bb92e77c01430de setRank "PRIVATE";
	if(true) then { _group_civ_2 selectLeader autogen_ce1f0b84b4334b628bb92e77c01430de; };
	_createdUnits = _createdUnits + [autogen_ce1f0b84b4334b628bb92e77c01430de];


	autogen_ce1f0b84b4334b628bb92e77c01430de moveindriver autogen_7397adca896e439c99841fdf4303e3a1;

};
// end of autogen_ce1f0b84b4334b628bb92e77c01430de


// group _group_civ_3
_group_civ_3 = createGroup _civHQ;
// begin autogen_24a341ec2a7647d7a239d2c4ef3e45d0, part of group _group_civ_3
if (true) then
{
	autogen_24a341ec2a7647d7a239d2c4ef3e45d0 = _group_civ_3 createUnit ["C_man_1", [4705.166, 7571.7671, 0], [], 0, "CAN_COLLIDE"];

	autogen_24a341ec2a7647d7a239d2c4ef3e45d0 setDir 265;
	autogen_24a341ec2a7647d7a239d2c4ef3e45d0 setUnitAbility 0.60000002;
	autogen_24a341ec2a7647d7a239d2c4ef3e45d0 setRank "PRIVATE";
	if(true) then { _group_civ_3 selectLeader autogen_24a341ec2a7647d7a239d2c4ef3e45d0; };
	_createdUnits = _createdUnits + [autogen_24a341ec2a7647d7a239d2c4ef3e45d0];

	autogen_24a341ec2a7647d7a239d2c4ef3e45d0 moveInDriver autogen_5571184252354bd7aac26fea1602acf7;


};
// end of autogen_24a341ec2a7647d7a239d2c4ef3e45d0



sleep 40;


// waypoint #2
_wp = _group_civ_3 addWaypoint[[3399.7483, 7564.7402, 0], 0, 2];
[_group_civ_3, 2] setWaypointBehaviour "UNCHANGED";
[_group_civ_3, 2] setWaypointCombatMode "NO CHANGE";
[_group_civ_3, 2] setWaypointCompletionRadius 0;
[_group_civ_3, 2] setWaypointFormation "NO CHANGE";
[_group_civ_3, 2] setWaypointSpeed "FULL";
[_group_civ_3, 2] setWaypointStatements["true", ""];
// waypoint #2
_wp = _group_civ_2 addWaypoint[[3399.6333, 7475.0327, 0], 0, 2];
[_group_civ_2, 2] setWaypointBehaviour "UNCHANGED";
[_group_civ_2, 2] setWaypointCombatMode "NO CHANGE";
[_group_civ_2, 2] setWaypointCompletionRadius 0;
[_group_civ_2, 2] setWaypointFormation "NO CHANGE";
[_group_civ_2, 2] setWaypointSpeed "FULL";
[_group_civ_2, 2] setWaypointStatements["true", ""];

/********************
 * TRIGGER CREATION *
 ********************/

sleep 30;

deletevehicle autogen_24a341ec2a7647d7a239d2c4ef3e45d0;
deleteVehicle autogen_ce1f0b84b4334b628bb92e77c01430de;


deleteVehicle autogen_5571184252354bd7aac26fea1602acf7;
deleteVehicle autogen_7397adca896e439c99841fdf4303e3a1;

// return all created units in an array
[_createdUnits, _createdMarkers, _createdTriggers]