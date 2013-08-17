// FIRST LINE OF DEFENSE
// GIRNA
//--------------------------------------------------------------//

nul=["mkrURBAN2",350,"garrison"] execVM "scripts\GrooEOS.sqf";
nul=["mkrURBAN3",350,"garrison"] execVM "scripts\GrooEOS.sqf";
nul=["mkrURBAN4",350,"garrison"] execVM "scripts\GrooEOS.sqf";
nul=["mkrURBAN5",350,"garrison"] execVM "scripts\GrooEOS.sqf";
nul=["mkrURBAN6",350,"garrison"] execVM "scripts\GrooEOS.sqf";
nul=["mkrURBAN8",350,"garrison"] execVM "scripts\GrooEOS.sqf";
nul=["mkrURBAN11",350,"garrison"] execVM "scripts\GrooEOS.sqf";

nul=["mkrHillPatrol1",500,"squad"] execVM "scripts\GrooEOS.sqf";
nul=["mkrHillPatrol2",500,"squad"] execVM "scripts\GrooEOS.sqf";
nul=["mkrHillPatrol3",500,"squad"] execVM "scripts\GrooEOS.sqf";


Sleep 120;

// Tasks
// Matar o dono do Morro
0 = [] execVM "mission\sdKillOfficer.sqf";

sleep 10;

// Apreender ou destruir todas as Bocas
[west,
["taskDestroy", "Apreenda ou destrua todas as caixas de drogas nas Bocas da Favela cortando o subrimento de drogas para Argia Marina.",
"Quebrar o Trafico", ""]
] call FHQ_TT_addTasks;

sleep 10;

// Remover todas as Barricas
[west,
["taskRemove", "Remova todas as barricadas na rua principal da favela, devolvendo aos cidadaos o direito constitucional de ir e vir.",
"Remover barricadas", ""]
] call FHQ_TT_addTasks;




