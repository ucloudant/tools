@echo off
call pacman -Q grep 2>nul | find /i "grep" > nul
if errorlevel 1 (
call echo yes | pacman -S grep
)
%ChocolateyToolsLocation%\msys64\usr\bin\grep.exe %*