@echo off
REM Combine all files of a type in current directory
REM Usage: combine [extension] [outputfile]
REM   Default extension: txt
REM   Default output: combined.txt

setlocal enabledelayedexpansion

set "ext=%1"
if "%ext%"=="" set "ext=txt"

REM Remove leading dot if user types ".txt" instead of "txt"
if "%ext:~0,1%"=="." set "ext=%ext:~1%"

set "outfile=%2"
if "%outfile%"=="" set "outfile=combined.txt"

REM Delete output file if it exists (so it's not included in the merge)
if exist "%outfile%" del "%outfile%"

echo Combining .%ext% files into %outfile%...
echo.

set "count=0"
for %%f in (*.%ext%) do (
    if /i not "%%f"=="%outfile%" (
        echo Adding: %%f
        echo ===== %%f ===== >> "%outfile%"
        type "%%f" >> "%outfile%"
        echo. >> "%outfile%"
        set /a count+=1
    )
)

echo.
if %count%==0 (
    echo No .%ext% files found.
    if exist "%outfile%" del "%outfile%"
) else (
    echo Done! Combined %count% files into %outfile%
)