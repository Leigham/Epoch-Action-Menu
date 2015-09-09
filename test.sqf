
waituntil {!(IsNull (findDisplay 46))};


OpenSpawnMenu = (findDisplay 46) displayAddEventHandler ["KeyDown","(if (_this select 1 == 86) then {_lunge = execVM 'ActionMenu\Scripts\ShowSpawnDialog.sqf'})"];

systemchat "Press \ to Open The Menu";