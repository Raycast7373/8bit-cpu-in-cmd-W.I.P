:ALU
@echo off
color c
Set /a a0=%1 & Set /a a1=%2 & Set /a a2=%3 & Set /a a3=%4 & Set /a a4=%5 & Set /a a5=%6 & Set /a a6=%7 & Set /a a7=%8 & Set /a b0=%9
Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift
Set /a b1=%1 & Set /a b2=%2 & Set /a b3=%3 & Set /a b4=%4 & Set /a b5=%5 & Set /a b6=%6 & Set /a b7=%7 & Set /a s0=%8 & Set /a s1=%9
Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift
Set /a s2=%1 & Set /a s3=%2 & Set /a s4=%3 & Set /a Debug=%4 & Set /a test=%5 & Set /a log=%6

if %Debug% == 1 ( 
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
)

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

if %Debug% == 1 ( 
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
)
if /I %log% == 1 (
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
set X1=set z0=%z0%
set X2=set z1=%z1%
set X3=set z2=%z2%
set X4=set z3=%z3%
set X5=set z4=%z4%
set X6=set z5=%z5%
set X7=set z6=%z6%
set X8=set z7=%z7%
set X9=set cout=%cout%
goto end

:BUF
setlocal
set A=%1
set Y=%2
if /I %A% EQU 1 (set /a "Z=1") else (set /a "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:INV
setlocal
set A=%1
set Y=%2
if /I %A% EQU 0 (set /a "Z=1") else (set /a "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:AND
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 2 (set /a "Z=1") else (set /a "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:XOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 1 (set /a "Z=1") else (set /a "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:XNOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 1 (set /a "Z=0") else (set /a "Z=1")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:NOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 0 (set /a "Z=1") else (set /a "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:OR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 0 (set /a "Z=0") else (set /a "Z=1")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:NAND
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 2 (set /a "Z=0") else (set /a "Z=1")
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
set "COUT=0"
set "SUM=0"
) ELSE (
IF /I %in% EQU 1 (
set "COUT=0"
set "SUM=1"
) ELSE (
IF /I %in% EQU 2 (
set "COUT=1"
set "SUM=1"
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
set "COUT=0"
set "SUM=0"
) ELSE (
IF /I %in% EQU 1 (
set "COUT=0"
set "SUM=1"
) ELSE (
IF /I %in% EQU 2 (
set "COUT=1"
set "SUM=0"
) ELSE (
IF /I %in% EQU 3 (
set "COUT=1"
set "SUM=1"
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
if /I %X% EQU 1 (set /a "Z=1") else (set /a "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:REPLICATE
setlocal
set A=%1
set Y=%2
set Z=A
set X1=set %Y%=%Z%
set X2=set PREV%Y%=%Z%
endlocal & %X1% & %X2%
exit /B

:INVREPLICATE
setlocal
set A=%1
set Y=%2
if /I %A% EQU 0 (set /a "Z=1") else (set /a "Z=0")
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
if /I %X% EQU 2 (set /a "Z=1") else (set /a "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:end
%X1% & %X2% & %X3% & %X4% & %X5% & %X6% & %X7% & %X8% & %X9%  
exit /B