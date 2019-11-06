@echo off
call choco list --local | find /i "python" > nul
if errorlevel 1 (
call choco install -y python2 python3
call refreshenv
)
py.exe %*