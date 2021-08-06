@echo off
color a

echo Please enter a value for A0 (1 or 0)
set /p e0=
echo Please enter a value for A1 (1 or 0)
set /p e1=
echo Please enter a value for A2 (1 or 0)
set /p e2=
echo Please enter a value for A3 (1 or 0)
set /p e3=
echo Please enter a value for A4 (1 or 0)
set /p e4=
echo Please enter a value for A5 (1 or 0)
set /p e5=
echo Please enter a value for A6 (1 or 0)
set /p e6=
echo Please enter a value for A7 (1 or 0)
set /p e7=
echo Please enter a value for B0 (1 or 0)
set /p f0=
echo Please enter a value for B1 (1 or 0)
set /p f1=
echo Please enter a value for B2 (1 or 0)
set /p f2=
echo Please enter a value for B3 (1 or 0)
set /p f3=
echo Please enter a value for B4 (1 or 0)
set /p f4=
echo Please enter a value for B5 (1 or 0)
set /p f5=
echo Please enter a value for B6 (1 or 0)
set /p f6=
echo Please enter a value for B7 (1 or 0)
set /p f7=
echo Please enter a value for Cin (1 or 0)
set /p cin=
echo.
echo Current values:
echo A0=%e0% B0=%f0%
echo A1=%e1% B1=%f1%
echo A2=%e2% B2=%f2%
echo A3=%e3% B3=%f3%
echo A4=%e4% B4=%f4%
echo A5=%e5% B5=%f5%
echo A6=%e6% B6=%f6%
echo A7=%e7% B7=%f7%
echo Cin=%cin%

set /a g0=e0+f0
IF /I %g0% == 2 (set "coutA0=1") else (set "coutA0=0")
IF /I %g0% == 1 (set "sumA0=1") else (set "sumA0=0")
IF /I %sumA0% == 2 (set "coutB0=1") else (set "coutB0=0")
IF /I %cin% == 1 (set "sumB0=1") else (set "sumB0=0")
set /a coutAB0=coutA0+coutB0
if /I %coutAB0% >= 1 (set "coutC0=1") else (set "coutC0=0")

set /a g1=e1+f1
IF /I %g1% == 2 (set "coutA1=1") else (set "coutA1=0")
IF /I %g1% == 1 (set "sumA1=1") else (set "sumA1=0")
IF /I %sumA1% == 2 (set "coutB1=1") else (set "coutB1=0")
IF /I %coutC0% == 1 (set "sumB1=1") else (set "sumB1=0")
set /a coutAB1=coutA1+coutB1
if /I %coutAB1% >= 1 (set "coutC1=1") else (set "coutC1=0")

set /a g2=e2+f2
IF /I %g2% == 2 (set "coutA2=1") else (set "coutA2=0")
IF /I %g2% == 1 (set "sumA2=1") else (set "sumA2=0")
IF /I %sumA2% == 2 (set "coutB2=1") else (set "coutB2=0")
IF /I %coutC1% == 1 (set "sumB2=1") else (set "sumB2=0")
set /a coutAB2=coutA2+coutB2
if /I %coutAB2% >= 1 (set "coutC2=1") else (set "coutC2=0")

set /a g3=e3+f3
IF /I %g3% == 2 (set "coutA3=1") else (set "coutA3=0")
IF /I %g3% == 1 (set "sumA3=1") else (set "sumA3=0")
IF /I %sumA3% == 2 (set "coutB3=1") else (set "coutB3=0")
IF /I %coutC2% == 1 (set "sumB3=1") else (set "sumB3=0")
set /a coutAB3=coutA3+coutB3
if /I %coutAB3% >= 1 (set "coutC3=1") else (set "coutC3=0")

set /a g4=e4+f4
IF /I %g4% == 2 (set "coutA4=1") else (set "coutA4=0")
IF /I %g4% == 1 (set "sumA4=1") else (set "sumA4=0")
IF /I %sumA4% == 2 (set "coutB4=1") else (set "coutB4=0")
IF /I %coutC3% == 1 (set "sumB4=1") else (set "sumB4=0")
set /a coutAB4=coutA4+coutB4
if /I %coutAB4% >= 1 (set "coutC4=1") else (set "coutC4=0")

set /a g5=e5+f5
IF /I %g5% == 2 (set "coutA5=1") else (set "coutA5=0")
IF /I %g5% == 1 (set "sumA5=1") else (set "sumA5=0")
IF /I %sumA5% == 2 (set "coutB5=1") else (set "coutB5=0")
IF /I %coutC4% == 1 (set "sumB5=1") else (set "sumB5=0")
set /a coutAB5=coutA5+coutB5
if /I %coutAB5% >= 1 (set "coutC5=1") else (set "coutC5=0")

set /a g6=e6+f6
IF /I %g6% == 2 (set "coutA6=1") else (set "coutA6=0")
IF /I %g6% == 1 (set "sumA6=1") else (set "sumA6=0")
IF /I %sumA6% == 2 (set "coutB6=1") else (set "coutB6=0")
IF /I %coutC5% == 1 (set "sumB6=1") else (set "sumB6=0")
set /a coutAB6=coutA6+coutB6
if /I %coutAB6% >= 1 (set "coutC6=1") else (set "coutC6=0")

set /a g7=e7+f7
IF /I %g7% == 2 (set "coutA7=1") else (set "coutA7=0")
IF /I %g7% == 1 (set "sumA7=1") else (set "sumA7=0")
IF /I %sumA7% == 2 (set "coutB7=1") else (set "coutB7=0")
IF /I %coutC6% == 1 (set "sumB7=1") else (set "sumB7=0")
set /a coutAB7=coutA7+coutB7
if /I %coutAB7% >= 1 (set "coutC7=1") else (set "coutC7=0")

echo.
echo Input:
echo A0=%e0% B0=%f0%
echo A1=%e1% B1=%f1%
echo A2=%e2% B2=%f2%
echo A3=%e3% B3=%f3%
echo A4=%e4% B4=%f4%
echo A5=%e5% B5=%f5%
echo A6=%e6% B6=%f6%
echo A7=%e7% B7=%f7%
echo Cin=%cin%
echo.
echo Output:
echo Sum0=%sumB0% Sum1=%sumB1%
echo Sum2=%sumB2% Sum3=%sumB3%
echo Sum4=%sumB4% Sum5=%sumB5%
echo Sum6=%sumB6% Sum7=%sumB7%
echo Cout=%coutC7%
pause
