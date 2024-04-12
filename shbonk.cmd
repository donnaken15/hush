@echo off
:: requires Cygwin
:: primarily for running with proper shebang instead
:: of having to type out the shell because of file
:: assocation and how windows reacts to type the plain
:: script without specifying the command to use with it
:: forgot that paths still need to be converted
set "_SHBONK_OLD_CWD=%CD%"
if [%1]==[] ( sh.exe&goto :eof )
pushd "%~dp0"
for /f "usebackq tokens=1" %%v in (`cygpath -u "%1"`) do (
	shift&sh.exe "./shbonk" "%%v" %*
)
popd