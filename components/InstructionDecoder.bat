@echo off
color a
echo enter value for A7 (0 or 1)
set /p a7=
echo enter value for A6 (0 or 1)
set /p a6=
echo enter value for A5 (0 or 1)
set /p a5=
echo enter value for A4 (0 or 1)
set /p a4=
echo enter value for A3 (0 or 1)
set /p a3=
echo enter value for A2 (0 or 1)
set /p a2=
echo.
echo enter value for DECODE (0 or 1)
set /p DECODE=
echo enter value for EXECUTE (0 or 1)
set /p EXECUTE=
echo.

set /a ORSWITCH=DECODE+EXECUTE
if not %ORSWITCH% EQU 0 (set "ORSWITCHID=1") else (set "ORSWITCHID=0")


call :INV %a2% ai2
call :INV %a3% ai3
call :INV %a4% ai4
call :INV %a5% ai5
call :INV %a6% ai6
call :INV %a7% ai7


call :AND4 %a7% %ai6% %a5% %ai4% INPUT0
call :AND4 %a7% %a6% %a5% %ai4% OUTPUT0
call :AND4 %ai7% %ai6% %ai5% %ai4% LOAD0
call :AND4 %ai7% %a6% %ai5% %ai4% ADD0
call :AND4 %a7% %ai6% %ai5% %ai4% JUMP0
call :AND4 %a7% %ai6% %ai5% %a4% JUMPCONDITION
call :AND4 %ai7% %a6% %a5% %ai4% SUB0
call :AND4 %ai7% %ai6% %ai5% %a4% BITAND0

rem if /I %JUMPCONDITION% EQU 1 (
call :AND3 %JUMPCONDITION% %ai3% %ai2% JUMPZ0
call :AND3 %JUMPCONDITION% %ai3% %a2% JUMPNZ0
call :AND3 %JUMPCONDITION% %a3% %ai2% JUMPC0
call :AND3 %JUMPCONDITION% %a3% %a2% JUMPNC0
rem )
call :AND %ORSWITCHID% %INPUT0% INPUT
call :AND %ORSWITCHID% %OUTPUT0% OUTPUT
call :AND %ORSWITCHID% %LOAD0% LOAD
call :AND %ORSWITCHID% %ADD0% ADD
call :AND %ORSWITCHID% %JUMP0% JUMP
call :AND %ORSWITCHID% %SUB0% SUB
call :AND %ORSWITCHID% %BITAND0% BITAND
call :AND %ORSWITCHID% %JUMPZ0% JUMPZ
call :AND %ORSWITCHID% %JUMPNZ0% JUMPNZ
call :AND %ORSWITCHID% %JUMPC0% JUMPC
call :AND %ORSWITCHID% %JUMPNC0% JUMPNC

goto END
:INV
setlocal
set A=%1
set Y=%2
if /I %A% EQU 1 (set /a Z=0) Else (set /a Z=1)
set X=set /a %Y%=%Z%
endlocal & %X%
exit /B

:AND4
setlocal
set A0=%1
set A1=%2
set A2=%3
set A3=%4
set Y=%5
set /a A=A0+A1+A2+A3
if /I %A% EQU 4 (set /a Z=1) Else (set /a Z=0) 
set X=set /a %Y%=%Z%
endlocal & %X%
exit /B

:AND3
setlocal
set A0=%1
set A1=%2
set A2=%3
set Y=%4
set /a A=A0+A1+A2
if /I %A% EQU 3 (set /a Z=1) Else (set /a Z=0) 
set X=set /a %Y%=%Z%
endlocal & %X%
exit /B

:AND
setlocal
set A0=%1
set A1=%2
set Y=%3
set /a A=A0+A1
if /I %A% EQU 2 (set /a Z=1) Else (set /a Z=0) 
set X=set /a %Y%=%Z%
endlocal & %X%
exit /B

:END
echo Input:
echo A2:             %a2%  A3:             %a3%     
echo A4:             %a4%  A5:             %a5%
echo A6:             %a6%  A7:             %a7%
echo EXECUTE:        %EXECUTE%        DECODE:         %DECODE%
echo.
echo INPUT: %INPUT%  OUTPUT: %OUTPUT% LOAD:           %LOAD%
echo ADD:   %ADD%    JUMP:   %JUMP%   JUMP_CONDITION: %JUMPCONDITION%
echo SUB:   %SUB%    BITAND: %BITAND%
echo.
echo JUMPZ: %JUMPZ%  JUMPNZ: %JUMPNZ%
echo JUMPC: %JUMPC%  JUMPNC: %JUMPNC%
echo.
pause