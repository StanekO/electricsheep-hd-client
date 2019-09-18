CD /D %~dp0
SET PATH=%SYSTEMROOT%\system32;%CD%\contrib\bin
SET RUNPLAY=ruby play %*
REM SET RUNDAEMON=daemon_windows.cmd /LOW
REM SET RUNDAEMON=daemon_windows.cmd --gpu --gpu-priority 1 --keep-frames /LOW || pause
SET RUNDAEMON=daemon_windows_gpu_4k.cmd /LOW

TASKLIST /FI "WINDOWTITLE EQ Electric Sheep *" | FIND /I "cmd.exe"
@ECHO OFF
IF "%errorlevel%"=="0" (
	ECHO ##########################################
	ECHO ### Daemon found, run only screansaver ###
	ECHO ##########################################
	GOTO ONLYSCREANSAVER
) ELSE (
	ECHO ####################################################
	ECHO ### Daemon not found, run daemon and screansaver ###
	ECHO ####################################################
	GOTO DAEMONANDSCREANSAVER
)

:ONLYSCREANSAVER
TASKLIST /FI "WINDOWTITLE EQ Electric_Sheep_Screansaver" | FIND /I "cmd.exe"
echo %errorlevel%
IF "%errorlevel%"=="0" (
	ECHO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	ECHO !!! Screansaver is runing !!!
	ECHO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	GOTO EOF
) ELSE (
	ECHO :::::::::::::::::::::::::::::
	ECHO ::: Starting screansaver  :::
	ECHO :::::::::::::::::::::::::::::
	GOTO ONLYSCREANSAVERRUN
)
:ONLYSCREANSAVERRUN
TITLE Electric Sheep Screansaver
CALL %RUNPLAY%
GOTO EOF

:DAEMONANDSCREANSAVER
START /min %RUNDAEMON%
TASKLIST /FI "WINDOWTITLE EQ Electric_Sheep_Screansaver" | FIND /I "cmd.exe"
IF "%errorlevel%"=="0" (
	ECHO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	ECHO !!! Screansaver is runing !!!
	ECHO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	GOTO EOF
) ELSE (
	ECHO :::::::::::::::::::::::::::::
	ECHO ::: Starting screansaver  :::
	ECHO :::::::::::::::::::::::::::::
	GOTO DAEMONANDSCREANSAVERRUN
)
TASKKILL /F /IM "cmd.exe" /FI "WINDOWTITLE EQ Electric Sheep *" /T
:DAEMONANDSCREANSAVERRUN
TITLE Electric_Sheep_Screansaver
CALL %RUNPLAY%
GOTO EOF

:EOF
@ECHO ON