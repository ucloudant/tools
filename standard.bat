@echo off
call where standard.cmd 2>&1 | find /i "standard.cmd"> nul
if errorlevel 1 (
call npm i -g standard
)
standard.cmd %*