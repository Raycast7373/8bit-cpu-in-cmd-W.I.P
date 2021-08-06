@echo off
color a

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

IF /I %sel% == 1 (set /a "selinv=0") ELSE (set /a "selinv=1")

echo and 1 connected to A and inverted Sel > .nul

set /a Aand1=a0+selinv
IF /I %Aand1% == 2 (set /a "Ao1=1") ELSE (set /a "Ao1=0")
set /a Band1=a1+selinv
IF /I %Band1% == 2 (set /a "Bo1=1") ELSE (set /a "Bo1=0")
set /a Cand1=a2+selinv
IF /I %Cand1% == 2 (set /a "Co1=1") ELSE (set /a "Co1=0")
set /a Dand1=a3+selinv
IF /I %Dand1% == 2 (set /a "Do1=1") ELSE (set /a "Do1=0")
set /a Eand1=a4+selinv
IF /I %Eand1% == 2 (set /a "Eo1=1") ELSE (set /a "Eo1=0")
set /a Fand1=a5+selinv
IF /I %Fand1% == 2 (set /a "Fo1=1") ELSE (set /a "Fo1=0")
set /a Gand1=a6+selinv
IF /I %Gand1% == 2 (set /a "Go1=1") ELSE (set /a "Go1=0")
set /a Hand1=a7+selinv
IF /I %Hand1% == 2 (set /a "Ho1=1") ELSE (set /a "Ho1=0")

echo and2 connected to B and Sel > .nul

set /a Aand2=sel+b0
IF /I %Aand2% == 2 (set /a "Ao2=1") ELSE (set /a "Ao2=0")
set /a Band2=sel+b1
IF /I %Band2% == 2 (set /a "Bo2=1") ELSE (set /a "Bo2=0")
set /a Cand2=sel+b2
IF /I %Cand2% == 2 (set /a "Co2=1") ELSE (set /a "Co2=0")
set /a Dand2=sel+b3
IF /I %Dand2% == 2 (set /a "Do2=1") ELSE (set /a "Do2=0")
set /a Eand2=sel+b4
IF /I %Eand2% == 2 (set /a "Eo2=1") ELSE (set /a "Eo2=0")
set /a Fand2=sel+b5
IF /I %Fand2% == 2 (set /a "Fo2=1") ELSE (set /a "Fo2=0")
set /a Gand2=sel+b6
IF /I %Gand2% == 2 (set /a "Go2=1") ELSE (set /a "Go2=0")
set /a Hand2=sel+b7
IF /I %Hand2% == 2 (set /a "Ho2=1") ELSE (set /a "Ho2=0")

echo or1 connected to O1 and O2 > .nul

set /a Ao3=Ao1+Ao2
IF /I %Ao3% == 0 (set /a "z0=0") ELSE (set /a "z0=1")
set /a Bo3=Bo1+Bo2
IF /I %Bo3% == 0 (set /a "z1=0") ELSE (set /a "z1=1")
set /a Co3=Co1+Co2
IF /I %Co3% == 0 (set /a "z2=0") ELSE (set /a "z2=1")
set /a Do3=Do1+Do2
IF /I %Do3% == 0 (set /a "z3=0") ELSE (set /a "z3=1")
set /a Eo3=Eo1+Eo2
IF /I %Eo3% == 0 (set /a "z4=0") ELSE (set /a "z4=1")
set /a Fo3=Fo1+Fo2
IF /I %Fo3% == 0 (set /a "z5=0") ELSE (set /a "z5=1")
set /a Go3=Go1+Go2
IF /I %Go3% == 0 (set /a "z6=0") ELSE (set /a "z6=1")
set /a Ho3=Ho1+Ho2
IF /I %Ho3% == 0 (set /a "z7=0") ELSE (set /a "z7=1")

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