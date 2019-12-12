@echo off
call choco list --local | find /i "visualstudio2015community" > nul
if errorlevel 1 (
call choco install -y visualstudio2015community -packageParameters "--Features NativeLanguageSupport_VCV1"
)
"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
