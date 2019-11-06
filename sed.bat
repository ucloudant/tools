@echo off
call pacman -Q sed 2>nul | find /i "sed" > nul
if errorlevel 1 (
call echo yes | pacman -S sed
)
%ChocolateyToolsLocation%\msys64\usr\bin\sed.exe %*