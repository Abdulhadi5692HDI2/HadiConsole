@echo off
set def_ext=hcmd

:: checks
if exist %~1.%def_ext% goto :continue
:: 1. 19/11/2022 - this will never ever work.
:: if not exist %~1.%def_ext% goto :error

:: main program
:continue
copy %~1.%def_ext% temp\hcmdp.null.bat >nul
call temp\hcmdp.null.bat "%2" "%3"

