@echo off
echo enter value for A (0 or 1)
set /p a=
echo enter value for B (0 or 1)
set /p b=
echo enter value for sel (0 or 1)
set /p sel=
echo.
echo values now are: a=%a% b=%b% sel=%sel%
echo.

echo inverter connected to sel for and1 > .nul
IF /I "%sel%" == "1" (set /a "selinv=0") ELSE (set /a "selinv=1")

echo and 1 connected to A and inverted Sel > .nul
set /a and1=a+selinv
IF /I "%and1%" == "2" (set /a "o1=1") ELSE (set /a "o1=0")

echo and 2 connected to B and Sel > .nul

set /a and2=sel+b
IF /I "%and2%" == "2" (set /a "o2=1") ELSE (set /a "o2=0")


echo or 1 connected to O1 and O2 > .nul
set /a o3=o1+o2
IF /I "%o3%" == "0" (set /a "z=0") ELSE (set /a "z=1")


echo Z=%z%

echo used values: a=%a% b=%b% sel=%sel%
del .nul
pause

