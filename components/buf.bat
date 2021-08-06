@echo off
echo enter value for a (1 or 0)
set /p a=
if /I a == 1 (set "z=1") else (set "z=0")
echo z=%z%
pause