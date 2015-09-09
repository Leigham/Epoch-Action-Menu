//UG_CraftVehicle = compile preprocessFile "ActionMenu\Scripts\spawnvehicle.sqf";
//SystemChat "Compiles Loaded";
_DonationCrafting = True;
_UG_Admins = ["","",""];
_UG_Donators = ["","",""];
_puid = getPlayerUID player;
diag_log format ["%1 %2 %3",_puid,_UG_Admins,_UG_Donators];

Epoch_StockActionMenuViews = [ //Allowed View Distances.
500,
1000,
1500,
2000,
2500,
3000,
3500,
4000,
4500,
5000,
5500,
6000 //Last one no ","
];
UG_VehicleList = [
["Ebike_Epoch",["Crowbar"],false,0],
["Ebike_Epoch",[""],true,0],
["Mosquito_Epoch",[["ItemCorrugated",1],["ItemCorrugated",1]],true,0]
];
if(_puid in _UG_Admins)then{Diag_Log "Player in adminlist";//Vehicle List for Admins, Keep the Cost to [""](Basically a spawn Menu)
UG_VehicleList = [
["Mosquito_Epoch",[""],false,0],
["Mosquito_Epoch",[""],true,0],
["Ebike_Epoch",[""],false,0],
["Ebike_Epoch",[""],true,0]
];
};
if(_DonationCrafting)then{ if(_puid in _UG_Donators)then{//Vehicle List For Donators, If the Option is turned on.
UG_VehicleList = [
["Ebike_Epoch",[""],false,0],
["Mosquito_Epoch",[["ItemCorrugated",1],["",0]],true,0]
];
};
};

//CustomScripts//
//["Script Name in Listbox,Scriptpath",Function Name, Dialog ID to open -1 for disabled.]//Dont use all the last 3, use the type you need ExecVM, Call Your function or CreateDialog yourid.
UG_CustomScripts = [
["Test Exec","actionmenu\Test\Script.sqf","",-1],
["Test Function","",'UG_TestFunction',-1],
["Test Dialog","","",9909]//Last one no Comma
];
//Do Not Edit Below
waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
while {true} do
	{
		sleep 1;

		_unit = player;
		_damage = round ((1 - (damage player)) * 100);
		_hunger = round((EPOCH_playerHunger/5000) * 100);
		_thirst = round((EPOCH_playerThirst/2500) * 100);
		_wallet = EPOCH_playerCrypto;
		_stamina = round(EPOCH_playerStamina * 100) / 100;
		_energy = round(EPOCH_playerEnergy);
		_toxPercent = round (EPOCH_playerToxicity);
		_energyPercent =  floor((_energy / 2500 ) * 100);
		_serverFPS = if (typeName EPOCH_diag_fps == "SCALAR") then [{EPOCH_diag_fps},{"MANIPULATED"}],
		_pos = getPosATL player;  //switch to this below if you want to have world space coords displayed instead of gridref
		_dir = getDir (vehicle player);
		_grid = mapGridPosition  player; _xx = (format[_grid]) select  [0,3];
		_yy = (format[_grid]) select  [3,3];
		_time = (round(240-(serverTime)/60));  //edit the '240' value (60*4=240) to change the countdown timer if your server restarts are shorter or longer than 4 hour intervals
		_hours = (floor(_time/60));
		_minutes = (_time - (_hours * 60));
		_players = (count playableUnits -1);
		_fps = format["%1", diag_fps];
	_formattedText = format [
"<t color='#33BFFF'>Health: </t><t color='#ffffff'>%1</t><br />"+
"<t color='#33BFFF'>Hunger: </t><t color='#ffffff'>%2</t><br />"+
"<t color='#33BFFF'>Thirst: </t><t color='#ffffff'>%3</t><br />"+
"<t color='#33BFFF'>Wallet: </t><t color='#ffffff'>%4</t><br />"+
"<t color='#33BFFF'>Stamina: </t><t color='#ffffff'>%5</t><br />"+
"<t color='#33BFFF'>Energy: </t><t color='#ffffff'>%6</t><br />"+
"<t color='#33BFFF'>Toxicity: </t><t color='#ffffff'>%7</t><br />"+
"<t color='#33BFFF'>Restart in: </t><t color='#ffffff'>%8</t><br />"+
"<t color='#33BFFF'>Server FPS: </t><t color='#ffffff'>%9</t><br />"+
"<t color='#33BFFF'>Your FPS: </t><t color='#ffffff'>%10</t><br />"
, _damage,_hunger,_thirst,_wallet,_stamina,_energy,_toxPercent,UG_Restart,_serverFPS,_fps
];
lbClear _ObjectPicBox;
_ObjectPicBox ctrlSetStructuredText parseText _formattedText;

};*/
UG_GetClassnameVehicle = compile preprocessFile "actionmenu\Functions\Exile_AdminGetVicClassname.sqf";
execVM "ActionMenu\Scripts\ActionMenuGetinfo.sqf";
