@echo off
set def_ext=nt
:: checks
if exist %~1 goto :continue

:continue
copy %~1 temp\ntsexec.null.bat >nul
call temp\ntsexec.null.bat