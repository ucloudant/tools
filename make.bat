@echo off
call pacman -Q make 2>nul | find /i "make" > nul
if errorlevel 1 (
call echo yes | pacman -S make
)
set PATH=%PATH%;%ChocolateyToolsLocation%\msys64\usr\bin
%ChocolateyToolsLocation%\msys64\usr\bin\make.exe %*