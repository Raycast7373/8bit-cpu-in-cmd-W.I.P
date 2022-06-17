:ALU
@echo off
setlocal
color c
Set /a a0=%1 & Set /a a1=%2 & Set /a a2=%3 & Set /a a3=%4 & Set /a a4=%5 & Set /a a5=%6 & Set /a a6=%7 & Set /a a7=%8 & Set /a b0=%9
Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift
Set /a b1=%1 & Set /a b2=%2 & Set /a b3=%3 & Set /a b4=%4 & Set /a b5=%5 & Set /a b6=%6 & Set /a b7=%7 & Set /a s0=%8 & Set /a s1=%9
Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift
Set /a s2=%1 & Set /a s3=%2 & Set /a s4=%3 & Set /a Debug=%4 & Set /a test=%5 & Set /a log=%6

if /I %Debug% EQU 1 ( 
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

if /I %Debug% EQU 1 ( 
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
if /I %log% EQU 1 (
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

:AND4
setlocal
set A0=%1
set A1=%2
set A2=%3
set A3=%4
set Y=%5
set /a A=A0+A1+A2+A3
if /I %A% EQU 4 (set /a Z=1) Else (set /a Z=0) 
set X=set /a %Y%=%Z%
endlocal & %X%
exit /B

:AND3
setlocal
set A0=%1
set A1=%2
set A2=%3
set Y=%4
set /a A=A0+A1+A2
if /I %A% EQU 3 (set /a Z=1) Else (set /a Z=0) 
set X=set /a %Y%=%Z%
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
set Y1=%3
set Y2=%4
set /a in=A+B
IF /I %in% EQU 1 ( 
   set "COUT=0"
   set "SUM=1"
) ELSE ( IF /I %in% EQU 2 (
   set "COUT=1"
   set "SUM=0"
) ELSE (
   set "COUT=0"
   set "SUM=0"
))
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

:FDCE
setlocal
set CLR=%1
set CE=%2
set D=%3
set PREV=%4
set Y=%5
IF /I %CLR% EQU 1 (set /a Z=0) Else ( if /I %CE% EQU 1 (set /a Z=D) Else (set Z=PREV))
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:FDPE
setlocal
set PRE=%1
set CE=%2
set D=%3
set PREV=%4
set Y=%5
IF /I %PRE% EQU 1 (set /a Z=1) Else ( if /I %CE% EQU 0 (set /a Z=PREV) Else (set Z=D))
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:FDC
setlocal
set CLR=%1
set D=%2
set Y=%3
IF /I %CLR% EQU 1 (set /a Z=0) Else (set /a Z=D)
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:FDE
setlocal
set CE=%1
set D=%2
set PREV=%3
set Y=%4
IF /I %CE% EQU 1 (set /a Z=D) Else (set /a Z=PREV)
set X=set %Y%=%Z%
endlocal & %X%
exit /B

:REGISTER2
setlocal
set CLR=%1
set CE=%2
set D1=%3
set D2=%4
set PREV1=%5
set PREV2=%6
set Y1=%7
set Y2=%8
IF /I %CLR% EQU 1 (
   set /a Z1=0
   set /a Z2=0
) Else ( if /I %CE% EQU 1 (
   set /a Z1=D1
   set /a Z2=D2
   ) Else (
      set /a Z1=PREV1
      set /a Z2=PREV2
      ))
set X1=set %Y1%=%Z1%
set X2=set %Y2%=%Z2%
endlocal & %X1% & %X2%
exit /B

:REGISTER4
setlocal
set CLR=%1
set CE=%2
set D1=%3
set D2=%4
set D3=%5
set D4=%6
set PREV1=%7
set PREV2=%8
set PREV3=%9
for /l %%a in (1,1,9) do (shift)
set PREV4=%1
set Y1=%2
set Y2=%3
set Y3=%4
set Y4=%5
IF /I %CLR% EQU 1 (
   set /a Z1=0
   set /a Z2=0
   set /a Z3=0
   set /a Z4=0
) Else ( if /I %CE% EQU 1 (
   set /a Z1=D1
   set /a Z2=D2
   set /a Z3=D3
   set /a Z4=D4
   ) Else (
      set /a Z1=PREV1
      set /a Z2=PREV2
      set /a Z3=PREV3
      set /a Z4=PREV4
      ))
set X1=set %Y1%=%Z1%
set X2=set %Y2%=%Z2%
set X3=set %Y3%=%Z3%
set X4=set %Y4%=%Z4%
endlocal & %X1% & %X2% & %X3% & %X4%
exit /B

:REGISTER8
setlocal
set CLR=%1
set CE=%2
set D1=%3
set D2=%4
set D3=%5
set D4=%6
set D5=%7
set D6=%8
set D7=%9
for /l %%a in (1,1,9) do (shift)
set D8=%1
set PREV1=%2
set PREV2=%3
set PREV3=%4
set PREV4=%5
set PREV5=%6
set PREV6=%7
set PREV7=%8
set PREV8=%9
for /l %%a in (1,1,9) do (shift)
set Y1=%1
set Y2=%2
set Y3=%3
set Y4=%4
set Y5=%5
set Y6=%6
set Y7=%7
set Y8=%8
IF /I %CLR% EQU 1 (
   set /a Z1=0
   set /a Z2=0
   set /a Z3=0
   set /a Z4=0
   set /a Z5=0
   set /a Z6=0
   set /a Z7=0
   set /a Z8=0
) Else ( if /I %CE% EQU 1 (
   set /a Z1=D1
   set /a Z2=D2
   set /a Z3=D3
   set /a Z4=D4
   set /a Z5=D5
   set /a Z6=D6
   set /a Z7=D7
   set /a Z8=D8
   ) Else (
      set /a Z1=PREV1
      set /a Z2=PREV2
      set /a Z3=PREV3
      set /a Z4=PREV4
      set /a Z5=PREV5
      set /a Z6=PREV6
      set /a Z7=PREV7
      set /a Z8=PREV8
      ))
set X1=set %Y1%=%Z1%
set X2=set %Y2%=%Z2%
set X3=set %Y3%=%Z3%
set X4=set %Y4%=%Z4%
set X5=set %Y5%=%Z5%
set X6=set %Y6%=%Z6%
set X7=set %Y7%=%Z7%
set X8=set %Y8%=%Z8%
endlocal & %X1% & %X2% & %X3% & %X4% & %X5% & %X6% & %X7% & %X8%
exit /B

:REGISTER16
setlocal
set CLR=%1
set CE=%2
set D1=%3
set D2=%4
set D3=%5
set D4=%6
set D5=%7
set D6=%8
set D7=%9
for /l %%a in (1,1,9) do (shift)
set D8=%1
set D9=%2
set D10=%3
set D11=%4
set D12=%5
set D13=%6
set D14=%7
set D15=%8
set D16=%9
for /l %%a in (1,1,9) do (shift)
set PREV1=%1
set PREV2=%2
set PREV3=%3
set PREV4=%4
set PREV5=%5
set PREV6=%6
set PREV7=%7
set PREV8=%8
set PREV9=%9
for /l %%a in (1,1,9) do (shift)
set PREV10=%1
set PREV11=%2
set PREV12=%3
set PREV13=%4
set PREV14=%5
set PREV15=%6
set PREV16=%7
set Y1=%8
set Y2=%9
for /l %%a in (1,1,9) do (shift)
set Y3=%1
set Y4=%2
set Y5=%3
set Y6=%4
set Y7=%5
set Y8=%6
set Y9=%7
set Y10=%8
set Y11=%9
for /l %%a in (1,1,9) do (shift)
set Y12=%1
set Y13=%2
set Y14=%3
set Y15=%4
set Y16=%5
IF /I %CLR% EQU 1 (
   set /a Z1=0
   set /a Z2=0
   set /a Z3=0
   set /a Z4=0
   set /a Z5=0
   set /a Z6=0
   set /a Z7=0
   set /a Z8=0
   set /a Z9=0
   set /a Z10=0
   set /a Z11=0
   set /a Z12=0
   set /a Z13=0
   set /a Z14=0
   set /a Z15=0
   set /a Z16=0
) Else ( if /I %CE% EQU 1 (
   set /a Z1=D1
   set /a Z2=D2
   set /a Z3=D3
   set /a Z4=D4
   set /a Z5=D5
   set /a Z6=D6
   set /a Z7=D7
   set /a Z8=D8
   set /a Z9=D9
   set /a Z10=D10
   set /a Z11=D11
   set /a Z12=D12
   set /a Z13=D13
   set /a Z14=D14
   set /a Z15=D15
   set /a Z16=D16
   ) Else (
      set /a Z1=PREV1
      set /a Z2=PREV2
      set /a Z3=PREV3
      set /a Z4=PREV4
      set /a Z5=PREV5
      set /a Z6=PREV6
      set /a Z7=PREV7
      set /a Z8=PREV8
      set /a Z9=PREV9
      set /a Z10=PREV10
      set /a Z11=PREV11
      set /a Z12=PREV12
      set /a Z13=PREV13
      set /a Z14=PREV14
      set /a Z15=PREV15
      set /a Z16=PREV16
      ))
set X1=set %Y1%=%Z1%
set X2=set %Y2%=%Z2%
set X3=set %Y3%=%Z3%
set X4=set %Y4%=%Z4%
set X5=set %Y5%=%Z5%
set X6=set %Y6%=%Z6%
set X7=set %Y7%=%Z7%
set X8=set %Y8%=%Z8%
set X9=set %Y9%=%Z9%
set X10=set %Y10%=%Z10%
set X11=set %Y11%=%Z11%
set X12=set %Y12%=%Z12%
set X13=set %Y13%=%Z13%
set X14=set %Y14%=%Z14%
set X15=set %Y15%=%Z15%
set X16=set %Y16%=%Z16%
endlocal & %X1% & %X2% & %X3% & %X4% & %X5% & %X6% & %X7% & %X8% & %X9% & %X10% & %X11% & %X12% & %X13% & %X14% & %X15% & %X16%
exit /B

:INSTRUCTIONDECODER
setlocal
set /a a2=%1
set /a a3=%2
set /a a4=%3
set /a a5=%4
set /a a6=%5
set /a a7=%6
set /a DECODE=%7
set /a EXECUTE=%8
set /a ORSWITCH=DECODE+EXECUTE
if not %ORSWITCH% EQU 0 (set "ORSWITCHID=1") else (set "ORSWITCHID=0")
call :INV %a2% ai2
call :INV %a3% ai3
call :INV %a4% ai4
call :INV %a5% ai5
call :INV %a6% ai6
call :INV %a7% ai7
call :AND4 %a7% %ai6% %a5% %ai4% INPUT0
call :AND4 %a7% %a6% %a5% %ai4% OUTPUT0
call :AND4 %ai7% %ai6% %ai5% %ai4% LOAD0
call :AND4 %ai7% %a6% %ai5% %ai4% ADD0
call :AND4 %a7% %ai6% %ai5% %ai4% JUMP0
call :AND4 %a7% %ai6% %ai5% %a4% JUMPCONDITION
call :AND4 %ai7% %a6% %a5% %ai4% SUB0
call :AND4 %ai7% %ai6% %ai5% %a4% BITAND0
rem if /I %JUMPCONDITION% EQU 1 (
call :AND3 %JUMPCONDITION% %ai3% %ai2% JUMPZ0
call :AND3 %JUMPCONDITION% %ai3% %a2% JUMPNZ0
call :AND3 %JUMPCONDITION% %a3% %ai2% JUMPC0
call :AND3 %JUMPCONDITION% %a3% %a2% JUMPNC0
rem )
call :AND %ORSWITCHID% %INPUT0% INPUT
call :AND %ORSWITCHID% %OUTPUT0% OUTPUT
call :AND %ORSWITCHID% %LOAD0% LOAD
call :AND %ORSWITCHID% %ADD0% ADD
call :AND %ORSWITCHID% %JUMP0% JUMP
call :AND %ORSWITCHID% %SUB0% SUB
call :AND %ORSWITCHID% %BITAND0% BITAND
call :AND %ORSWITCHID% %JUMPZ0% JUMPZ
call :AND %ORSWITCHID% %JUMPNZ0% JUMPNZ
call :AND %ORSWITCHID% %JUMPC0% JUMPC
call :AND %ORSWITCHID% %JUMPNC0% JUMPNC
set X1=set INPUT=%INPUT%
set X2=set OUTPUT=%OUTPUT%
set X3=set LOAD=%LOAD%
set X4=set ADD=%ADD%
set X5=set JUMP=%JUMP%
set X6=set SUB=%SUB%
set X7=set BITAND=%BITAND%
set X8=set JUMPZ=%JUMPZ%
set X9=set JUMPNZ=%JUMPNZ%
set X10=set JUMPC=%JUMPC%
set X11=set JUMPNC=%JUMPNC%
endlocal & %X1% & %X2% & %X3% & %X4% & %X5% & %X6% & %X7% & %X8% & %X9% & %X10% & %X11%
exit /B

:STATUSREGISTER
setlocal
set /a ADD=%1
set /a SUB=%2
set /a BITAND=%3
set /a Carry=%4
set /a Zero=%5
set /a CLK=%6
set /a CLR=%7
set /a PREV1=%8
set /a PREV2=%9
set /a OR3=ADD+SUB+BITAND
if /I %OR3% EQU 1 (set /a ENST=1) else (set /a ENST=0)
for /l %%a in (1,1,9) do (shift)
set Y1=%1
set Y2=%2
IF /I %CLR% EQU 1 (
   set /a Z1=0
   set /a Z2=0
) Else ( IF /I %ENST% EQU 1 (
   set /a Z1=Carry
   set /a Z2=Zero
   ) Else (
      set /a Z1=PREV1
      set /a Z2=PREV2
      ))
set X1=set %Y1%=%Z1%
set X2=set %Y2%=%Z2%
endlocal & %X1% & %X2%
exit /B

:end
endlocal & %X1% & %X2% & %X3% & %X4% & %X5% & %X6% & %X7% & %X8% & %X9%  
exit /B