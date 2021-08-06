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
echo enter value for C0 (0 or 1)
set /p c0=
echo enter value for C1 (0 or 1)
set /p c1=
echo enter value for C2 (0 or 1)
set /p c2=
echo enter value for C3 (0 or 1)
set /p c3=
echo enter value for C4 (0 or 1)
set /p c4=
echo enter value for C5 (0 or 1)
set /p c5=
echo enter value for C6 (0 or 1)
set /p c6=
echo enter value for C7 (0 or 1)
set /p c7=
echo enter value for D0 (0 or 1)
set /p d0=
echo enter value for D1 (0 or 1)
set /p d1=
echo enter value for D2 (0 or 1)
set /p d2=
echo enter value for D3 (0 or 1)
set /p d3=
echo enter value for D4 (0 or 1)
set /p d4=
echo enter value for D5 (0 or 1)
set /p d5=
echo enter value for D6 (0 or 1)
set /p d6=
echo enter value for D7 (0 or 1)
set /p d7=
echo enter value for sel0 (0 or 1)
set /p sel0=
echo enter value for sel1 (0 or 1)
set /p sel1=

echo.
echo values now are: 
echo A0=%a0% B0=%b0% C0=%c0% D0=%d0%
echo A1=%a1% B0=%b1% C1=%c1% D1=%d1%
echo A2=%a2% B0=%b2% C2=%c2% D2=%d2%
echo A3=%a3% B0=%b3% C3=%c3% D3=%d3%
echo A4=%a4% B0=%b4% C4=%c4% D4=%d4%
echo A5=%a5% B0=%b5% C5=%c5% D5=%d5%
echo A6=%a6% B0=%b6% C6=%c6% D6=%d6%
echo A7=%a7% B0=%b7% C7=%c7% D7=%d7%
echo Sel0=%sel0% Sel1=%sel1%
echo.

echo inverter connected to sel for and1 > .nul

IF /I %sel0% == 1 (set /a "sel0inv=0") ELSE (set /a "sel0inv=1")
IF /I %sel1% == 1 (set /a "sel1inv=0") ELSE (set /a "sel1inv=1")

echo and 1 connected to A and inverted Sel > .nul
echo Mux AB > .nul

set /a AandA1=a0+sel0inv
IF /I %AandA1% == 2 (set /a "AoA1=1") ELSE (set /a "AoA1=0")
set /a BandA1=a1+sel0inv
IF /I %BandA1% == 2 (set /a "BoA1=1") ELSE (set /a "BoA1=0")
set /a CandA1=a2+sel0inv
IF /I %CandA1% == 2 (set /a "CoA1=1") ELSE (set /a "CoA1=0")
set /a DandA1=a3+sel0inv
IF /I %DandA1% == 2 (set /a "DoA1=1") ELSE (set /a "DoA1=0")
set /a EandA1=a4+sel0inv
IF /I %EandA1% == 2 (set /a "EoA1=1") ELSE (set /a "EoA1=0")
set /a FandA1=a5+sel0inv
IF /I %FandA1% == 2 (set /a "FoA1=1") ELSE (set /a "FoA1=0")
set /a GandA1=a6+sel0inv
IF /I %GandA1% == 2 (set /a "GoA1=1") ELSE (set /a "GoA1=0")
set /a HandA1=a7+sel0inv
IF /I %HandA1% == 2 (set /a "HoA1=1") ELSE (set /a "HoA1=0")

echo Mux CD > .nul

set /a AandB1=c0+sel0inv
IF /I %AandB1% == 2 (set /a "AoB1=1") ELSE (set /a "AoB1=0")
set /a BandB1=c1+sel0inv
IF /I %BandB1% == 2 (set /a "BoB1=1") ELSE (set /a "BoB1=0")
set /a CandB1=c2+sel0inv
IF /I %CandB1% == 2 (set /a "CoB1=1") ELSE (set /a "CoB1=0")
set /a DandB1=c3+sel0inv
IF /I %DandB1% == 2 (set /a "DoB1=1") ELSE (set /a "DoB1=0")
set /a EandB1=c4+sel0inv
IF /I %EandB1% == 2 (set /a "EoB1=1") ELSE (set /a "EoB1=0")
set /a FandB1=c5+sel0inv
IF /I %FandB1% == 2 (set /a "FoB1=1") ELSE (set /a "FoB1=0")
set /a GandB1=c6+sel0inv
IF /I %GandB1% == 2 (set /a "GoB1=1") ELSE (set /a "GoB1=0")
set /a HandB1=c7+sel0inv
IF /I %HandB1% == 2 (set /a "HoB1=1") ELSE (set /a "HoB1=0")

echo and2 connected to B and Sel > .nul
echo Mux AB > .nul

set /a AandA2=sel0+b0
IF /I %AandA2% == 2 (set /a "AoA2=1") ELSE (set /a "AoA2=0")
set /a BandA2=sel0+b1
IF /I %BandA2% == 2 (set /a "BoA2=1") ELSE (set /a "BoA2=0")
set /a CandA2=sel0+b2
IF /I %CandA2% == 2 (set /a "CoA2=1") ELSE (set /a "CoA2=0")
set /a DandA2=sel0+b3
IF /I %DandA2% == 2 (set /a "DoA2=1") ELSE (set /a "DoA2=0")
set /a EandA2=sel0+b4
IF /I %EandA2% == 2 (set /a "EoA2=1") ELSE (set /a "EoA2=0")
set /a FandA2=sel0+b5
IF /I %FandA2% == 2 (set /a "FoA2=1") ELSE (set /a "FoA2=0")
set /a GandA2=sel0+b6
IF /I %GandA2% == 2 (set /a "GoA2=1") ELSE (set /a "GoA2=0")
set /a HandA2=sel0+b7
IF /I %HandA2% == 2 (set /a "HoA2=1") ELSE (set /a "HoA2=0")

echo Mux CD > .nul

set /a AandB2=sel0+d0
IF /I %AandB2% == 2 (set /a "AoB2=1") ELSE (set /a "AoB2=0")
set /a BandB2=sel0+d1
IF /I %BandB2% == 2 (set /a "BoB2=1") ELSE (set /a "BoB2=0")
set /a CandB2=sel0+d2
IF /I %CandB2% == 2 (set /a "CoB2=1") ELSE (set /a "CoB2=0")
set /a DandB2=sel0+d3
IF /I %DandB2% == 2 (set /a "DoB2=1") ELSE (set /a "DoB2=0")
set /a EandB2=sel0+d4
IF /I %EandB2% == 2 (set /a "EoB2=1") ELSE (set /a "EoB2=0")
set /a FandB2=sel0+d5
IF /I %FandB2% == 2 (set /a "FoB2=1") ELSE (set /a "FoB2=0")
set /a GandB2=sel0+d6
IF /I %GandB2% == 2 (set /a "GoB2=1") ELSE (set /a "GoB2=0")
set /a HandB2=sel0+d7
IF /I %HandB2% == 2 (set /a "HoB2=1") ELSE (set /a "HoB2=0")

echo or1 connected to O1 and O2 > .nul
echo Mux AB > .nul

set /a AoA3=AoA1+AoA2
IF /I %AoA3% == 0 (set /a "za0=0") ELSE (set /a "za0=1")
set /a BoA3=BoA1+BoA2
IF /I %BoA3% == 0 (set /a "za1=0") ELSE (set /a "za1=1")
set /a CoA3=CoA1+CoA2
IF /I %CoA3% == 0 (set /a "za2=0") ELSE (set /a "za2=1")
set /a DoA3=DoA1+DoA2
IF /I %DoA3% == 0 (set /a "za3=0") ELSE (set /a "za3=1")
set /a EoA3=EoA1+EoA2
IF /I %EoA3% == 0 (set /a "za4=0") ELSE (set /a "za4=1")
set /a FoA3=FoA1+FoA2
IF /I %FoA3% == 0 (set /a "za5=0") ELSE (set /a "za5=1")
set /a GoA3=GoA1+GoA2
IF /I %GoA3% == 0 (set /a "za6=0") ELSE (set /a "za6=1")
set /a HoA3=HoA1+HoA2
IF /I %HoA3% == 0 (set /a "za7=0") ELSE (set /a "za7=1")

echo Mux CD > .nul

set /a AoB3=AoB1+AoB2
IF /I %AoB3% == 0 (set /a "zb0=0") ELSE (set /a "zb0=1")
set /a BoB3=BoB1+BoB2
IF /I %BoB3% == 0 (set /a "zb1=0") ELSE (set /a "zb1=1")
set /a CoB3=CoB1+CoB2
IF /I %CoB3% == 0 (set /a "zb2=0") ELSE (set /a "zb2=1")
set /a DoB3=DoB1+DoB2
IF /I %DoB3% == 0 (set /a "zb3=0") ELSE (set /a "zb3=1")
set /a EoB3=EoB1+EoB2
IF /I %EoB3% == 0 (set /a "zb4=0") ELSE (set /a "zb4=1")
set /a FoB3=FoB1+FoB2
IF /I %FoB3% == 0 (set /a "zb5=0") ELSE (set /a "zb5=1")
set /a GoB3=GoB1+GoB2
IF /I %GoB3% == 0 (set /a "zb6=0") ELSE (set /a "zb6=1")
set /a HoB3=HoB1+HoB2
IF /I %HoB3% == 0 (set /a "zb7=0") ELSE (set /a "zb7=1")

echo The last mux! > .nul

set /a AandC1=za0+sel1inv
IF /I %AandC1% == 2 (set /a "AoC1=1") ELSE (set /a "AoC1=0")
set /a BandC1=za1+sel1inv
IF /I %BandC1% == 2 (set /a "BoC1=1") ELSE (set /a "BoC1=0")
set /a CandC1=za2+sel1inv
IF /I %CandC1% == 2 (set /a "CoC1=1") ELSE (set /a "CoC1=0")
set /a DandC1=za3+sel1inv
IF /I %DandC1% == 2 (set /a "DoC1=1") ELSE (set /a "DoC1=0")
set /a EandC1=za4+sel1inv
IF /I %EandC1% == 2 (set /a "EoC1=1") ELSE (set /a "EoC1=0")
set /a FandC1=za5+sel1inv
IF /I %FandC1% == 2 (set /a "FoC1=1") ELSE (set /a "FoC1=0")
set /a GandC1=za6+sel1inv
IF /I %GandC1% == 2 (set /a "GoC1=1") ELSE (set /a "GoC1=0")
set /a HandC1=za7+sel1inv
IF /I %HandC1% == 2 (set /a "HoC1=1") ELSE (set /a "HoC1=0")

set /a AandC2=sel1+zb0
IF /I %AandC2% == 2 (set /a "AoC2=1") ELSE (set /a "AoC2=0")
set /a BandC2=sel1+zb1
IF /I %BandC2% == 2 (set /a "BoC2=1") ELSE (set /a "BoC2=0")
set /a CandC2=sel1+zb2
IF /I %CandC2% == 2 (set /a "CoC2=1") ELSE (set /a "CoC2=0")
set /a DandC2=sel1+zb3
IF /I %DandC2% == 2 (set /a "DoC2=1") ELSE (set /a "DoC2=0")
set /a EandC2=sel1+zb4
IF /I %EandC2% == 2 (set /a "EoC2=1") ELSE (set /a "EoC2=0")
set /a FandC2=sel1+zb5
IF /I %FandC2% == 2 (set /a "FoC2=1") ELSE (set /a "FoC2=0")
set /a GandC2=sel1+zb6
IF /I %GandC2% == 2 (set /a "GoC2=1") ELSE (set /a "GoC2=0")
set /a HandC2=sel1+zb7
IF /I %HandC2% == 2 (set /a "HoC2=1") ELSE (set /a "HoC2=0")

set /a AoC3=AoC1+AoC2
IF /I %AoC3% == 0 (set /a "zc0=0") ELSE (set /a "zc0=1")
set /a BoC3=BoC1+BoC2
IF /I %BoC3% == 0 (set /a "zc1=0") ELSE (set /a "zc1=1")
set /a CoC3=CoC1+CoC2
IF /I %CoC3% == 0 (set /a "zc2=0") ELSE (set /a "zc2=1")
set /a DoC3=DoC1+DoC2
IF /I %DoC3% == 0 (set /a "zc3=0") ELSE (set /a "zc3=1")
set /a EoC3=EoC1+EoC2
IF /I %EoC3% == 0 (set /a "zc4=0") ELSE (set /a "zc4=1")
set /a FoC3=FoC1+FoC2
IF /I %FoC3% == 0 (set /a "zc5=0") ELSE (set /a "zc5=1")
set /a GoC3=GoC1+GoC2
IF /I %GoC3% == 0 (set /a "zc6=0") ELSE (set /a "zc6=1")
set /a HoC3=HoC1+HoC2
IF /I %HoC3% == 0 (set /a "zc7=0") ELSE (set /a "zc7=1")


echo Output:
echo ZC0=%zc0%
echo ZC1=%zc1%
echo ZC2=%zc2%
echo ZC3=%zc3%
echo ZC4=%zc4%
echo ZC5=%zc5%
echo ZC6=%zc6%
echo ZC7=%zc7%
echo.
echo Outputs of other two mux:
echo ZA0=%za0% ZB0=%zb0%
echo ZA1=%za1% ZB1=%zb1%
echo ZA2=%za2% ZB2=%zb2%
echo ZA3=%za3% ZB3=%zb3%
echo ZA4=%za4% ZB4=%zb4%
echo ZA5=%za5% ZB5=%zb5%
echo ZA6=%za6% ZB6=%zb6%
echo ZA7=%za7% ZB7=%zb7%
echo.
echo Used values:
echo A0=%a0% B0=%b0% C0=%c0% D0=%d0%
echo A1=%a1% B0=%b1% C1=%c1% D1=%d1%
echo A2=%a2% B0=%b2% C2=%c2% D2=%d2%
echo A3=%a3% B0=%b3% C3=%c3% D3=%d3%
echo A4=%a4% B0=%b4% C4=%c4% D4=%d4%
echo A5=%a5% B0=%b5% C5=%c5% D5=%d5%
echo A6=%a6% B0=%b6% C6=%c6% D6=%d6%
echo A7=%a7% B0=%b7% C7=%c7% D7=%d7%
echo Sel0=%sel0% Sel1=%sel1%
del .nul
pause