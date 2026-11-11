@echo off
chcp 65001 >nul
title 小小海贼王 - 本地单机服 v0.5
color 0A
echo.
echo ╔══════════════════════════════════════════════════╗
echo ║     小小海贼王 本地单机服 v0.5                  ║
echo ║     支持: 角色创建 · 命名 · 第一章风车村任务    ║
echo ╚══════════════════════════════════════════════════╝
echo.
echo [1] 启动服务器（保留存档）
echo [2] 重置存档并启动（重新创建角色）
echo.
set /p choice="请输入选项 (1 或 2，默认1): "

cd /d "%~dp0"

if "%choice%"=="2" (
    echo.
    echo [重置] 正在清除玩家存档...
    python server.py --port 8080 --reset
) else (
    python server.py --port 8080
)
