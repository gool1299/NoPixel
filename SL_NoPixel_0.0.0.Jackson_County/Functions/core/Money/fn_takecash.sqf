if(bankrobber != 4) exitwith {};
bankrobber = 2;
_random = round(random(12000)) + 18000;
[format["Ukradles $%1, przez 5 minut służby porządkowe mają podgląd na Twoją pozycję", _random], false] call domsg;
[player,player,15,format ["%1 ukradł %2 $ z banku!", name player, _random],""] remoteExec ["server_fnc_actionLog", 2];
[_random] call Client_fnc_addCash;
closedialog 0;
player setvariable ["robber",true,true];
sleep 300;
player setvariable ["robber",nil,true];