@echo off
call choco list --local | find /i "openjdk" > nul
if errorlevel 1 (
call choco install -y openjdk
call refreshenv
)
call choco list --local | find /i "graphviz" > nul
if errorlevel 1 (
call choco install -y graphviz
call refreshenv
)
call where gitbook.cmd 2>&1 | find /i "gitbook.cmd" > nul
if errorlevel 1 (
call npm i -g gitbook-cli
)
gitbook.cmd %*