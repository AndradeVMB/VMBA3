//adicionar esse parametro no init do veiculo     //
// 0 = this execVM "Hunter_munition.sqf"; //

clearmagazinecargo _this;
clearitemcargo _this;
clearweaponcargoglobal _this;

//Equipamentos

_this addweaponcargo ["srifle_GM6_SOS_F", 1];
_this addweaponcargo ["launch_B_Titan_F", 1];

//Munição

_this addmagazinecargo ["5Rnd_127x108_Mag", 10];
_this addmagazinecargo ["20Rnd_762x51_Mag", 10];
_this addmagazinecargo ["150Rnd_762x51_Box", 10];
_this addmagazinecargo ["30Rnd_65x39_caseless_mag", 10];
_this addmagazinecargo ["30Rnd_556x45_Stanag", 10];
_this addmagazinecargo ["Titan_AT", 3];
_this addmagazinecargo ["Titan_AA", 3];