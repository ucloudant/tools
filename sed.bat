@echo off
call choco list --local | find /i "msys2" > nul
if errorlevel 1 (
call choco install -y msys2
)
%ChocolateyToolsLocation%\msys64\usr\bin\sed.exe %*