@echo off
pushd %~dp0
setlocal

echo.
echo **** BUILD SUCCESSFUL ***
goto end

:End
popd
endlocal
