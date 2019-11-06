@echo off
call where yarn.cmd 2>&1 | find /i "yarn.cmd" > nul
if errorlevel 1 (
call npm i -g yarn
)
yarn.cmd %*