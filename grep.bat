@echo off
setlocal
if not exist %ALLUSERSPROFILE%\chocolatey\bin\grep.exe (
  choco install -y grep
)
%ALLUSERSPROFILE%\chocolatey\bin\grep.exe %*