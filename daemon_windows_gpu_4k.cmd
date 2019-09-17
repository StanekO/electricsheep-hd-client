@ECHO OFF
ECHO  #######################################
ECHO  ###    GPU 4K renderings requires   ###
ECHO  ### instaled http://fractorium.com/ ###
ECHO  #######################################
@ECHO ON
cd %~p0
title Electric Sheep GPU 4K daemon
call daemon_windows.cmd --gpu
