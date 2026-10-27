
@echo off
set "DEV=%~dp0"

set "PATH=%DEV%flutter\bin;%PATH%"
set "PUB_CACHE=%DEV%pub-cache"

echo Mostrando version de Flutter...
call "%DEV%flutter\bin\flutter.bat" --version

echo.
echo Abriendo VS Code...
start "" "%DEV%vscode\Code.exe"

echo.
echo Script terminado.
pause
