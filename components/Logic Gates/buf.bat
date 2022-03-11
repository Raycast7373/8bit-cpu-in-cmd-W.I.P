@echo off
echo enter value for A (1 or 0)
set /p A=
call :BUF %A% Z
echo Z= %Z%
pause
exit
:BUF
setlocal
set A=%1
set Y=%2
if /I %A% EQU 1 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%