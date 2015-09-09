class KeyMakerLega {
	idd = 7770;
	movingEnable = true;
	onLoad = "_this ExecVM 'onload.sqf'";
	class controlsBackground {
class Epoch_StockViewBack: IGUIBack
{
	idc = 7771;
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.247108 * safezoneH + safezoneY;
	w = 0.12375 * safezoneW;
	h = 0.241897 * safezoneH;
	colorbackground[] = {0,0,0,0.7};
};
class Epoch_StockMessageBack: IGUIBack
{
	idc = 7772;
	x = 0.4175 * safezoneW + safezoneX;
	y = 0.247108 * safezoneH + safezoneY;
	w = 0.28875 * safezoneW;
	h = 0.241897 * safezoneH;
	tooltip = "Select a player"; //--- ToDo: Localize;
	colorbackground[] = {0,0,0,0.7};
};
class Epoch_StockCraftingBack: IGUIBack
{
	idc = 7773;
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.489005 * safezoneH + safezoneY;
	w = 0.12375 * safezoneW;
	h = 0.285878 * safezoneH;
	colorbackground[] = {0,0,0,0.7};
};
class Epoch_StockStatsBack: IGUIBack
{
	idc = 7774;
	x = 0.5825 * safezoneW + safezoneX;
	y = 0.489005 * safezoneH + safezoneY;
	w = 0.12375 * safezoneW;
	h = 0.285878 * safezoneH;
	colorbackground[] = {0,0,0,0.7};
};
class Epoch_StockActionsBack: IGUIBack
{
	idc = 7775;
	x = 0.4175 * safezoneW + safezoneX;
	y = 0.489005 * safezoneH + safezoneY;
	w = 0.165 * safezoneW;
	h = 0.285878 * safezoneH;
	colorbackground[] = {0,0,0,0.7};
};
class Epoch_StockHeader: IGUIBack
{
	idc = 7776;
	text = "Epoch Action Menu"; //--- ToDo: Localize;
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.225117 * safezoneH + safezoneY;
	w = 0.4125 * safezoneW;
	h = 0.0219906 * safezoneH;
	colorbackground[] = {0,0,0,0.5};
};
	};
	class controls {
class Epoch_StockViewList: RscListbox
{
	idc = 7777;
	text = "Set View Distance"; //--- ToDo: Localize;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.258103 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.16493 * safezoneH;
};
class Epoch_SetView: RscButton
{
	idc = 7778;
	text = "Set View Distance"; //--- ToDo: Localize;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.434028 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.0329859 * safezoneH;
	tooltip = "Set View Distance"; //--- ToDo: Localize;
};
class Epoch_StockCrafingList: RscListbox
{
	idc = 7779;
	text = "Select a Vehicle"; //--- ToDo: Localize;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.208911 * safezoneH;
};
class Epoch_StockCraftVehicle: RscButton
{
	idc = 7780;
	text = "Craft Vehicle"; //--- ToDo: Localize;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.719906 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.0329859 * safezoneH;
	tooltip = "Craft Selected Vehicle"; //--- ToDo: Localize;
	onButtonClick =  "_this execVM 'ActionMenu\Scripts\spawnvehicle.sqf'";
};
class Epoch_StockSelectPlayerList: RscListbox
{
	idc = 7781;
	text = "Set View Distance"; //--- ToDo: Localize;
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.258103 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.208911 * safezoneH;
};
class Epoch_StockSysChatMessage: RscEdit
{
	idc = 7782;
	text = "Your Message Here"; //--- ToDo: Localize;
	x = 0.530937 * safezoneW + safezoneX;
	y = 0.258103 * safezoneH + safezoneY;
	w = 0.165 * safezoneW;
	h = 0.16493 * safezoneH;
	tooltip = "Write your message here"; //--- ToDo: Localize;
};
class Epoch_StockMessageSend: RscButton
{
	idc = 7783;
	text = "Set View Distance"; //--- ToDo: Localize;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.434028 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.0329859 * safezoneH;
	tooltip = "Set View Distance"; //--- ToDo: Localize;
};
class Epoch_StockMessageClear: RscButton
{
	idc = 7784;
	text = "Clear"; //--- ToDo: Localize;
	x = 0.530937 * safezoneW + safezoneX;
	y = 0.434028 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.0329859 * safezoneH;
	tooltip = "Set View Distance"; //--- ToDo: Localize;
};
class Epoch_StockActionList: RscListbox
{
	idc = 7785;
	text = "Set View Distance"; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.144375 * safezoneW;
	h = 0.208911 * safezoneH;
};
class Epoch_StockActionDoNow: RscButton
{
	idc = 7786;
	text = "Go"; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.719906 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.0329859 * safezoneH;
	tooltip = "Select an Action"; //--- ToDo: Localize;
};
class Epoch_StockStatsBox: RscStructuredText
{
	idc = 7787;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.252892 * safezoneH;
};
class Epoch_StockActionStop: RscButton
{
	idc = 7788;
	text = "Stop"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.719906 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.0329859 * safezoneH;
	tooltip = "Select an Action"; //--- ToDo: Localize;
};
	};
};
