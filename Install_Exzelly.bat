@echo off
setlocal enabledelayedexpansion

:: ── EXZELLY ONE-CLICK INSTALLER ───────────────────────────────────────────────
:: Version: 1.2.0
:: Author: ProxyAyush
:: Source: https://github.com/ProxyAyush/Exzelly

echo ==========================================================
echo           EXZELLY — YOUR LOCAL AI ASSISTANT
echo ==========================================================
echo [1/6] Initialising installation...

:: 1. Pick Installation Folder
set "PS_CMD=Add-Type -AssemblyName System.Windows.Forms; $f = New-Object System.Windows.Forms.FolderBrowserDialog; $f.Description = 'Select Exzelly Installation Folder'; if($f.ShowDialog() -eq 'OK') { $f.SelectedPath }"
for /f "usebackq delims=" %%I in (`powershell -Command "%PS_CMD%"`) do set "INSTALL_DIR=%%I\Exzelly"

if "%INSTALL_DIR%"=="" (
    echo [ERROR] Installation cancelled. Folder not selected.
    pause
    exit /b
)

if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"
cd /d "%INSTALL_DIR%"

echo [INFO] Installing to: %INSTALL_DIR%

:: 2. Download App Files from GitHub Release
echo [2/6] Downloading latest Exzelly components...
set "REPO_URL=https://github.com/ProxyAyush/Exzelly/releases/latest/download"

curl -L -O "%REPO_URL%/Exzelly.exe"
curl -L -O "%REPO_URL%/excel_vba.bas"

:: 3. Setup Python Environment
echo [3/6] Setting up environment (Portable AI runtime included in .exe)...
:: No separate Python setup needed for the EXE, but dependencies might still be needed for llama.cpp

:: 4. Download AI Model
echo [4/6] Downloading Gemma 4 E2B AI Model (~2.7 GB)...
mkdir models
curl -L -o "models/gemma-4-E2B-it-Q8_0.gguf" "%REPO_URL%/gemma-4-E2B-it-Q8_0.gguf"

:: 5. Create Shortcuts
echo [5/6] Creating Desktop & Start Menu shortcuts...
set "EXE_PATH=%INSTALL_DIR%\Exzelly.exe"
set "SHORTCUT_PATH=%USERPROFILE%\Desktop\Exzelly.lnk"
powershell -Command "$s=(New-Object -ComObject WScript.Shell).CreateShortcut('%SHORTCUT_PATH%');$s.TargetPath='%EXE_PATH%';$s.WorkingDirectory='%INSTALL_DIR%';$s.Save()"

:: ── SUCCESS ───────────────────────────────────────────────────────────────────
echo ==========================================================
echo           ✅ EXZELLY INSTALLED SUCCESSFULLY!
echo ==========================================================
echo 1. Open Excel
echo 2. Go to Developer -> Visual Basic
echo 3. Import '%INSTALL_DIR%\excel_vba.bas'
echo 4. Run 'Exzelly_ShowPanel'
echo.
echo Launching Exzelly...
start "" "%INSTALL_DIR%\Exzelly.exe"
pause
