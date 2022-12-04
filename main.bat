@echo off
call tools\ntsexec "other.nt"
call tools\ntsexec "env\config.nt"
call tools\ntsexec "info\info.nt"
path %_TOOLS_PATH%
title %_C_TITLE%
color 1F
echo HadiConsole v%major%.%minor%.%patch%
echo API Version: v%API[major]%.%API[minor]%.%API[patch]%
echo use noarg and arg to switch between argument or noarg modes.
:prompt1
set /p promp=^>
if %promp%==exit echo Shutdown command proccessor. Press any key to exit. . . && pause>nul && exit
if %promp%==noarg goto :prompt2
if %promp%==APi echo Did you mean 'api'? goto :prompt1
if %promp%==api echo %API% && goto :prompt1 
if %promp%==api-ver echo %API[major]%.%API[minor]%.%API[patch]% && goto :prompt1
if %promp%==new goto :prompt1
set /p arg=arg1^>
set /p arg2=arg2^>
call tools\hcmdp "cmds\%promp%" %arg% %arg2%
title %_C_TITLE%
goto :prompt1

:error
echo '%promp%' is not a valid command.
goto :prompt1

:error2
echo '%promp%' is not a valid command.
goto :prompt2

:prompt2
color 1F
set /p promp=^>
if %promp%==exit echo Shutdown command proccessor. Press any key to exit. . . && pause>nul && exit
if %promp%==APi echo Did you mean 'api'? goto :prompt2
if %promp%==api echo %API% && goto :prompt2
if %promp%==api-ver echo %API[major]%.%API[minor]%.%API[patch]% && goto :prompt2
if %promp%==arg goto :prompt1
call tools\hcmdp "cmds\%promp%"
title %_C_TITLE%
goto :prompt2