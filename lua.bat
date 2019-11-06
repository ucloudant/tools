@echo off
call choco list --local | find /i "lua" > nul
if errorlevel 1 (
call choco install -y lua
call refreshenv
)
lua.exe %*