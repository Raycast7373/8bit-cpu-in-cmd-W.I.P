@echo off
color a
echo Please enter a value for A0 (1 or 0)
set /p j0=
echo Please enter a value for A1 (1 or 0)
set /p j1=
echo Please enter a value for A2 (1 or 0)
set /p j2=
echo Please enter a value for A3 (1 or 0)
set /p j3=
echo Please enter a value for A4 (1 or 0)
set /p j4=
echo Please enter a value for A5 (1 or 0)
set /p j5=
echo Please enter a value for A6 (1 or 0)
set /p j6=
echo Please enter a value for A7 (1 or 0)
set /p j7=
echo Please enter a value for B0 (0 or 1)
set /p k0=
echo Please enter a value for B1 (0 or 1)
set /p k1=
echo Please enter a value for B2 (0 or 1)
set /p k2=
echo Please enter a value for B3 (0 or 1)
set /p k3=
echo Please enter a value for B4 (0 or 1)
set /p k4=
echo Please enter a value for B5 (0 or 1)
set /p k5=
echo Please enter a value for B6 (0 or 1)
set /p k6=
echo Please enter a value for B7 (0 or 1)
set /p k7=
echo.
echo Current values: 
echo A0=%j0% B0=%k0%
echo A1=%j1% B1=%k1%
echo A2=%j2% B2=%k2%
echo A3=%j3% B3=%k3%
echo A4=%j4% B4=%k4%
echo A5=%j5% B5=%k5%
echo A6=%j6% B6=%k6%
echo A7=%j7% B7=%k7%
echo.
set /a jk0=j0+k0
if /I %jk0% == 2 (set "zf0=1") else (set "zf0=0")
set /a jk1=j1+k1
if /I %jk1% == 2 (set "zf1=1") else (set "zf1=0")
set /a jk2=j2+k2
if /I %jk2% == 2 (set "zf2=1") else (set "zf2=0")
set /a jk3=j3+k3
if /I %jk3% == 2 (set "zf3=1") else (set "zf3=0")
set /a jk4=j4+k4
if /I %jk4% == 2 (set "zf4=1") else (set "zf4=0")
set /a jk5=j5+k5
if /I %jk5% == 2 (set "zf5=1") else (set "zf5=0")
set /a jk6=j6+k6
if /I %jk6% == 2 (set "zf6=1") else (set "zf6=0")
set /a jk7=j7+k7
if /I %jk7% == 2 (set "zf7=1") else (set "zf7=0")
echo.
echo Input:
echo A0=%j0% B0=%k0%
echo A1=%j1% B1=%k1%
echo A2=%j2% B2=%k2%
echo A3=%j3% B3=%k3%
echo A4=%j4% B4=%k4%
echo A5=%j5% B5=%k5%
echo A6=%j6% B6=%k6%
echo A7=%j7% B7=%k7%
echo.
echo Output:
echo ZF0=%zf0%
echo ZF1=%zf1%
echo ZF2=%zf2%
echo ZF3=%zf3%
echo ZF4=%zf4%
echo ZF5=%zf5%
echo ZF6=%zf6%
echo ZF7=%zf7%
echo.
pause