@echo off
color a
pause
if exist values\debug (
    @echo on
) else (
    @echo off
)
if not exist values\ (
    mkdir values
)
cls
echo getting random numbers for test...
if /I %random% geq 16384 (set "a0=1") else (set "a0=0")
if /I %random% geq 16384 (set "a1=1") else (set "a1=0")
if /I %random% geq 16384 (set "a2=1") else (set "a2=0")
if /I %random% geq 16384 (set "a3=1") else (set "a3=0")
if /I %random% geq 16384 (set "a4=1") else (set "a4=0")
if /I %random% geq 16384 (set "a5=1") else (set "a5=0")
if /I %random% geq 16384 (set "a6=1") else (set "a6=0")
if /I %random% geq 16384 (set "a7=1") else (set "a7=0")
if /I %random% geq 16384 (set "b0=1") else (set "b0=0")
if /I %random% geq 16384 (set "b1=1") else (set "b1=0")
if /I %random% geq 16384 (set "b2=1") else (set "b2=0")
if /I %random% geq 16384 (set "b3=1") else (set "b3=0")
if /I %random% geq 16384 (set "b4=1") else (set "b4=0")
if /I %random% geq 16384 (set "b5=1") else (set "b5=0")
if /I %random% geq 16384 (set "b6=1") else (set "b6=0")
if /I %random% geq 16384 (set "b7=1") else (set "b7=0")
echo done!
echo.
echo starting ALU...
start ALU.bat
echo done!
echo.
echo enabling test mode for logs...
echo. > values\test
echo done!
echo.
echo current random values:
echo A0=%a0% B0=%b0%
echo A1=%a1% B1=%b1%
echo A2=%a2% B2=%b2%
echo A3=%a3% B3=%b3%
echo A4=%a4% B4=%b4%
echo A5=%a5% B5=%b5%
echo A6=%a6% B6=%b6%
echo A7=%a7% B7=%b7%
echo.
echo test 1 add 
if /I %a0% == 1 ( echo. > values\A0 )
if /I %a1% == 1 ( echo. > values\A1 )
if /I %a2% == 1 ( echo. > values\A2 )
if /I %a3% == 1 ( echo. > values\A3 )
if /I %a4% == 1 ( echo. > values\A4 )
if /I %a5% == 1 ( echo. > values\A5 )
if /I %a6% == 1 ( echo. > values\A6 )
if /I %a7% == 1 ( echo. > values\A7 )
if /I %b0% == 1 ( echo. > values\B0 )
if /I %b1% == 1 ( echo. > values\B1 )
if /I %b2% == 1 ( echo. > values\B2 )
if /I %b3% == 1 ( echo. > values\B3 )
if /I %b4% == 1 ( echo. > values\B4 )
if /I %b5% == 1 ( echo. > values\B5 )
if /I %b6% == 1 ( echo. > values\B6 )
if /I %b7% == 1 ( echo. > values\B7 )
echo. > values\ready
echo.

:l1
if exist values\done (
    del values\done
    goto nxt1
)
TIMEOUT /nobreak /T 1
goto l1

:nxt1
type testlog-1.txt
echo.
echo test 2 bitwise and (a and b)
if /I %a0% == 1 ( echo. > values\A0 )
if /I %a1% == 1 ( echo. > values\A1 )
if /I %a2% == 1 ( echo. > values\A2 )
if /I %a3% == 1 ( echo. > values\A3 )
if /I %a4% == 1 ( echo. > values\A4 )
if /I %a5% == 1 ( echo. > values\A5 )
if /I %a6% == 1 ( echo. > values\A6 )
if /I %a7% == 1 ( echo. > values\A7 )
if /I %b0% == 1 ( echo. > values\B0 )
if /I %b1% == 1 ( echo. > values\B1 )
if /I %b2% == 1 ( echo. > values\B2 )
if /I %b3% == 1 ( echo. > values\B3 )
if /I %b4% == 1 ( echo. > values\B4 )
if /I %b5% == 1 ( echo. > values\B5 )
if /I %b6% == 1 ( echo. > values\B6 )
if /I %b7% == 1 ( echo. > values\B7 )
echo. > values\S0
echo. > values\ready
echo.

:l2
if exist values\done (
    del values\done
    goto nxt2
)
TIMEOUT /nobreak /T 1
goto l2

:nxt2
type testlog-2.txt
echo.
echo test 3 input a
if /I %a0% == 1 ( echo. > values\A0 )
if /I %a1% == 1 ( echo. > values\A1 )
if /I %a2% == 1 ( echo. > values\A2 )
if /I %a3% == 1 ( echo. > values\A3 )
if /I %a4% == 1 ( echo. > values\A4 )
if /I %a5% == 1 ( echo. > values\A5 )
if /I %a6% == 1 ( echo. > values\A6 )
if /I %a7% == 1 ( echo. > values\A7 )
if /I %b0% == 1 ( echo. > values\B0 )
if /I %b1% == 1 ( echo. > values\B1 )
if /I %b2% == 1 ( echo. > values\B2 )
if /I %b3% == 1 ( echo. > values\B3 )
if /I %b4% == 1 ( echo. > values\B4 )
if /I %b5% == 1 ( echo. > values\B5 )
if /I %b6% == 1 ( echo. > values\B6 )
if /I %b7% == 1 ( echo. > values\B7 )
echo. > values\S1
echo. > values\ready
echo.

:l3
if exist values\done (
    del values\done
    goto nxt3
)
TIMEOUT /nobreak /T 1
goto l3

:nxt3
type testlog-3.txt
echo.
echo test 4 input b
if /I %a0% == 1 ( echo. > values\A0 )
if /I %a1% == 1 ( echo. > values\A1 )
if /I %a2% == 1 ( echo. > values\A2 )
if /I %a3% == 1 ( echo. > values\A3 )
if /I %a4% == 1 ( echo. > values\A4 )
if /I %a5% == 1 ( echo. > values\A5 )
if /I %a6% == 1 ( echo. > values\A6 )
if /I %a7% == 1 ( echo. > values\A7 )
if /I %b0% == 1 ( echo. > values\B0 )
if /I %b1% == 1 ( echo. > values\B1 )
if /I %b2% == 1 ( echo. > values\B2 )
if /I %b3% == 1 ( echo. > values\B3 )
if /I %b4% == 1 ( echo. > values\B4 )
if /I %b5% == 1 ( echo. > values\B5 )
if /I %b6% == 1 ( echo. > values\B6 )
if /I %b7% == 1 ( echo. > values\B7 )
echo. > values\S0
echo. > values\S1
echo. > values\ready
echo.

:l4
if exist values\done (
    del values\done
    goto nxt4
)
TIMEOUT /nobreak /T 1
goto l4
:nxt4
type testlog-4.txt
echo.
echo test 5 subtract (a-b)
if /I %a0% == 1 ( echo. > values\A0 )
if /I %a1% == 1 ( echo. > values\A1 )
if /I %a2% == 1 ( echo. > values\A2 )
if /I %a3% == 1 ( echo. > values\A3 )
if /I %a4% == 1 ( echo. > values\A4 )
if /I %a5% == 1 ( echo. > values\A5 )
if /I %a6% == 1 ( echo. > values\A6 )
if /I %a7% == 1 ( echo. > values\A7 )
if /I %b0% == 1 ( echo. > values\B0 )
if /I %b1% == 1 ( echo. > values\B1 )
if /I %b2% == 1 ( echo. > values\B2 )
if /I %b3% == 1 ( echo. > values\B3 )
if /I %b4% == 1 ( echo. > values\B4 )
if /I %b5% == 1 ( echo. > values\B5 )
if /I %b6% == 1 ( echo. > values\B6 )
if /I %b7% == 1 ( echo. > values\B7 )
echo. > values\S2
echo. > values\S3
echo. > values\ready
echo.

:l5
if exist values\done (
    del values\done
    goto nxt5
)
TIMEOUT /nobreak /T 1
goto l5

:nxt5
type testlog-5.txt
echo.
echo test 6 increment (a+1)
if /I %a0% == 1 ( echo. > values\A0 )
if /I %a1% == 1 ( echo. > values\A1 )
if /I %a2% == 1 ( echo. > values\A2 )
if /I %a3% == 1 ( echo. > values\A3 )
if /I %a4% == 1 ( echo. > values\A4 )
if /I %a5% == 1 ( echo. > values\A5 )
if /I %a6% == 1 ( echo. > values\A6 )
if /I %a7% == 1 ( echo. > values\A7 )
if /I %b0% == 1 ( echo. > values\B0 )
if /I %b1% == 1 ( echo. > values\B1 )
if /I %b2% == 1 ( echo. > values\B2 )
if /I %b3% == 1 ( echo. > values\B3 )
if /I %b4% == 1 ( echo. > values\B4 )
if /I %b5% == 1 ( echo. > values\B5 )
if /I %b6% == 1 ( echo. > values\B6 )
if /I %b7% == 1 ( echo. > values\B7 )
echo. > values\S2
echo. > values\S4
echo. > values\ready
echo.
:l6
if exist values\done (
    del values\done
    goto nxt6
)
TIMEOUT /nobreak /T 1
goto l6
:nxt6
type testlog-6.txt
echo.
echo test 7 input a
if /I %a0% == 1 ( echo. > values\A0 )
if /I %a1% == 1 ( echo. > values\A1 )
if /I %a2% == 1 ( echo. > values\A2 )
if /I %a3% == 1 ( echo. > values\A3 )
if /I %a4% == 1 ( echo. > values\A4 )
if /I %a5% == 1 ( echo. > values\A5 )
if /I %a6% == 1 ( echo. > values\A6 )
if /I %a7% == 1 ( echo. > values\A7 )
if /I %b0% == 1 ( echo. > values\B0 )
if /I %b1% == 1 ( echo. > values\B1 )
if /I %b2% == 1 ( echo. > values\B2 )
if /I %b3% == 1 ( echo. > values\B3 )
if /I %b4% == 1 ( echo. > values\B4 )
if /I %b5% == 1 ( echo. > values\B5 )
if /I %b6% == 1 ( echo. > values\B6 )
if /I %b7% == 1 ( echo. > values\B7 )
echo. > values\S4
echo. > values\ready
echo.

:l7
if exist values\done (
    del values\done
    goto nxt7
)
TIMEOUT /nobreak /T 1
goto l7

:nxt7
type testlog-7.txt
echo.
echo test 8 add (a+b)+1
if /I %a0% == 1 ( echo. > values\A0 )
if /I %a1% == 1 ( echo. > values\A1 )
if /I %a2% == 1 ( echo. > values\A2 )
if /I %a3% == 1 ( echo. > values\A3 )
if /I %a4% == 1 ( echo. > values\A4 )
if /I %a5% == 1 ( echo. > values\A5 )
if /I %a6% == 1 ( echo. > values\A6 )
if /I %a7% == 1 ( echo. > values\A7 )
if /I %b0% == 1 ( echo. > values\B0 )
if /I %b1% == 1 ( echo. > values\B1 )
if /I %b2% == 1 ( echo. > values\B2 )
if /I %b3% == 1 ( echo. > values\B3 )
if /I %b4% == 1 ( echo. > values\B4 )
if /I %b5% == 1 ( echo. > values\B5 )
if /I %b6% == 1 ( echo. > values\B6 )
if /I %b7% == 1 ( echo. > values\B7 )
echo. > values\S2
echo. > values\ready
echo.
:l8
if exist values\done (
    del values\done
    goto nxt8
)
TIMEOUT /nobreak /T 1
goto l8

:nxt8
type testlog-8.txt
echo.
echo test 9 subtract (a+b)-1
if /I %a0% == 1 ( echo. > values\A0 )
if /I %a1% == 1 ( echo. > values\A1 )
if /I %a2% == 1 ( echo. > values\A2 )
if /I %a3% == 1 ( echo. > values\A3 )
if /I %a4% == 1 ( echo. > values\A4 )
if /I %a5% == 1 ( echo. > values\A5 )
if /I %a6% == 1 ( echo. > values\A6 )
if /I %a7% == 1 ( echo. > values\A7 )
if /I %b0% == 1 ( echo. > values\B0 )
if /I %b1% == 1 ( echo. > values\B1 )
if /I %b2% == 1 ( echo. > values\B2 )
if /I %b3% == 1 ( echo. > values\B3 )
if /I %b4% == 1 ( echo. > values\B4 )
if /I %b5% == 1 ( echo. > values\B5 )
if /I %b6% == 1 ( echo. > values\B6 )
if /I %b7% == 1 ( echo. > values\B7 )
echo. > values\S3
echo. > values\ready
echo.
:l9
if exist values\done (
    del values\done
    goto nxt9
)
TIMEOUT /nobreak /T 1
goto l9

:nxt9
type testlog-9.txt
echo. > values\stop

echo saving log....
if not exist TestLogs\ (
    mkdir TestLogs
) else (
    del /f /q TestLogs\*
)
set name=latest
echo %time%  %date% >> TestLogs\Testlog-(%name%).txt
echo used random values: >> TestLogs\Testlog-(%name%).txt
echo A0=%a0% B0=%b0% >> TestLogs\Testlog-(%name%).txt
echo A1=%a1% B1=%b1% >> TestLogs\Testlog-(%name%).txt
echo A2=%a2% B2=%b2% >> TestLogs\Testlog-(%name%).txt
echo A3=%a3% B3=%b3% >> TestLogs\Testlog-(%name%).txt
echo A4=%a4% B4=%b4% >> TestLogs\Testlog-(%name%).txt
echo A5=%a5% B5=%b5% >> TestLogs\Testlog-(%name%).txt
echo A6=%a6% B6=%b6% >> TestLogs\Testlog-(%name%).txt
echo A7=%a7% B7=%b7% >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt
type testlog-1.txt >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt

type testlog-2.txt >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt

type testlog-3.txt >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt

type testlog-4.txt >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt

type testlog-5.txt >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt

type testlog-6.txt >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt

type testlog-7.txt >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt

type testlog-8.txt >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt

type testlog-9.txt >> TestLogs\Testlog-(%name%).txt
echo. >> TestLogs\Testlog-(%name%).txt
echo end of tests >> TestLogs\Testlog-(%name%).txt
echo done!
del testlog-1.txt
del testlog-2.txt
del testlog-3.txt
del testlog-4.txt
del testlog-5.txt
del testlog-6.txt
del testlog-7.txt
del testlog-8.txt
del testlog-9.txt
color e
pause