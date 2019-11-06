@echo off
call choco list --local | find /i "git" > nul
if errorlevel 1 (
call choco install -y git
call refreshenv
)
git.exe %*