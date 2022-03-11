@echo off
echo enter value for A (1 or 0)
set /p A=
echo enter value for B (1 or 0)
set /p B=
call :XNOR %A% %B% Z
echo Z= %Z%
pause
exit
:XNOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 1 (set "Z=0") else (set "Z=1")
set X=set %Y%=%Z%
endlocal & %X%