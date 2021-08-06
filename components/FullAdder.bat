@echo off
color a

echo Please enter a value for A (1 or 0)
set /p e=
echo Please enter a value for B (1 or 0)
set /p f=
echo Please enter a value for Cin (1 or 0)
set /p cin=
echo Current values:
echo A=%e% B=%f% Cin=%cin%
echo.

set /a g=e+f

IF /I %g% == 2 (set "coutA=1") else (set "coutA=0")
IF /I %g% == 1 (set "sumA=1") else (set "sumA=0")

IF /I %sumA% == 2 (set "coutB=1") else (set "coutB=0")
IF /I %cin% == 1 (set "sumB=1") else (set "sumB=0")

set /a coutAB=coutA+coutB
if /I %coutAB% >= 1 (set "coutC=1") else (set "coutC=0")

echo Input:
echo A=%e% B=%f% Cin=%cin%
echo.
echo Output:
echo Cout=%coutC% Sum=%sumB%
pause