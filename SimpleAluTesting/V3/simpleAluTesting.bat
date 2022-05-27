@echo off
color a
pause


set Debug=0
set log=1

if %Debug% == 1 ( @echo on )

cls
@echo off
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

set test=1
set s0=0
set s1=0
set s2=0
set s3=0
set s4=0
call ALU.bat %a0% %a1% %a2% %a3% %a4% %a5% %a6% %a7% %b0% %b1% %b2% %b3% %b4% %b5% %b6% %b7% %s0% %s1% %s2% %s3% %s4% %Debug% %test% %log%
echo.

set test=2
set s0=1
set s1=0
set s2=0
set s3=0
set s4=0
call ALU.bat %a0% %a1% %a2% %a3% %a4% %a5% %a6% %a7% %b0% %b1% %b2% %b3% %b4% %b5% %b6% %b7% %s0% %s1% %s2% %s3% %s4% %Debug% %test% %log%
echo.

set test=3
set s0=0
set s1=1
set s2=0
set s3=0
set s4=0
call ALU.bat %a0% %a1% %a2% %a3% %a4% %a5% %a6% %a7% %b0% %b1% %b2% %b3% %b4% %b5% %b6% %b7% %s0% %s1% %s2% %s3% %s4% %Debug% %test% %log%
echo.

set test=4
set s0=1
set s1=1
set s2=0
set s3=0
set s4=0
call ALU.bat %a0% %a1% %a2% %a3% %a4% %a5% %a6% %a7% %b0% %b1% %b2% %b3% %b4% %b5% %b6% %b7% %s0% %s1% %s2% %s3% %s4% %Debug% %test% %log%
echo.

set test=5
set s0=0
set s1=0
set s2=1
set s3=1
set s4=0
call ALU.bat %a0% %a1% %a2% %a3% %a4% %a5% %a6% %a7% %b0% %b1% %b2% %b3% %b4% %b5% %b6% %b7% %s0% %s1% %s2% %s3% %s4% %Debug% %test% %log%
echo.

set test=6
set s0=0
set s1=0
set s2=1
set s3=0
set s4=1
call ALU.bat %a0% %a1% %a2% %a3% %a4% %a5% %a6% %a7% %b0% %b1% %b2% %b3% %b4% %b5% %b6% %b7% %s0% %s1% %s2% %s3% %s4% %Debug% %test% %log%
echo.

set test=7
set s0=0
set s1=0
set s2=0
set s3=0
set s4=1
call ALU.bat %a0% %a1% %a2% %a3% %a4% %a5% %a6% %a7% %b0% %b1% %b2% %b3% %b4% %b5% %b6% %b7% %s0% %s1% %s2% %s3% %s4% %Debug% %test% %log%
echo.

set test=8
set s0=0
set s1=0
set s2=1
set s3=0
set s4=0
call ALU.bat %a0% %a1% %a2% %a3% %a4% %a5% %a6% %a7% %b0% %b1% %b2% %b3% %b4% %b5% %b6% %b7% %s0% %s1% %s2% %s3% %s4% %Debug% %test% %log%
echo.

set test=9
set s0=0
set s1=0
set s2=0
set s3=1
set s4=0
call ALU.bat %a0% %a1% %a2% %a3% %a4% %a5% %a6% %a7% %b0% %b1% %b2% %b3% %b4% %b5% %b6% %b7% %s0% %s1% %s2% %s3% %s4% %Debug% %test% %log%
echo.

clr

echo test 1 add
type testlog-1.txt
echo.

echo test 2 bitwise and (a and b)
type testlog-2.txt
echo.

echo test 3 input a
type testlog-3.txt
echo.

echo test 4 input b
type testlog-4.txt
echo.

echo test 5 subtract (a-b)
type testlog-5.txt
echo.

echo test 6 increment (a+1)
type testlog-6.txt
echo.

echo test 7 input a
type testlog-7.txt
echo.

echo test 8 add (a+b)+1
type testlog-8.txt
echo.

echo test 9 subtract (a+b)-1
type testlog-9.txt


if /I %log% EQU 1 (
echo saving log....
if not exist TestLogs\ ( mkdir TestLogs ) else ( del /f /q TestLogs\* )

echo.
echo.
echo.
set name=latest
echo echo wut 2> nul >> TestLogs\Testlog-(%name%)
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
)

del testlog-1.txt
del testlog-2.txt
del testlog-3.txt
del testlog-4.txt
del testlog-5.txt
del testlog-6.txt
del testlog-7.txt
del testlog-8.txt
del testlog-9.txt
del TestLogs\Testlog-(latest
color e
pause