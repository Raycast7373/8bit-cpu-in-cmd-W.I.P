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

