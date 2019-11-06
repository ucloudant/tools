@echo off
call choco list --local | find /i "msys2" > nul
if errorlevel 1 (
call choco install -y msys2
call refreshenv
)
pacman.exe %*