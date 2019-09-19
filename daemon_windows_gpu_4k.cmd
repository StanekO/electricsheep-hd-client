@ECHO OFF
ECHO  ###################################
ECHO  #    GPU 4K renderings requires   #
ECHO  # instaled http://fractorium.com/ #
ECHO  ###################################
@ECHO ON
title Electric Sheep GPU 4K daemon
REM TIMEOUT /T 600
CD /D %~dp0
REM SET PATH=%SYSTEMROOT%\system32;%CD%\contrib\bin
CALL daemon_windows.cmd --gpu --gpu-priority 1 --keep-frames /LOW || pause