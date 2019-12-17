@echo off
if not exist %~dp0depot_tools\ninja.exe (
call git clone https://code.aliyun.com/ishenyu/google-depot_tools.git depot_tools
)
%~dp0depot_tools\ninja.exe %*

