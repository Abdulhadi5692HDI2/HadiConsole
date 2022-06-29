:: This is the main batch class
@echo off
title Hadi Shell! - Mode 1
:: Console
cd src\cmds
:: probally the easiest way to make a prompt command line
:shell
set /p shell=
%shell%
goto :shell 
