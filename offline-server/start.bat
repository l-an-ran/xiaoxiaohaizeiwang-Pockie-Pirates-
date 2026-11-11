@echo off
title OP-Offline-Gateway
cd /d "%~dp0"

echo ================================================
echo   One Piece Offline Gateway - Starting
echo ================================================
echo.

REM --- Find Python ---
set PY=
where python >nul 2>nul && set PY=python
if "%PY%"=="" where py >nul 2>nul && set PY=py -3
if "%PY%"=="" (
    echo [ERROR] Python not found. Install Python 3.8+ first.
    pause
    exit /b 1
)
echo [OK] Using: %PY%
echo.

REM --- Check server.py ---
if not exist "server.py" (
    echo [ERROR] server.py not found in current dir.
    pause
    exit /b 1
)

REM --- Kill any previous server on port 8080 ---
echo [INFO] Checking port 8080 ...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8080" ^| findstr "LISTENING"') do (
    echo [WARN] Port 8080 occupied by PID %%a, killing ...
    taskkill /F /PID %%a >nul 2>nul
    timeout /t 1 /nobreak >nul
)

REM --- Launch ---
echo.
echo [START] Offline gateway launching ...
echo         URL: http://127.0.0.1:8080
echo         Press Ctrl+C to stop.
echo.

%PY% server.py --host 127.0.0.1 --port 8080

pause
