@echo off
echo enter value for A0 (0 or 1)
set /p a0=
echo enter value for A1 (0 or 1)
set /p a1=
echo enter value for A2 (0 or 1)
set /p a2=
echo enter value for A3 (0 or 1)
set /p a3=
echo enter value for A4 (0 or 1)
set /p a4=
echo enter value for A5 (0 or 1)
set /p a5=
echo enter value for A6 (0 or 1)
set /p a6=
echo enter value for A7 (0 or 1)
set /p a7=
echo enter value for B0 (0 or 1)
set /p b0=
echo enter value for B1 (0 or 1)
set /p b1=
echo enter value for B2 (0 or 1)
set /p b2=
echo enter value for B3 (0 or 1)
set /p b3=
echo enter value for B4 (0 or 1)
set /p b4=
echo enter value for B5 (0 or 1)
set /p b5=
echo enter value for B6 (0 or 1)
set /p b6=
echo enter value for B7 (0 or 1)
set /p b7=
echo enter value for sel (0 or 1)
set /p sel=
echo.
echo values now are: 
echo A0=%a0% B0=%b0%
echo A1=%a1% B0=%b1%
echo A2=%a2% B0=%b2%
echo A3=%a3% B0=%b3%
echo A4=%a4% B0=%b4%
echo A5=%a5% B0=%b5%
echo A6=%a6% B0=%b6%
echo A7=%a7% B0=%b7%
echo Sel=%sel%
echo.

echo inverter connected to sel for and1 > .nul

IF /I "%sel%" == "1" (set /a "selinv=0") ELSE (set /a "selinv=1")


echo and 1 connected to A and inverted Sel > .nul

set /a 0and1=a0+selinv
IF /I "%0and1%" == "2" (set /a "0o1=1") ELSE (set /a "0o1=0")
set /a 1and1=a1+selinv
IF /I "%1and1%" == "2" (set /a "1o1=1") ELSE (set /a "1o1=0")
set /a 2and1=a2+selinv
IF /I "%2and1%" == "2" (set /a "2o1=1") ELSE (set /a "2o1=0")
set /a 3and1=a3+selinv
IF /I "%3and1%" == "2" (set /a "3o1=1") ELSE (set /a "3o1=0")
set /a 4and1=a4+selinv
IF /I "%4and1%" == "2" (set /a "4o1=1") ELSE (set /a "4o1=0")
set /a 5and1=a5+selinv
IF /I "%5and1%" == "2" (set /a "5o1=1") ELSE (set /a "5o1=0")
set /a 6and1=a6+selinv
IF /I "%6and1%" == "2" (set /a "6o1=1") ELSE (set /a "6o1=0")
set /a 7and1=a7+selinv
IF /I "%7and1%" == "2" (set /a "7o1=1") ELSE (set /a "7o1=0")

echo and2 connected to B and Sel > .nul

set /a 0and2=sel+b0
IF /I "%0and2%" == "2" (set /a "0o2=1") ELSE (set /a "0o2=0")
set /a 1and2=sel+b1
IF /I "%1and2%" == "2" (set /a "1o2=1") ELSE (set /a "1o2=0")
set /a 2and2=sel+b2
IF /I "%2and2%" == "2" (set /a "2o2=1") ELSE (set /a "2o2=0")
set /a 3and2=sel+b3
IF /I "%3and2%" == "2" (set /a "3o2=1") ELSE (set /a "3o2=0")
set /a 4and2=sel+b4
IF /I "%4and2%" == "2" (set /a "4o2=1") ELSE (set /a "4o2=0")
set /a 5and2=sel+b5
IF /I "%5and2%" == "2" (set /a "5o2=1") ELSE (set /a "5o2=0")
set /a 6and2=sel+b6
IF /I "%6and2%" == "2" (set /a "6o2=1") ELSE (set /a "6o2=0")
set /a 7and2=sel+b7
IF /I "%7and2%" == "2" (set /a "7o2=1") ELSE (set /a "7o2=0")

echo or1 connected to O1 and O2 > .nul

set /a 0o3=0o1+0o2
IF /I "%0o3%" == "0" (set /a "z0=0") ELSE (set /a "z0=1")
set /a 1o3=1o1+1o2
IF /I "%1o3%" == "0" (set /a "z1=0") ELSE (set /a "z1=1")
set /a 2o3=2o1+2o2
IF /I "%2o3%" == "0" (set /a "z2=0") ELSE (set /a "z2=1")
set /a 3o3=3o1+3o2
IF /I "%3o3%" == "0" (set /a "z3=0") ELSE (set /a "z3=1")
set /a 4o3=4o1+4o2
IF /I "%4o3%" == "0" (set /a "z4=0") ELSE (set /a "z4=1")
set /a 5o3=5o1+5o2
IF /I "%5o3%" == "0" (set /a "z5=0") ELSE (set /a "z5=1")
set /a 6o3=6o1+6o2
IF /I "%6o3%" == "0" (set /a "z6=0") ELSE (set /a "z6=1")
set /a 7o3=7o1+7o2
IF /I "%7o3%" == "0" (set /a "z7=0") ELSE (set /a "z7=1")

echo Z0=%z0% Z1=%z1% 
echo Z2=%z2% Z3=%z3% 
echo Z4=%z4% Z5=%z5% 
echo Z6=%z6% Z7=%z7% 

echo used values:
echo A0=%a0% B0=%b0%
echo A0=%a1% B0=%b1%
echo A0=%a2% B0=%b2%
echo A0=%a3% B0=%b3%
echo A0=%a4% B0=%b4%
echo A0=%a5% B0=%b5%
echo A0=%a6% B0=%b6%
echo A0=%a7% B0=%b7%
echo Sel=%sel%
del .nul
pause