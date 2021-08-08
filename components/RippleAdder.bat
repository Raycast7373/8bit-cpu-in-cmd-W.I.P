@echo off
color a
echo Please enter a value for A7 (1 or 0)
set /p a7=
echo Please enter a value for A6 (1 or 0)
set /p a6=
echo Please enter a value for A5 (1 or 0)
set /p a5=
echo Please enter a value for A4 (1 or 0)
set /p a4=
echo Please enter a value for A3 (1 or 0)
set /p a3=
echo Please enter a value for A2 (1 or 0)
set /p a2=
echo Please enter a value for A1 (1 or 0)
set /p a1=
echo Please enter a value for A0 (1 or 0)
set /p a0=
echo Please enter a value for B7 (1 or 0)
set /p ba17=
echo Please enter a value for B6 (1 or 0)
set /p ba16=
echo Please enter a value for B5 (1 or 0)
set /p ba15=
echo Please enter a value for B4 (1 or 0)
set /p ba14=
echo Please enter a value for B3 (1 or 0)
set /p ba13=
echo Please enter a value for B2 (1 or 0)
set /p ba12=
echo Please enter a value for B1 (1 or 0)
set /p ba11=
echo Please enter a value for B0 (1 or 0)
set /p ba10=
echo Please enter a value for Cin (1 or 0)
set /p s2=
echo.
echo Input:
echo A0=%a0% B0=%ba10%
echo A1=%a1% B1=%ba11%
echo A2=%a2% B2=%ba12%
echo A3=%a3% B3=%ba13%
echo A4=%a4% B4=%ba14%
echo A5=%a5% B5=%ba15%
echo A6=%a6% B6=%ba16%
echo A7=%a7% B7=%ba17%
echo Cin=%s2%
echo.
set /a rain0=ba10+a0
set /a rain1=ba11+a1
set /a rain2=ba12+a2
set /a rain3=ba13+a3
set /a rain4=ba14+a4
set /a rain5=ba15+a5
set /a rain6=ba16+a6
set /a rain7=ba17+a7
set /a cin=%s2%
if /I %rain0% == 2 (set "andfa10=1") else (set "andfa10=0")
if /I %rain0% == 1 (set "xorfa10=1") else (set "xorfa10=0")
if /I %rain1% == 2 (set "andfa11=1") else (set "andfa11=0")
if /I %rain1% == 1 (set "xorfa11=1") else (set "xorfa11=0")
if /I %rain2% == 2 (set "andfa12=1") else (set "andfa12=0")
if /I %rain2% == 1 (set "xorfa12=1") else (set "xorfa12=0")
if /I %rain3% == 2 (set "andfa13=1") else (set "andfa13=0")
if /I %rain3% == 1 (set "xorfa13=1") else (set "xorfa13=0")
if /I %rain4% == 2 (set "andfa14=1") else (set "andfa14=0")
if /I %rain4% == 1 (set "xorfa14=1") else (set "xorfa14=0")
if /I %rain5% == 2 (set "andfa15=1") else (set "andfa15=0")
if /I %rain5% == 1 (set "xorfa15=1") else (set "xorfa15=0")
if /I %rain6% == 2 (set "andfa16=1") else (set "andfa16=0")
if /I %rain6% == 1 (set "xorfa16=1") else (set "xorfa16=0")
if /I %rain7% == 2 (set "andfa17=1") else (set "andfa17=0")
if /I %rain7% == 1 (set "xorfa17=1") else (set "xorfa17=0")
set /a racinxor=cin+xorfa10
if /I %racinxor% == 2 (set "andfa20=1") else (set "andfa20=0")
if /I %racinxor% == 1 (set "sum0=1") else (set "sum0=0")
set /a andp=andfa10+andfa20
if /I %andp% GEQ 1 (set "racin0=1") else (set "racin0=0")
set /a racinxor=racin0+xorfa11
if /I %racinxor% == 2 (set "andfa21=1") else (set "andfa21=0")
if /I %racinxor% == 1 (set "sum1=1") else (set "sum1=0")
set /a andp=andfa11+andfa21
if /I %andp% GEQ 1 (set "racin1=1") else (set "racin1=0")
set /a racinxor=racin1+xorfa12
if /I %racinxor% == 2 (set "andfa22=1") else (set "andfa22=0")
if /I %racinxor% == 1 (set "sum2=1") else (set "sum2=0")
set /a andp=andfa12+andfa22
if /I %andp% GEQ 1 (set "racin2=1") else (set "racin2=0")
set /a racinxor=racin2+xorfa13
if /I %racinxor% == 2 (set "andfa23=1") else (set "andfa23=0")
if /I %racinxor% == 1 (set "sum3=1") else (set "sum3=0")
set /a andp=andfa13+andfa23
if /I %andp% GEQ 1 (set "racin3=1") else (set "racin3=0")
set /a racinxor=racin3+xorfa14
if /I %racinxor% == 2 (set "andfa24=1") else (set "andfa24=0")
if /I %racinxor% == 1 (set "sum4=1") else (set "sum4=0")
set /a andp=andfa14+andfa24
if /I %andp% GEQ 1 (set "racin4=1") else (set "racin4=0")
set /a racinxor=racin4+xorfa15
if /I %racinxor% == 2 (set "andfa25=1") else (set "andfa25=0")
if /I %racinxor% == 1 (set "sum5=1") else (set "sum5=0")
set /a andp=andfa15+andfa25
if /I %andp% GEQ 1 (set "racin5=1") else (set "racin5=0")
set /a racinxor=racin5+xorfa16
if /I %racinxor% == 2 (set "andfa26=1") else (set "andfa26=0")
if /I %racinxor% == 1 (set "sum6=1") else (set "sum6=0")
set /a andp=andfa16+andfa26
if /I %andp% GEQ 1 (set "racin6=1") else (set "racin6=0")
set /a racinxor=racin6+xorfa17
if /I %racinxor% == 2 (set "andfa27=1") else (set "andfa27=0")
if /I %racinxor% == 1 (set "sum7=1") else (set "sum7=0")
set /a andp=andfa17+andfa27
if /I %andp% GEQ 1 (set "cout=1") else (set "cout=0")
echo.
echo Output:
echo Sum0=%sum0% Sum1=%sum1%
echo Sum2=%sum2% Sum3=%sum3%
echo Sum4=%sum4% Sum5=%sum5%
echo Sum6=%sum6% Sum7=%sum7%
echo Cout=%cout%
echo.
echo Bin output:
echo %sum7%%sum6%%sum5%%sum4%%sum3%%sum2%%sum1%%sum0%
echo.
pause