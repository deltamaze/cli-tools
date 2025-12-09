@echo off
REM Directory Tree Utility
REM Usage: dirtree [path] [/f]
REM   /f = include files (not just folders)
REM dirtree /f > dirtree.txt      # overwrites file
REM dirtree /f >> dirtree.txt     # appends to file

if "%1"=="" (
    tree /a
) else if "%1"=="/f" (
    tree /a /f
) else if "%2"=="/f" (
    tree "%1" /a /f
) else (
    tree "%1" /a
)