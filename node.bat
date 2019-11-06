@echo off
call choco list --local | find /i "nodejs" > nul
if errorlevel 1 (
call choco install -y nodejs
call refreshenv
)
node.exe %*