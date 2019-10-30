@echo off
setlocal
if not exist %ALLUSERSPROFILE%\chocolatey\bin\dot.exe (
  choco install -y graphviz
)
cmd /c yarn install
cmd /c yarn gitbook install
cmd /c yarn gitbook %*