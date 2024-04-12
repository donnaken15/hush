@echo off
if [%1]==[] goto :u

where "$path:%~n1" /Q || goto :f
mklink /H "%~dp0%~n1" "%~dp0wsl2exe"
exit /b
:f
echo That program must be in the PATH variable. (%~n1)
exit /b
:u
echo create a hardlink of wsl2exe for launching Windows versions of&
echo Linux programs to use in running pure Linux scripts from WSL&
echo i.e. if you have Node or Python only installed on Windows&
echo and want to run it from WSL but not install it again&
echo.&echo usage: exe4wsl [exe name]
