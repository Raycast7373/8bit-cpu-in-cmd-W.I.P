:BUF
setlocal
set A=%1
set Y=%2
if /I %A% EQU 1 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%

:INV
setlocal
set A=%1
set Y=%2
if /I %A% EQU 0 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%

:AND
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 2 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%

:XOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 1 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%

:XNOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 1 (set "Z=0") else (set "Z=1")
set X=set %Y%=%Z%
endlocal & %X%

:NOR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 0 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%

:OR
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 0 (set "Z=0") else (set "Z=1")
set X=set %Y%=%Z%
endlocal & %X%

:NAND
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 2 (set "Z=0") else (set "Z=1")
set X=set %Y%=%Z%
endlocal & %X%

:MUX21
setlocal
set A=%1
set B=%2
set SEL=%3
set Y=%4
IF /I %SEL% EQU 0 (IF /I %A% EQU 0 (set /a "Z=0") ELSE (set /a "Z=1")) ELSE (IF /I %B% EQU 0 (set /a "Z=0") ELSE (set /a "Z=1"))
set X=set %Y%=%Z%
endlocal & %X%

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

:BITWISEXOR
setlocal
set A=%1
set EN=%2
set Y=%3
set /a X=A+EN
if /I %X% EQU 1 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%

:REPLICATE
setlocal
set A=%1
set Y=%2
set /a Z=A
set X1=set %Y%=%Z%
set X2=set PREV%Y%=%Z%
endlocal & %X1% & %X2%

:INVREPLICATE
setlocal
set A=%1
set Y=%2
if /I %A% EQU 0 (set "Z=1") else (set "Z=0")
set X1=set %Y%=%Z%
set X2=set PREV%Y%=%Z%
endlocal & %X1% & %X2%

:BITWISEAND
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 2 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%
