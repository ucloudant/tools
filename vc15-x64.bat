@echo off
call choco list --local | find /i "visualstudio2017community" > nul
if errorlevel 1 (
call choco install -y visualstudio2017community
)
call choco list --local | find /i "visualstudio2017-workload-nativedesktop" > nul
if errorlevel 1 (
call choco install -y visualstudio2017-workload-nativedesktop
)
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64
