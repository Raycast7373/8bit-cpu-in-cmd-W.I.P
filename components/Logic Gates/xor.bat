@echo off
echo enter value for a (1 or 0)
set /p a=
echo enter value for b (1 or 0)
set /p b=
set /a c=a+b
if /I c == 1 (set "z=1") else (set "z=0")
echo z=%z%
pause