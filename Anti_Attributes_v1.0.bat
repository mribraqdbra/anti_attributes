@echo off
title Anti Attributes v1.0
mode con:cols=50 lines=15
color 1a
::::::::::::::::::::::::::::::
Anti Attributes v1.0
by: @mribraqdbra - 2019-06-18
::::::::::::::::::::::::::::::
:main
cls
echo.
echo.
echo               Anti Attributes v1.0
echo.
echo.
echo  1- Unattribute all Folders/Files in current path
echo.
echo  2- Attribute all Folders/Files in current path
echo.
echo  3- Exit
echo.
echo.
set /p input=Please choose a number: || set input="0"
if /I %input%==1 goto unattrib
if /I %input%==2 goto attrib
if /I %input%==3 goto exit
cls
echo.
echo           %input% Invalid option!
echo.
pause
goto main
pause
:unattrib
cls
echo.
echo.
echo  Unattributing please wait...
timeout /t 3 /nobreak 2>&1 >nul
attrib /s /d -h -s 2>&1 >nul
goto main
:attrib
cls
echo.
echo.
echo  Attributing please wait...
timeout /t 3 /nobreak 2>&1 >nul
attrib /s /d +h +s 2>&1 >nul
attrib -h -s "%~f0"
goto main
:exit
cls
exit /b
::::::::::::::::::::::::::::::
Anti Attributes v1.0
by: @mribraqdbra - 2019-06-18
::::::::::::::::::::::::::::::
