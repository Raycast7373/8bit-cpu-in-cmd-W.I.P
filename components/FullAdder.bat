@echo off
color a
echo Please enter a value for A (1 or 0)
set /p a=
echo Please enter a value for B (1 or 0)
set /p b=
echo Please enter a value for Cin (1 or 0)
set /p cin=
echo Current values:
echo A=%a% B=%b% Cin=%cin%
echo.
set /a c=a+b
IF /I %c% == 2 (set "coutA=1") else (set "coutA=0")
IF /I %c% == 1 (set "sumA1=1") else (set "sumA1=0")
set /a sumA2=sumA1+cin
IF /I %sumA2% == 2 (set "coutB=1") else (set "coutB=0")
IF /I %sumA2% == 1 (set "sumB=1") else (set "sumB=0")
set /a coutAB=coutA+coutB
if /I %coutAB% GEQ 1 (set "coutC=1") else (set "coutC=0")
echo Input:
echo A=%a% B=%b% Cin=%cin%
echo.
echo Output:
echo Cout=%coutC% Sum=%sumB%
pause