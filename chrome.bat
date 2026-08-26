@echo off
setlocal EnableExtensions

title USB Chrome Profile Launcher
color 0A

echo.
echo ==========================================
echo       USB Chrome Profile Launcher
echo ==========================================
echo.

:: --------------------------------------------------
:: 1. Detect the folder where this BAT is located
:: --------------------------------------------------
set "BASE=%~dp0"
set "PROFILE=%BASE%ChromeProfile"
set "LOGDIR=%BASE%Logs"

echo USB/Base location:
echo %BASE%
echo.

:: --------------------------------------------------
:: 2. Create folders if they do not exist
:: --------------------------------------------------
if not exist "%PROFILE%" mkdir "%PROFILE%"
if not exist "%LOGDIR%" mkdir "%LOGDIR%"

:: --------------------------------------------------
:: 3. Find installed Google Chrome
:: --------------------------------------------------
set "CHROME="

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
)

if not defined CHROME if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
    set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
)

if not defined CHROME if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" (
    set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
)

:: --------------------------------------------------
:: 4. Chrome not found
:: --------------------------------------------------
if not defined CHROME (
    echo.
    echo ERROR: Google Chrome is not installed/found.
    echo.
    echo Checked common Chrome locations.
    echo.
    pause
    exit /b 1
)

:: --------------------------------------------------
:: 5. Show detected Chrome
:: --------------------------------------------------
echo Chrome found:
echo %CHROME%
echo.

echo Profile location:
echo %PROFILE%
echo.

:: --------------------------------------------------
:: 6. Start Chrome using USB profile
:: --------------------------------------------------
echo Starting Chrome...
echo.

start "" "%CHROME%" ^
    --user-data-dir="%PROFILE%" ^
    --no-first-run ^
    --no-default-browser-check

echo Chrome has been started.
echo.
echo You can close this window.
echo.

exit /b 0