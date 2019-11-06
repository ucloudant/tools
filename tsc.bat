@echo off
call where tsc.cmd 2>&1 | find /i "tsc.cmd" > nul
if errorlevel 1 (
call npm i -g typescript
)
tsc.cmd %*