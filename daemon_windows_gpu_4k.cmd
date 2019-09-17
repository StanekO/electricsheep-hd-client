@ECHO OFF
ECHO  #######################################
ECHO  ###    GPU 4K renderings requires   ###
ECHO  ### instaled http://fractorium.com/ ###
ECHO  #######################################
@ECHO ON
title Electric Sheep GPU 4K daemon
cd %~p0
set PATH=%SYSTEMROOT%\system32;%cd%\contrib\bin
ruby daemon %* --gpu || pause
