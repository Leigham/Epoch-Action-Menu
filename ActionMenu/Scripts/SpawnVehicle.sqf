

disableSerialization;
_display = findDisplay 7770;
_ObjectTypeText = _display displayCtrl 7779;
_typeselection = lbCurSel _ObjectTypeText;
_ObjectTypeName = lbtext [7779,_typeselection];
_Cnametext = _ObjectTypeName call UG_GetClassnameVehicle;
diag_log format ["%1",_Cnametext];
{
if(_Cnametext==(_x select 0))then{
_class=_x;
diag_log format ["the array  for %4 is %1 %2 %3",_class,UG_CraftingKrypto,UG_CraftingSave,_ObjectTypeName];
_CraftingItemArray = _class Select 0;
_CraftingItemClassname = _CraftingItemArray select 0;
_CraftingItemAmount = _CraftingItemArray select 1;
_CraftingItems = _Class Select 1;
_CraftingSave = _Class Select 2;
_CraftingKrypto = _Class Select 3;
Diag_Log format ["%1--%2--%3--%4",_CraftingClassname,_CraftingItems,_CraftingSave,_CraftingKrypto];
player addMagazines ["ItemCorrugated",3];
if(_CraftingItemClassname == "")then{exitwith {};}else{
{
_NEEDITEM = _x select 0;
if(_CraftingClassname in (magazines player))then{
_HasItem = true;
}else{exitwith{systemchat format["You are missing %1", _NEEDITEM];};
}foreach _CraftingItemArray;
};
systemchat format ["HAS ITEM = %1",_HasItem];


};
};
}forEach UG_VehicleList;

