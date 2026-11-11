@echo off
title Stop-Offline-Gateway
cd /d "%~dp0"

echo ================================================
echo   Stop Offline Gateway on port 8080
echo ================================================
echo.

set KILLED=0
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8080" ^| findstr "LISTENING"') do (
    echo Killing PID %%a ...
    taskkill /F /PID %%a >nul 2>nul
    set KILLED=1
)

if "%KILLED%"=="0" (
    echo No process on port 8080.
) else (
    echo Done.
)

timeout /t 2 /nobreak >nul
