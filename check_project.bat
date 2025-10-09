@echo off
REM === 项目检查脚本 ===
echo === 检查项目关键文件 ===

REM 项目目录
set PROJECT_DIR=D:\Who-isnt-lost
cd /d %PROJECT_DIR%

echo.
echo --- 当前目录 ---
dir /b

echo.
echo --- 检查 Hugo.toml ---
if exist Hugo.toml (
    echo Hugo.toml 存在
) else (
    echo Hugo.toml 不存在
)

echo.
echo --- 检查 config.toml ---
if exist config.toml (
    echo config.toml 存在
) else (
    echo config.toml 不存在
)

echo.
echo --- 检查 themes 目录 ---
if exist themes (
    dir themes /b
) else (
    echo themes 目录不存在
)

echo.
echo --- 检查 static/admin/config.yml ---
if exist static\admin\config.yml (
    echo CMS 配置文件存在
) else (
    echo CMS 配置文件不存在
)

echo.
echo --- 检查 public 目录 ---
if exist public (
    dir public /b
) else (
    echo public 目录不存在
)

echo.
echo --- 检查 Git 状态 ---
git status

echo.
pause