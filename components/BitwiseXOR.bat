@echo off
color a
echo Please enter a value for A0 (1 or 0)
set /p h0=
echo Please enter a value for A1 (1 or 0)
set /p h1=
echo Please enter a value for A2 (1 or 0)
set /p h2=
echo Please enter a value for A3 (1 or 0)
set /p h3=
echo Please enter a value for A4 (1 or 0)
set /p h4=
echo Please enter a value for A5 (1 or 0)
set /p h5=
echo Please enter a value for A6 (1 or 0)
set /p h6=
echo Please enter a value for A7 (1 or 0)
set /p h7=
echo Please enter a value for EN (1 or 0)
set /p en=
echo.
echo Current values: 
echo A0=%h0% A1=%h1%
echo A2=%h2% A3=%h3%
echo A4=%h4% A5=%h5%
echo A6=%h6% A7=%h7%
echo EN=%en%
echo.
set /a aen0=h0+en
if /I %aen0% == 1 (set "zd0=1") else (set "zd0=0")
set /a aen1=h1+en
if /I %aen1% == 1 (set "zd1=1") else (set "zd1=0")
set /a aen2=h2+en
if /I %aen2% == 1 (set "zd2=1") else (set "zd2=0")
set /a aen3=h3+en
if /I %aen3% == 1 (set "zd3=1") else (set "zd3=0")
set /a aen4=h4+en
if /I %aen4% == 1 (set "zd4=1") else (set "zd4=0")
set /a aen5=h5+en
if /I %aen5% == 1 (set "zd5=1") else (set "zd5=0")
set /a aen6=h6+en
if /I %aen6% == 1 (set "zd6=1") else (set "zd6=0")
set /a aen7=h7+en
if /I %aen7% == 1 (set "zd7=1") else (set "zd7=0")
echo Input:
echo A0=%h0% A1=%h1%
echo A2=%h2% A3=%h3%
echo A4=%h4% A5=%h5%
echo A6=%h6% A7=%h7%
echo EN=%en%
echo.
echo Output:
echo ZD0=%zd0%
echo ZD1=%zd1%
echo ZD2=%zd2%
echo ZD3=%zd3%
echo ZD4=%zd4%
echo ZD5=%zd5%
echo ZD6=%zd6%
echo ZD7=%zd7%
echo.
pause