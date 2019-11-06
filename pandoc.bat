@echo off
call choco list --local | find /i "pandoc" > nul
if errorlevel 1 (
call choco install -y pandoc
call refreshenv
)
pandoc.exe %*