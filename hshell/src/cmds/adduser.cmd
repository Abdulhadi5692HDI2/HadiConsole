@echo off
cd ..
cd ..
mkdir users
cd users
mkdir %1%
cd %1%
echo Whats the name of the user?
set /p name=Name: 
echo Whats the New Password of the user?
set /p password=
echo %password% > .huser.password
echo %name% > userinfo.huser
echo DONE!
main_silent