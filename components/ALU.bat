@echo off
color a
echo enter value for A0 (0 or 1)
set /p a0=
echo enter value for A1 (0 or 1)
set /p a1=
echo enter value for A2 (0 or 1)
set /p a2=
echo enter value for A3 (0 or 1)
set /p a3=
echo enter value for A4 (0 or 1)
set /p a4=
echo enter value for A5 (0 or 1)
set /p a5=
echo enter value for A6 (0 or 1)
set /p a6=
echo enter value for A7 (0 or 1)
set /p a7=
echo.
echo enter value for B0 (0 or 1)
set /p b0=
echo enter value for B1 (0 or 1)
set /p b1=
echo enter value for B2 (0 or 1)
set /p b2=
echo enter value for B3 (0 or 1)
set /p b3=
echo enter value for B4 (0 or 1)
set /p b4=
echo enter value for B5 (0 or 1)
set /p b5=
echo enter value for B6 (0 or 1)
set /p b6=
echo enter value for B7 (0 or 1)
set /p b7=
echo.
echo enter value for S0 (0 or 1)
set /p s0=
echo enter value for S1 (0 or 1)
set /p s1=
echo enter value for S2 (0 or 1)
set /p s2=
echo enter value for S3 (0 or 1)
set /p s3=
echo enter value for S4 (0 or 1)
set /p s4=
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
echo inv and replicate > .nul
if /I %s4% == 1 (set "invs4=0") else (set "invs4=1")
set rep0=%invs4%
set rep1=%invs4%
set rep2=%invs4%
set rep3=%invs4%
set rep4=%invs4%
set rep5=%invs4%
set rep6=%invs4%
set rep7=%invs4%
pause
echo bitwise inv > .nul
set /a bs30=b0+s3
if /I %bs30% == 1 (set "binv0=1") else (set "binv0=0")
set /a bs31=b1+s3
if /I %bs31% == 1 (set "binv1=1") else (set "binv1=0")
set /a bs32=b2+s3
if /I %bs32% == 1 (set "binv2=1") else (set "binv2=0")
set /a bs33=b3+s3
if /I %bs33% == 1 (set "binv3=1") else (set "binv3=0")
set /a bs34=b4+s3
if /I %bs34% == 1 (set "binv4=1") else (set "binv4=0")
set /a bs35=b5+s3
if /I %bs35% == 1 (set "binv5=1") else (set "binv5=0")
set /a bs36=b6+s3
if /I %bs36% == 1 (set "binv6=1") else (set "binv6=0")
set /a bs37=b7+s3
if /I %bs37% == 1 (set "binv7=1") else (set "binv7=0")
echo bitwise and1 > .nul
set /a rbi0=rep0+binv0
if /I %rbi0% == 2 (set "ba10=1") else (set "ba10=0")
set /a rbi1=rep1+binv1
if /I %rbi1% == 2 (set "ba11=1") else (set "ba11=0")
set /a rbi2=rep2+binv2
if /I %rbi2% == 2 (set "ba12=1") else (set "ba12=0")
set /a rbi3=rep3+binv3
if /I %rbi3% == 2 (set "ba13=1") else (set "ba13=0")
set /a rbi4=rep4+binv4
if /I %rbi4% == 2 (set "ba14=1") else (set "ba14=0")
set /a rbi5=rep5+binv5
if /I %rbi5% == 2 (set "ba15=1") else (set "ba15=0")
set /a rbi6=rep6+binv6
if /I %rbi6% == 2 (set "ba16=1") else (set "ba16=0")
set /a rbi7=rep7+binv7
if /I %rbi7% == 2 (set "ba17=1") else (set "ba17=0")
echo ripple adder > .nul
set /a g0=a0+ba10
IF /I %g0% == 2 (set "coutA0=1") else (set "coutA0=0")
IF /I %g0% == 1 (set "sumA0=1") else (set "sumA0=0")
IF /I %sumA0% == 2 (set "coutB0=1") else (set "coutB0=0")
IF /I %s2% == 1 (set "sumB0=1") else (set "sumB0=0")
set /a coutAB0=coutA0+coutB0
if /I %coutAB0% GEQ 1 (set "coutC0=1") else (set "coutC0=0")
set /a g1=a1+ba11
IF /I %g1% == 2 (set "coutA1=1") else (set "coutA1=0")
IF /I %g1% == 1 (set "sumA1=1") else (set "sumA1=0")
IF /I %sumA1% == 2 (set "coutB1=1") else (set "coutB1=0")
IF /I %coutC0% == 1 (set "sumB1=1") else (set "sumB1=0")
set /a coutAB1=coutA1+coutB1
if /I %coutAB1% GEQ 1 (set "coutC1=1") else (set "coutC1=0")
set /a g2=a2+ba12
IF /I %g2% == 2 (set "coutA2=1") else (set "coutA2=0")
IF /I %g2% == 1 (set "sumA2=1") else (set "sumA2=0")
IF /I %sumA2% == 2 (set "coutB2=1") else (set "coutB2=0")
IF /I %coutC1% == 1 (set "sumB2=1") else (set "sumB2=0")
set /a coutAB2=coutA2+coutB2
if /I %coutAB2% GEQ 1 (set "coutC2=1") else (set "coutC2=0")
set /a g3=a3+ba13
IF /I %g3% == 2 (set "coutA3=1") else (set "coutA3=0")
IF /I %g3% == 1 (set "sumA3=1") else (set "sumA3=0")
IF /I %sumA3% == 2 (set "coutB3=1") else (set "coutB3=0")
IF /I %coutC2% == 1 (set "sumB3=1") else (set "sumB3=0")
set /a coutAB3=coutA3+coutB3
if /I %coutAB3% GEQ 1 (set "coutC3=1") else (set "coutC3=0")
set /a g4=a4+ba14
IF /I %g4% == 2 (set "coutA4=1") else (set "coutA4=0")
IF /I %g4% == 1 (set "sumA4=1") else (set "sumA4=0")
IF /I %sumA4% == 2 (set "coutB4=1") else (set "coutB4=0")
IF /I %coutC3% == 1 (set "sumB4=1") else (set "sumB4=0")
set /a coutAB4=coutA4+coutB4
if /I %coutAB4% GEQ 1 (set "coutC4=1") else (set "coutC4=0")
set /a g5=a5+ba15
IF /I %g5% == 2 (set "coutA5=1") else (set "coutA5=0")
IF /I %g5% == 1 (set "sumA5=1") else (set "sumA5=0")
IF /I %sumA5% == 2 (set "coutB5=1") else (set "coutB5=0")
IF /I %coutC4% == 1 (set "sumB5=1") else (set "sumB5=0")
set /a coutAB5=coutA5+coutB5
if /I %coutAB5% GEQ 1 (set "coutC5=1") else (set "coutC5=0")
set /a g6=a6+ba16
IF /I %g6% == 2 (set "coutA6=1") else (set "coutA6=0")
IF /I %g6% == 1 (set "sumA6=1") else (set "sumA6=0")
IF /I %sumA6% == 2 (set "coutB6=1") else (set "coutB6=0")
IF /I %coutC5% == 1 (set "sumB6=1") else (set "sumB6=0")
set /a coutAB6=coutA6+coutB6
if /I %coutAB6% GEQ 1 (set "coutC6=1") else (set "coutC6=0")
set /a g7=a7+ba17
IF /I %g7% == 2 (set "coutA7=1") else (set "coutA7=0")
IF /I %g7% == 1 (set "sumA7=1") else (set "sumA7=0")
IF /I %sumA7% == 2 (set "coutB7=1") else (set "coutB7=0")
IF /I %coutC6% == 1 (set "sumB7=1") else (set "sumB7=0")
set /a coutAB7=coutA7+coutB7
if /I %coutAB7% GEQ 1 (set "cout=1") else (set "cout=0")
echo bitwise and2 > .nul
set /a ab0=a0+b0
if /I %ab0% == 2 (set "ba20=1") else (set "ba20=0")
set /a ab1=a1+b1
if /I %ab1% == 2 (set "ba21=1") else (set "ba21=0")
set /a ab2=a2+b2
if /I %ab2% == 2 (set "ba22=1") else (set "ba22=0")
set /a ab3=a3+b3
if /I %ab3% == 2 (set "ba23=1") else (set "ba23=0")
set /a ab4=a4+b4
if /I %ab4% == 2 (set "ba24=1") else (set "ba24=0")
set /a ab5=a5+b5
if /I %ab5% == 2 (set "ba25=1") else (set "ba25=0")
set /a ab6=a6+b6
if /I %ab6% == 2 (set "ba26=1") else (set "ba26=0")
set /a ab7=a7+b7
if /I %ab7% == 2 (set "ba27=1") else (set "ba27=0")
echo mux > .nul
IF /I %s0% == 1 (set /a "s0inv=0") ELSE (set /a "s0inv=1")
IF /I %s1% == 1 (set /a "s1inv=0") ELSE (set /a "s1inv=1")
set /a AandA1=sumB0+s0inv
IF /I %AandA1% == 2 (set /a "AoA1=1") ELSE (set /a "AoA1=0")
set /a BandA1=sumB1+s0inv
IF /I %BandA1% == 2 (set /a "BoA1=1") ELSE (set /a "BoA1=0")
set /a CandA1=sumB2+s0inv
IF /I %CandA1% == 2 (set /a "CoA1=1") ELSE (set /a "CoA1=0")
set /a DandA1=sumB3+s0inv
IF /I %DandA1% == 2 (set /a "DoA1=1") ELSE (set /a "DoA1=0")
set /a EandA1=sumB4+s0inv
IF /I %EandA1% == 2 (set /a "EoA1=1") ELSE (set /a "EoA1=0")
set /a FandA1=sumB5+s0inv
IF /I %FandA1% == 2 (set /a "FoA1=1") ELSE (set /a "FoA1=0")
set /a GandA1=sumB6+s0inv
IF /I %GandA1% == 2 (set /a "GoA1=1") ELSE (set /a "GoA1=0")
set /a HandA1=sumB7+s0inv
IF /I %HandA1% == 2 (set /a "HoA1=1") ELSE (set /a "HoA1=0")
set /a AandB1=a0+s0inv
IF /I %AandB1% == 2 (set /a "AoB1=1") ELSE (set /a "AoB1=0")
set /a BandB1=a1+s0inv
IF /I %BandB1% == 2 (set /a "BoB1=1") ELSE (set /a "BoB1=0")
set /a CandB1=a2+s0inv
IF /I %CandB1% == 2 (set /a "CoB1=1") ELSE (set /a "CoB1=0")
set /a DandB1=a3+s0inv
IF /I %DandB1% == 2 (set /a "DoB1=1") ELSE (set /a "DoB1=0")
set /a EandB1=a4+s0inv
IF /I %EandB1% == 2 (set /a "EoB1=1") ELSE (set /a "EoB1=0")
set /a FandB1=a5+s0inv
IF /I %FandB1% == 2 (set /a "FoB1=1") ELSE (set /a "FoB1=0")
set /a GandB1=a6+s0inv
IF /I %GandB1% == 2 (set /a "GoB1=1") ELSE (set /a "GoB1=0")
set /a HandB1=a7+s0inv
IF /I %HandB1% == 2 (set /a "HoB1=1") ELSE (set /a "HoB1=0")
set /a AandA2=s0+ba20
IF /I %AandA2% == 2 (set /a "AoA2=1") ELSE (set /a "AoA2=0")
set /a BandA2=s0+ba21
IF /I %BandA2% == 2 (set /a "BoA2=1") ELSE (set /a "BoA2=0")
set /a CandA2=s0+ba22
IF /I %CandA2% == 2 (set /a "CoA2=1") ELSE (set /a "CoA2=0")
set /a DandA2=s0+ba23
IF /I %DandA2% == 2 (set /a "DoA2=1") ELSE (set /a "DoA2=0")
set /a EandA2=s0+ba24
IF /I %EandA2% == 2 (set /a "EoA2=1") ELSE (set /a "EoA2=0")
set /a FandA2=s0+ba25
IF /I %FandA2% == 2 (set /a "FoA2=1") ELSE (set /a "FoA2=0")
set /a GandA2=s0+ba26
IF /I %GandA2% == 2 (set /a "GoA2=1") ELSE (set /a "GoA2=0")
set /a HandA2=s0+ba27
IF /I %HandA2% == 2 (set /a "HoA2=1") ELSE (set /a "HoA2=0")
set /a AandB2=s0+b0
IF /I %AandB2% == 2 (set /a "AoB2=1") ELSE (set /a "AoB2=0")
set /a BandB2=s0+b1
IF /I %BandB2% == 2 (set /a "BoB2=1") ELSE (set /a "BoB2=0")
set /a CandB2=s0+b2
IF /I %CandB2% == 2 (set /a "CoB2=1") ELSE (set /a "CoB2=0")
set /a DandB2=s0+b3
IF /I %DandB2% == 2 (set /a "DoB2=1") ELSE (set /a "DoB2=0")
set /a EandB2=s0+b4
IF /I %EandB2% == 2 (set /a "EoB2=1") ELSE (set /a "EoB2=0")
set /a FandB2=s0+b5
IF /I %FandB2% == 2 (set /a "FoB2=1") ELSE (set /a "FoB2=0")
set /a GandB2=s0+b6
IF /I %GandB2% == 2 (set /a "GoB2=1") ELSE (set /a "GoB2=0")
set /a HandB2=s0+b7
IF /I %HandB2% == 2 (set /a "HoB2=1") ELSE (set /a "HoB2=0")
set /a AoA3=sumBoA1+AoA2
IF /I %AoA3% == 0 (set /a "za0=0") ELSE (set /a "za0=1")
set /a BoA3=BoA1+BoA2
IF /I %BoA3% == 0 (set /a "za1=0") ELSE (set /a "za1=1")
set /a CoA3=CoA1+CoA2
IF /I %CoA3% == 0 (set /a "za2=0") ELSE (set /a "za2=1")
set /a DoA3=DoA1+DoA2
IF /I %DoA3% == 0 (set /a "za3=0") ELSE (set /a "za3=1")
set /a EoA3=EoA1+EoA2
IF /I %EoA3% == 0 (set /a "za4=0") ELSE (set /a "za4=1")
set /a FoA3=FoA1+FoA2
IF /I %FoA3% == 0 (set /a "za5=0") ELSE (set /a "za5=1")
set /a GoA3=GoA1+GoA2
IF /I %GoA3% == 0 (set /a "za6=0") ELSE (set /a "za6=1")
set /a HoA3=HoA1+HoA2
IF /I %HoA3% == 0 (set /a "za7=0") ELSE (set /a "za7=1")
set /a AoB3=sumBoB1+AoB2
IF /I %AoB3% == 0 (set /a "zb0=0") ELSE (set /a "zb0=1")
set /a BoB3=BoB1+BoB2
IF /I %BoB3% == 0 (set /a "zb1=0") ELSE (set /a "zb1=1")
set /a CoB3=CoB1+CoB2
IF /I %CoB3% == 0 (set /a "zb2=0") ELSE (set /a "zb2=1")
set /a DoB3=DoB1+DoB2
IF /I %DoB3% == 0 (set /a "zb3=0") ELSE (set /a "zb3=1")
set /a EoB3=EoB1+EoB2
IF /I %EoB3% == 0 (set /a "zb4=0") ELSE (set /a "zb4=1")
set /a FoB3=FoB1+FoB2
IF /I %FoB3% == 0 (set /a "zb5=0") ELSE (set /a "zb5=1")
set /a GoB3=GoB1+GoB2
IF /I %GoB3% == 0 (set /a "zb6=0") ELSE (set /a "zb6=1")
set /a HoB3=HoB1+HoB2
IF /I %HoB3% == 0 (set /a "zb7=0") ELSE (set /a "zb7=1")
set /a AandC1=za0+s1inv
IF /I %AandC1% == 2 (set /a "AoC1=1") ELSE (set /a "AoC1=0")
set /a BandC1=za1+s1inv
IF /I %BandC1% == 2 (set /a "BoC1=1") ELSE (set /a "BoC1=0")
set /a CandC1=za2+s1inv
IF /I %CandC1% == 2 (set /a "CoC1=1") ELSE (set /a "CoC1=0")
set /a DandC1=za3+s1inv
IF /I %DandC1% == 2 (set /a "DoC1=1") ELSE (set /a "DoC1=0")
set /a EandC1=za4+s1inv
IF /I %EandC1% == 2 (set /a "EoC1=1") ELSE (set /a "EoC1=0")
set /a FandC1=za5+s1inv
IF /I %FandC1% == 2 (set /a "FoC1=1") ELSE (set /a "FoC1=0")
set /a GandC1=za6+s1inv
IF /I %GandC1% == 2 (set /a "GoC1=1") ELSE (set /a "GoC1=0")
set /a HandC1=za7+s1inv
IF /I %HandC1% == 2 (set /a "HoC1=1") ELSE (set /a "HoC1=0")
set /a AandC2=s1+zb0
IF /I %AandC2% == 2 (set /a "AoC2=1") ELSE (set /a "AoC2=0")
set /a BandC2=s1+zb1
IF /I %BandC2% == 2 (set /a "BoC2=1") ELSE (set /a "BoC2=0")
set /a CandC2=s1+zb2
IF /I %CandC2% == 2 (set /a "CoC2=1") ELSE (set /a "CoC2=0")
set /a DandC2=s1+zb3
IF /I %DandC2% == 2 (set /a "DoC2=1") ELSE (set /a "DoC2=0")
set /a EandC2=s1+zb4
IF /I %EandC2% == 2 (set /a "EoC2=1") ELSE (set /a "EoC2=0")
set /a FandC2=s1+zb5
IF /I %FandC2% == 2 (set /a "FoC2=1") ELSE (set /a "FoC2=0")
set /a GandC2=s1+zb6
IF /I %GandC2% == 2 (set /a "GoC2=1") ELSE (set /a "GoC2=0")
set /a HandC2=s1+zb7
IF /I %HandC2% == 2 (set /a "HoC2=1") ELSE (set /a "HoC2=0")
set /a AoC3=sumBoC1+AoC2
IF /I %AoC3% == 0 (set /a "z0=0") ELSE (set /a "z0=1")
set /a BoC3=BoC1+BoC2
IF /I %BoC3% == 0 (set /a "z1=0") ELSE (set /a "z1=1")
set /a CoC3=CoC1+CoC2
IF /I %CoC3% == 0 (set /a "z2=0") ELSE (set /a "z2=1")
set /a DoC3=DoC1+DoC2
IF /I %DoC3% == 0 (set /a "z3=0") ELSE (set /a "z3=1")
set /a EoC3=EoC1+EoC2
IF /I %EoC3% == 0 (set /a "z4=0") ELSE (set /a "z4=1")
set /a FoC3=FoC1+FoC2
IF /I %FoC3% == 0 (set /a "z5=0") ELSE (set /a "z5=1")
set /a GoC3=GoC1+GoC2
IF /I %GoC3% == 0 (set /a "z6=0") ELSE (set /a "z6=1")
set /a HoC3=HoC1+HoC2
IF /I %HoC3% == 0 (set /a "z7=0") ELSE (set /a "z7=1")
echo Input:
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
echo Output:
echo Z0=%z0% Z1=%z1% 
echo Z2=%z2% Z3=%z3% 
echo Z4=%z4% Z5=%z5% 
echo Z6=%z6% Z7=%z7% 
echo Cout=%cout%
del .nul
pause