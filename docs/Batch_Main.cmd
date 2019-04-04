@echo off
echo.
echo Start-Skript für alle auf diesem liegenden Server
pause

// Mittelteil mit Auswahlmenu
:Auswahlmenu
cls
echo.
echo Auswahlmenu
echo ==========
echo.
echo [1]ArmA 2: Nightstalker
ping -n 1 localhost>nul
echo.
echo [2]ArmA 2: Coop
ping -n 1 localhost>nul
echo.
echo [3]ArmA 2:Stalker
ping -n 1 localhost>nul
echo.
echo [4]ArmA 2: DayZ Coop
ping -n 1 localhost>nul
echo.
echo [5]ArmA 3 Server
ping -n 1 localhost>nul
echo.
echo [6]Auswahl 6
ping -n 1 localhost>nul
echo.
echo Um das Skript zu beenden: ende
echo.
set asw=0
set /p asw="Bitte ein Auswahl treffen: "

if %asw%==1 goto Server1
if %asw%==2 goto Server2
if %asw%==3 goto Server3
if %asw%==4 goto Server4
if %asw%==5 goto Server5
if %asw%==6 goto Server6
if %asw%==ende goto END
goto END

// Ende des Skripts

:Server1
cls
echo.
echo Du hast den ersten Server gewählt!
C:\A2Server\arma2oaserver.exe -port=2302 -name=server -profiles=server -cfg=server\basic.cfg -config=server\server.cfg -mod=@NC;
echo.
pause
goto Auswahlmenu

:Server2
cls
echo.
echo Du hast den zweiten Server gewählt!
C:\A2Server\arma2oaserver.exe -port=2302 -name=server -profiles=server -cfg=server\basic.cfg -config=server\server.cfg -mod=@CBA;@CBA_A2;@CBA_OA;@ACE;
echo.
pause
goto Auswahlmenu

:Server3
cls
echo.
echo Du hast den dritten Server gewählt!
C:\A2Server\arma2oaserver.exe -port=2302 -name=server -profiles=server -cfg=server\basic.cfg -config=server\server.cfg -mod=@CBA;@CBA_A2;@CBA_OA;@ACE;@STALKER;
echo.
pause
goto Auswahlmenu

:Server4
cls
echo.
echo Du hast den vierten Server gewählt!
C:\A2DayzCoop\server.bat
echo.
pause
goto Auswahlmenu

:Server5
cls
echo.
echo Du hast den fünften Server gewählt!
C:\A3server\a3files\arma3server.exe -port=2302 -name=server -profiles=server -cfg=server\basic.cfg -config=server\server.cfg -world=empty
echo.
pause
goto END

:Server6
cls
echo.
echo Du hast den sechsten Server gewählt!
echo.
pause
goto Auswahlmenu

:END
echo.
echo Alle server heruntergefahren
pause
