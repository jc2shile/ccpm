@echo off
setlocal

set "REPO_URL=https://github.com/jc2shile/ccpm.git"

:: Clone Repo
echo Cloning repository from %REPO_URL%...
git clone "%REPO_URL%" _tmp || (
    echo Error: Clone failed
    exit /b 1
)

echo Initializing project...
:: Move ccpm to .claude
if exist "_tmp\ccpm" (
    move "_tmp\ccpm" ".claude" >nul 2>&1
)

:: Move doc
if exist "_tmp\doc" (
    move "_tmp\doc" ".\doc" >nul 2>&1
)

for %%f in (AGENTS.md COMMANDS.md LOCAL_MODE.md README.md) do (
    if exist "_tmp\%%f" move "_tmp\%%f" "doc\" >nul 2>&1
)

:: Clean
rmdir /s /q "_tmp" 2>nul

echo Project initialized successfully