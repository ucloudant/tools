@echo off
call choco list --local | find /i "ruby" > nul
if errorlevel 1 (
call choco install -y ruby
call refreshenv
)
gem %*