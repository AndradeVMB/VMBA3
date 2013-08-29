/*
AMBIENT CIVILIAN TRAFFIC SCRIPT
tpw 20130828

    - This script will gradually spawn civilian traffic, up to a maximum specified, onto roads within a specified radius of the player.
    - Cars will drive, with a specified number of waypoints.
    - If a civilian driver is killed or its car damaged another will spawn.
    - Cars are removed if more than the specified radius from the player.

Disclaimer: Feel free to use and modify this code, on the proviso that you post back changes and improvements so that everyone can benefit from them, and acknowledge the original author (tpw) in any derivative works.

To use:
1 - Save this script into your mission directory as eg tpw_cars.sqf
2 - Call it with 0 = [1000,15,4] execvm "tpw_cars.sqf", where 1000 = radius, 15 = number of waypoints, 4 = max cars
*/

if (!isServer) exitWith {};

private ["_civlist","_carlist","_sqname","_centree","_centrew","_centrec","_centrer"];

// READ IN VARIABLES
tpw_car_radius = _this select 0;
tpw_car_waypoints = _this select 1;
tpw_car_num = _this select 2;


// VARIABLES
_civlist = ["Civilian_F","C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F"];

_carlist = ["C_Offroad_01_F","C_Offroad_01_F","C_Offroad_01_F","C_Offroad_01_F","C_Quadbike_01_F"]; // more cars than quadbikes

tpw_car_cararray = []; // array holding spawned cars
tpw_car_farroads = []; // roads > 250m from unit
tpw_car_roadlist = []; // roads near unit

// CREATE AI CENTRES SO SPAWNED UNITS KNOW WHO'S AN ENEMY
private ["_centerW", "_centerE", "_centerR", "_centerC"];
_centerW = createCenter west;
_centerE = createCenter east;
_centerR = createCenter resistance;
_centerC = createCenter civilian;
west setFriend [east, 0];
east setFriend [west, 0];
east setFriend [resistance, 0];
east setFriend [civilian, 1];
civilian setFriend [east, 1];
resistance setFriend [east, 0];

// CREATE ARRAY OF EMPTY SQUADS TO SPAWN CIVS INTO
tpw_car_squadarray = [];
for "_z" from 1 to 100 do
    {
    _sqname = creategroup civilian;
    tpw_car_squadarray set [count tpw_car_squadarray,_sqname];
    };

// WAYPOINTS
tpw_car_fnc_waypoint =
    {
    private ["_grp","_road","_wp"];
    //Pick random position within random house
    _grp = _this select 0;
    _road = tpw_car_roadlist select (floor (random (count tpw_car_roadlist)));
    _wp = getposasl _road;
    _grp addWaypoint [_wp, 0];
    [_grp,(tpw_car_waypoints - 1)] setWaypointType "CYCLE";
    };


// SPAWN CIV/CAR INTO EMPTY GROUP
tpw_car_fnc_carspawn =
    {
    private ["_civ","_car","_roadseg","_spawnpos","_spawndir","_i","_ct","_sqname"];

    // Pick a random road segment to spawn car and civ
    [] call tpw_car_fnc_roadpos;
    _roadseg = tpw_car_farroads select (floor (random (count tpw_car_farroads)));
    _spawnpos = getposasl _roadseg;
    _spawndir = getdir _roadseg;
    _civ = _civlist select (floor (random (count _civlist)));
    _car = _carlist select (floor (random (count _carlist)));

    //Find the first empty civ squad to spawn into
    for "_i" from 1 to (count tpw_car_squadarray) do
        {
        _ct = _i - 1;
        _sqname = tpw_car_squadarray select _ct;
        if (count units _sqname == 0) exitwith
            {

            _spawncar = _car createVehicle _spawnpos;
            _spawncar setdir _spawndir;
            _civ createunit [_spawnpos,_sqname,"this moveindriver _spawncar;this setbehaviour 'CARELESS'"];

            //Add car to the array of spawened civs
            tpw_car_cararray set [count tpw_car_cararray,_spawncar];

            //Assign waypoints
            for "_i" from 1 to tpw_car_waypoints do
                {
                0 = [_sqname] call tpw_car_fnc_waypoint;
                };
            [_sqname, (tpw_car_waypoints - 1)] setWaypointType "CYCLE";
            };
        };
    };

// POOL OF ROAD POSTIONS NEAR PLAYER
tpw_car_fnc_roadpos =
    {
    tpw_car_roadlist = (position player) nearRoads tpw_car_radius;
    tpw_car_farroads = [];
        {
        if (vehicle player distance position _x > 250) then
            {
            tpw_car_farroads set [count tpw_car_farroads,_x];
            };
        } foreach tpw_car_roadlist;
    };

sleep 3;

// MAIN LOOP
while {true} do
    {
    private ["_driver"];

    // Add cars
    if (count tpw_car_cararray < tpw_car_num) then
        {
        0 = [] call tpw_car_fnc_carspawn;
        };

        //Delete distant cars (only if they are not visible to player)
        {
        if (_x distance vehicle player > tpw_car_radius || damage _x > 0.2 || !(alive driver _x)) then
            {
            _driver = driver _x;
            while {(count (waypoints( group _driver))) > 0} do
                {
                 deleteWaypoint ((waypoints (group _driver)) select 0);
                };
            tpw_car_cararray = tpw_car_cararray - [_x];
            moveout _driver;
            deletevehicle _driver;
            deletevehicle _x;
            };
        } foreach tpw_car_cararray;
    sleep random 10;
    };