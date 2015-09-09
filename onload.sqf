//Onload.sqf by Lega
disableSerialization;
 
_display = _this select 0;//Storing the Display 
_ViewListBox = _display displayCtrl 7777;
_disp_plist = _display displayCtrl 7781;
_VehicleSelectionList = _display displayCtrl 7779;
_ScriptListBox = _display displayCtrl 7785;
_ObjectPicBox = _display displayCtrl 7787;
//Stocking Listbox for View Distances 
    {

		_ViewListBox lbAdd format['%1',_x];
		lbSetData [(lbsize _ViewListBox)-1,_x];
		diag_log format ["%1 Meters Loaded",_x];
        

    } foreach Epoch_StockActionMenuViews;
	
//Getting list of Vehicles for Crafting
/*{
	
	_UG_CraftingItems = _x select 1;
	_UG_CraftingSave = _x select 2;
	_UG_KrypoCost = _x Select 3;
	_ShowName = _UG_CraftingClassnames call ISSE_Cfg_Vehicle_GetName;
	_VehicleSelectionList lbAdd format['%1',_ShowName];
	_UG_VehARRAYTOSEND = [_UG_CraftingItems,_UG_CraftingSave,_UG_KrypoCost];
	_VehicleSelectionList lbSetData [1,_UG_vehARRAYTOSEND];
	diag_log format ["%1 Loaded It Costs %2",_ShowName, _UG_VehARRAYTOSEND];
}foreach UG_VehicleList;*/
UG_Deployables = [];
{
	UG_CraftingClassnames = _x select 0;
	UG_CraftingCost = _x select 1;
	UG_CraftingSave = _x select 2;
	UG_CraftingKrypto = _x select 3;
	_ShowName = UG_CraftingClassnames call ISSE_Cfg_Vehicle_GetName;
	_VehicleSelectionList lbAdd format['%1',_ShowName];
}foreach UG_VehicleList;

	
	//Getting Custom Script List.
		{
		_ScriptName = _x select 0;
		_ExecPath = _x select 1;
		_FunctionName = _x Select 2;
		_CreateDialogID = _X Select 3;
		_UG_ScriptARRAYTOSEND = [_ExecPath,_FunctionName,_CreateDialogID];
		_ScriptListBox lbAdd format['%1',_ScriptName];
		lbSetData [(lbsize _ScriptListBox)-1,_UG_ScriptARRAYTOSEND];
		diag_log format ["%1 Loaded",_UG_ScriptARRAYTOSEND];
		} foreach UG_CustomScripts;
//Getting Player List for Message System
// Player List
transfer_plist = [];

{
	if ((getPlayerUID _x != "") && (getPlayerUID _x != getPlayerUID player)) then {
		transfer_plist set [count transfer_plist, name _x];
	};
} forEach playableunits;

{
	if ((count crew _x) > 0) then {
		{
			if ((getPlayerUID _x != "") && (getPlayerUID _x != getPlayerUID player)) then {
				transfer_plist set [count transfer_plist, name _x];
			};
		} forEach crew _x;
	};
} forEach (entities "LandVehicle" + entities "Air" + entities "Ship");

if ((count transfer_plist) > 0) then {
	{
		_disp_plist lbAdd _x;
	} foreach transfer_plist;
};




