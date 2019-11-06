@echo off
call pacman -Q perl 2>nul | find /i "perl" > nul
if errorlevel 1 (
call echo yes | pacman -S perl
)
%ChocolateyToolsLocation%\msys64\usr\bin\perl.exe %*