@echo off
color a
if exist values\debug (
    @echo on
) else (
    @echo off
)
if not exist values\ (
    mkdir values
)
set test=1
echo waiting...

@echo on
:isready
color b
if exist values\ready (
    del values\ready
    goto start
)
TIMEOUT /nobreak /T 1 > nul
color c
goto isready

:start
color a
if exist values\A0 (
    set a0=1
    del values\A0
) else (
    set a0=0
)
if exist values\A1 (
    set a1=1
    del values\A1
) else (
    set a1=0
)
if exist values\A2 (
    set a2=1
    del values\A2
) else (
    set a2=0
)
if exist values\A3 (
    set a3=1
    del values\A3
) else (
    set a3=0
)
if exist values\A4 (
    set a4=1
    del values\A4
) else (
    set a4=0
)
if exist values\A5 (
    set a5=1
    del values\A5
) else (
    set a5=0
)
if exist values\A6 (
    set a6=1
    del values\A6
) else (
    set a6=0
)
if exist values\A7 (
    set a7=1
    del values\A7
) else (
    set a7=0
)
if exist values\B0 (
    set b0=1
    del values\B0
) else (
    set b0=0
)
if exist values\B1 (
    set b1=1
    del values\B1
) else (
    set b1=0
)
if exist values\B2 (
    set b2=1
    del values\B2
) else (
    set b2=0
)
if exist values\B3 (
    set b3=1
    del values\B3
) else (
    set b3=0
)
if exist values\B4 (
    set b4=1
    del values\B4
) else (
    set b4=0
)
if exist values\B5 (
    set b5=1
    del values\B5
) else (
    set b5=0
)
if exist values\B6 (
    set b6=1
    del values\B6
) else (
    set b6=0
)
if exist values\B7 (
    set b7=1
    del values\B7
) else (
    set b7=0
)
if exist values\S0 (
    set s0=1
    del values\S0
) else (
    set s0=0
)
if exist values\S1 (
    set s1=1
    del values\S1
) else (
    set s1=0
)
if exist values\S2 (
    set s2=1
    del values\S2
) else (
    set s2=0
)
if exist values\S3 (
    set s3=1
    del values\S3
) else (
    set s3=0
)
if exist values\S4 (
    set s4=1
    del values\S4
) else (
    set s4=0
)
echo.
echo Current values:
echo A0=%a0% B0=%b0%
echo A1=%a1% B1=%b1%
echo A2=%a2% B2=%b2%
echo A3=%a3% B3=%b3%
echo A4=%a4% B4=%b4%
echo A5=%a5% B5=%b5%
echo A6=%a6% B6=%b6%
echo A7=%a7% B7=%b7%
echo.
echo S0=%s0% S1=%s1%
echo S2=%s2% S3=%s3%
echo S4=%s4%
echo.
echo Binary input:
echo Function:
echo %s0%%s1%%s2%%s3%%s4%%s5%
echo A:
echo %a0%%a1%%a2%%a3%%a4%%a5%%a6%%a7%
echo B:
echo %b0%%b1%%b2%%b3%%b4%%b5%%b6%%b7%
echo.


call :INV %s4% invs4
call :BUF %invs4% rep


call :BITWISEXOR %b0% %s3% RevBit0
call :BITWISEXOR %b1% %s3% RevBit1
call :BITWISEXOR %b2% %s3% RevBit2
call :BITWISEXOR %b3% %s3% RevBit3
call :BITWISEXOR %b4% %s3% RevBit4
call :BITWISEXOR %b5% %s3% RevBit5
call :BITWISEXOR %b6% %s3% RevBit6
call :BITWISEXOR %b7% %s3% RevBit7


call :BITWISEAND %rep% %RevBit0% BitAnd00
call :BITWISEAND %rep% %RevBit1% BitAnd01
call :BITWISEAND %rep% %RevBit2% BitAnd02
call :BITWISEAND %rep% %RevBit3% BitAnd03
call :BITWISEAND %rep% %RevBit4% BitAnd04
call :BITWISEAND %rep% %RevBit5% BitAnd05
call :BITWISEAND %rep% %RevBit6% BitAnd06
call :BITWISEAND %rep% %RevBit7% BitAnd07


call :FULLADDR %a0% %BitAnd00% %s2% Cout0 Sum0
call :FULLADDR %a1% %BitAnd01% %Cout0% Cout1 Sum1
call :FULLADDR %a2% %BitAnd02% %Cout1% Cout2 Sum2
call :FULLADDR %a3% %BitAnd03% %Cout2% Cout3 Sum3
call :FULLADDR %a4% %BitAnd04% %Cout3% Cout4 Sum4
call :FULLADDR %a5% %BitAnd05% %Cout4% Cout5 Sum5
call :FULLADDR %a6% %BitAnd06% %Cout5% Cout6 Sum6
call :FULLADDR %a7% %BitAnd07% %Cout6% cout Sum7
set /a cout=cout

call :BITWISEAND %a0% %b0% BitAnd10
call :BITWISEAND %a1% %b1% BitAnd11
call :BITWISEAND %a2% %b2% BitAnd12
call :BITWISEAND %a3% %b3% BitAnd13
call :BITWISEAND %a4% %b4% BitAnd14
call :BITWISEAND %a5% %b5% BitAnd15
call :BITWISEAND %a6% %b6% BitAnd16
call :BITWISEAND %a7% %b7% BitAnd17

call :MUX41 %Sum0% %BitAnd10% %a0% %b0% %s0% %s1% z0
call :MUX41 %Sum1% %BitAnd11% %a1% %b1% %s0% %s1% z1
call :MUX41 %Sum2% %BitAnd12% %a2% %b2% %s0% %s1% z2
call :MUX41 %Sum3% %BitAnd13% %a3% %b3% %s0% %s1% z3
call :MUX41 %Sum4% %BitAnd14% %a4% %b4% %s0% %s1% z4
call :MUX41 %Sum5% %BitAnd15% %a5% %b5% %s0% %s1% z5
call :MUX41 %Sum6% %BitAnd16% %a6% %b6% %s0% %s1% z6
call :MUX41 %Sum7% %BitAnd17% %a7% %b7% %s0% %s1% z7

echo Output:
echo Z0=%z0% Z1=%z1% 
echo Z2=%z2% Z3=%z3% 
echo Z4=%z4% Z5=%z5% 
echo Z6=%z6% Z7=%z7% 
echo.
echo Binary output:
echo %z7%%z6%%z5%%z4%%z3%%z2%%z1%%z0%
echo.
echo Binary output with cout:
echo %cout%%z7%%z6%%z5%%z4%%z3%%z2%%z1%%z0%
echo.
echo Cout=%cout%
echo.
if exist values\test (
    set /A test=test+1
    echo Test %test% Date=%date% Time=%time% >> testlog-%test%.txt
    echo Input: >> testlog-%test%.txt
    echo A0=%a0% B0=%b0% >> testlog-%test%.txt
    echo A1=%a1% B1=%b1% >> testlog-%test%.txt
    echo A2=%a2% B2=%b2% >> testlog-%test%.txt
    echo A3=%a3% B3=%b3% >> testlog-%test%.txt
    echo A4=%a4% B4=%b4% >> testlog-%test%.txt
    echo A5=%a5% B5=%b5% >> testlog-%test%.txt
    echo A6=%a6% B6=%b6% >> testlog-%test%.txt
    echo A7=%a7% B7=%b7% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo Binary input A: >> testlog-%test%.txt
    echo %a7%%a6%%a5%%a4%%a3%%a2%%a1%%a0% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo Binary input B: >> testlog-%test%.txt
    echo %b7%%b6%%b5%%b4%%b3%%b2%%b1%%b0% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo S0=%s0% S1=%s1% >> testlog-%test%.txt
    echo S2=%s2% S3=%s3% >> testlog-%test%.txt
    echo S4=%s4% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo Binary output: >> testlog-%test%.txt
    echo %z7%%z6%%z5%%z4%%z3%%z2%%z1%%z0% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo Binary output with cout: >> testlog-%test%.txt
    echo %cout%%z7%%z6%%z5%%z4%%z3%%z2%%z1%%z0% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
    echo Cout=%cout% >> testlog-%test%.txt
    echo. >> testlog-%test%.txt
)
echo . > values\done
goto loop



:loop
color d
echo waiting for new instruction...
echo.
if exist values\stop (
    del values\stop
    goto stop
)
if exist values\pause (
    del values\pause
    goto pause
)
if exist values\ready (
    goto isready
)
TIMEOUT /nobreak /T 1 > nul
color e
goto loop

:pause
pause
goto isready

:stop
if exist values\stop del values\stop
if exist values\pause del values\pause
if exist values\test del values\test
if exist values\newInstruction del values\newInstruction
if exist values\done del values\done
echo stopping...
exit



:BUF
setlocal
set A=%1
set Y=%2
if /I %A% EQU 1 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:INV
setlocal
set A=%1
set Y=%2
if /I %A% EQU 0 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:AND
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 2 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:XOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 1 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:XNOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 1 (set "Z=0") else (set "Z=1")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:NOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 0 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:OR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 0 (set "Z=0") else (set "Z=1")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:NAND
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 2 (set "Z=0") else (set "Z=1")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:MUX21
setlocal
set A=%1
set B=%2
set SEL=%3
set Y=%4
IF /I %SEL% EQU 0 (IF /I %A% EQU 0 (set /a "Z=0") ELSE (set /a "Z=1")) ELSE (IF /I %B% EQU 0 (set /a "Z=0") ELSE (set /a "Z=1"))
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:MUX41
setlocal
set A=%1
set B=%2
set C=%3
set D=%4
set sel0=%5
set sel1=%6
set Y=%7
if /I %sel0% EQU 0 (IF /I %sel1% EQU 0 (set /a "Z=A") ELSE (set /a "Z=C")) ELSE (IF /I %sel1% EQU 0 (set /a "Z=B") ELSE (set /a "Z=D"))
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:HALFADDR
setlocal
set A=%1
set B=%2
set Y1=%4
set Y2=%5
set /a in=A+B
IF /I %in% EQU 0 (
set /a "COUT=0"
set /a "SUM=0"
) ELSE (
IF /I %in% EQU 1 (
set /a "COUT=0"
set /a "SUM=1"
) ELSE (
IF /I %in% EQU 2 (
set /a "COUT=1"
set /a "SUM=1"
)))
set X1=set %Y1%=%COUT%
set X2=set %Y2%=%SUM%
endlocal & %X1% & %X2%
exit /B

:FULLADDR
setlocal
set A=%1
set B=%2
set CIN=%3
set Y1=%4
set Y2=%5
set /a in=A+B+CIN
IF /I %in% EQU 0 (
set /a "COUT=0"
set /a "SUM=0"
) ELSE (
IF /I %in% EQU 1 (
set /a "COUT=0"
set /a "SUM=1"
) ELSE (
IF /I %in% EQU 2 (
set /a "COUT=1"
set /a "SUM=0"
) ELSE (
IF /I %in% EQU 3 (
set /a "COUT=1"
set /a "SUM=1"
))))
set X1=set %Y1%=%COUT%
set X2=set %Y2%=%SUM%
endlocal & %X1% & %X2%
exit /B

:BITWISEXOR
setlocal
set A=%1
set EN=%2
set Y=%3
set /a X=A+EN
if /I %X% EQU 1 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:REPLICATE
setlocal
set A=%1
set Y=%2
set /a Z=A
set X1=set %Y%=%Z%
set X2=set PREV%Y%=%Z%
endlocal & %X1% & %X2%
exit /B

:INVREPLICATE
setlocal
set A=%1
set Y=%2
if /I %A% EQU 0 (set "Z=1") else (set "Z=0")
set X1=set %Y%=%Z%
set X2=set PREV%Y%=%Z%
endlocal & %X1% & %X2%
exit /B

:BITWISEAND
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 2 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B