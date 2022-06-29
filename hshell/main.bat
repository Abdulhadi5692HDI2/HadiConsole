:: This is the main batch class
@echo off
title Hadi Shell!
:: Console
cd src\cmds
echo Welcome to Hadi Shell! Use adduser to add a user.
:: probally the easiest way to make a prompt command line
:shell
set /p shell=
%shell%
goto :shell 
