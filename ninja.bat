@echo off
call choco list --local | find /i "ninja" > nul
if errorlevel 1 (
call choco install -y ninja
call refreshenv
)
ninja.exe %*