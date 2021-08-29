@echo off
color a
echo enter value for A7 (0 or 1)
set /p a7=
echo enter value for A6 (0 or 1)
set /p a6=
echo enter value for A5 (0 or 1)
set /p a5=
echo enter value for A4 (0 or 1)
set /p a4=
echo enter value for A3 (0 or 1)
set /p a3=
echo enter value for A2 (0 or 1)
set /p a2=
echo enter value for A1 (0 or 1)
set /p a1=
echo enter value for A0 (0 or 1)
set /p a0=
echo.
echo enter value for DECODE (0 or 1)
set /p DECODE=
echo enter value for EXECUTE (0 or 1)
set /p EXECUTE=
echo.


set /a lateraddedobject=DECODE+EXECUTE
if not %lateraddedobject% == 0 (set "DANEWORGATETHINGY=1") else (set "DANEWORGATETHINGY=0")


if %a2% == 1 (set "ia2=0") else (set "ia2=1")
if %a3% == 1 (set "ia3=0") else (set "ia3=1")
if %a4% == 1 (set "ia4=0") else (set "ia4=1")
if %a5% == 1 (set "ia5=0") else (set "ia5=1")
if %a6% == 1 (set "ia6=0") else (set "ia6=1")
if %a7% == 1 (set "ia7=0") else (set "ia7=1")


set /a i1=a7+ia6
if %i1% == 2 (set "io1=1") else (set "io1=0")
set /a i2=a5+ia4
if %i2% == 2 (set "io2=1") else (set "io2=0")
set /a i3=io1+io2
if %i3% == 2 (set "INPUT0=1") else (set "INPUT0=0")


set /a i4=a7+a6
if %i4% == 2 (set "io3=1") else (set "io3=0")
set /a i5=a5+ia4
if %i5% == 2 (set "io4=1") else (set "io4=0")
set /a i6=io3+io4
if %i6% == 2 (set "OUTPUT0=1") else (set "OUTPUT0=0")


set /a i7=ia7+ia6
if %i7% == 2 (set "io5=1") else (set "io5=0")
set /a i8=ia5+ia4
if %i8% == 2 (set "io6=1") else (set "io6=0")
set /a i9=io5+io6
if %i9% == 2 (set "LOAD0=1") else (set "LOAD0=0")


set /a j1=ia7+a6
if %j1% == 2 (set "io7=1") else (set "io7=0")
set /a j2=ia5+ia4
if %j2% == 2 (set "io8=1") else (set "io8=0")
set /a j3=io7+io8
if %j3% == 2 (set "ADD0=1") else (set "ADD0=0")


set /a j4=a7+ia6
if %j4% == 2 (set "io9=1") else (set "io9=0")
set /a j5=ia5+ia4
if %j5% == 2 (set "ioa1=1") else (set "ioa1=0")
set /a j6=io9+ioa1
if %j6% == 2 (set "JUMP0=1") else (set "JUMP0=0")


set /a j7=a7+ia6
if %j7% == 2 (set "ioa2=1") else (set "ioa2=0")
set /a j8=ia5+a4
if %j8% == 2 (set "ioa3=1") else (set "ioa3=0")
set /a j9=ioa2+ioa3
if %j9% == 2 (set "JUMPcon0=1") else (set "JUMPcon0=0")


set /a ja1=ia7+a6
if %ja1% == 2 (set "ioa4=1") else (set "ioa4=0")
set /a ja2=a5+ia4
if %ja2% == 2 (set "ioa5=1") else (set "ioa5=0")
set /a ja3=ioa4+ioa5
if %ja3% == 2 (set "SUB0=1") else (set "SUB0=0")


set /a ja4=ia7+ia6
if %ja4% == 2 (set "ioa6=1") else (set "ioa6=0")
set /a ja5=ia5+a4
if %ja5% == 2 (set "ioa7=1") else (set "ioa7=0")
set /a ja6=ioa6+ioa7
if %ja6% == 2 (set "BITAND0=1") else (set "BITAND0=0")


set /a ja7=JUMPcon+ia3
if %ja7% == 2 (set "ioa8=1") else (set "ioa8=0")
set /a ja8= ioa8+ia2
if %ja8% == 2 (set "JUMPZ0=1") else (set "JUMPZ0=0")

set /a ja9=JUMPcon+ia3
if %ja9% == 2 (set "ioa9=1") else (set "ioa9=0")
set /a jaa1=ioa9+a2
if %jaa1% == 2 (set "JUMPNZ0=1") else (set "JUMPNZ0=0")


set /a jaa2=JUMPcon+a3
if %jaa2% == 2 (set "ioaa1=1") else (set "ioaa1=0")
set /a jaa3=ioaa1+ia2
if %jaa3% == 2 (set "JUMPC0=1") else (set "JUMPC0=0")


set /a jaa4=JUMPcon+a3
if %jaa4% == 2 (set "ioaa2=1") else (set "ioaa2=0")
set /a jaa5=ioaa2+a2
if %jaa5% == 2 (set "JUMPNC0=1") else (set "JUMPNC0=0")

set /a idk01=DANEWORGATETHINGY+ADD0
if %idk01% == 2 (set "ADD=1") else (set "ADD=0")
set /a idk02=DANEWORGATETHINGY+LOAD0
if %idk02% == 2 (set "LOAD=1") else (set "LOAD=0")
set /a idk03=DANEWORGATETHINGY+OUTPUT0
if %idk03% == 2 (set "OUTPUT=1") else (set "OUTPUT=0")
set /a idk04=DANEWORGATETHINGY+INPUT0
if %idk04% == 2 (set "INPUT=1") else (set "INPUT=0")
set /a idk05=DANEWORGATETHINGY+JUMPZ0
if %idk05% == 2 (set "JUMPZ=1") else (set "JUMPZ=0")
set /a idk06=DANEWORGATETHINGY+JUMP0
if %idk06% == 2 (set "JUMP=1") else (set "JUMP=0")
set /a idk07=DANEWORGATETHINGY+JUMPNZ0
if %idk07% == 2 (set "JUMPNZ=1") else (set "JUMPNZ=0")
set /a idk08=DANEWORGATETHINGY+JUMPC0
if %idk08% == 2 (set "JUMPC=1") else (set "JUMPC=0")
set /a idk09=DANEWORGATETHINGY+JUMPNC0
if %idk09% == 2 (set "JUMPNC=1") else (set "JUMPNC=0")
set /a idk10=DANEWORGATETHINGY+SUB0
if %idk10% == 2 (set "SUB=1") else (set "SUB=0")
set /a idk11=DANEWORGATETHINGY+BITAND0
if %idk11% == 2 (set "BITAND=1") else (set "BITAND=0")

echo Input:
echo A0:    %a0%     A1:     %a1%     A2:             %a2%
echo A3:    %a3%     A4:     %a4%     A5:             %a5%
echo A6:    %a6%     A7:     %a7%
echo EXECUTE:        %EXECUTE%        DECODE:         %DECODE%
echo.
echo INPUT: %INPUT%  OUTPUT: %OUTPUT% LOAD:           %LOAD%
echo ADD:   %ADD%    JUMP:   %JUMP%   JUMP_CONDITION: %JUMPcon%
echo SUB:   %SUB%    BITAND: %BITAND%
echo.
echo JUMPZ: %JUMPZ%  JUMPNZ: %JUMPNZ%
echo JUMPC: %JUMPC%  JUMPNC: %JUMPNC%
echo.
pause