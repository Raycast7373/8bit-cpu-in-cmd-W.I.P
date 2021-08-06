@echo off
color a

echo Please enter a value for A (1 or 0)
set /p e=
echo Please enter a value for B (1 or 0)
set /p f=
echo.

set /a g=e+f

IF /I %g% == 2 (set "cout=1") else (set "cout=0")
IF /I %g% == 1 (set "sum=1") else (set "sum=0")

echo Input:
echo A=%e% B=%f%
echo.
echo Output:
echo Cout=%cout% Sum=%sum%
pause