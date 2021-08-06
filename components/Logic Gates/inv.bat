@echo off
echo enter value for a (1 or 0)
set /p a=
if /I a == 1 (set "z=0") else (set "z=1")
echo z=%z%
pause