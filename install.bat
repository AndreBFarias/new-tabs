@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

set VERSION=2.0
set SCRIPT_DIR=%~dp0

cls
echo.
echo   ██████╗ ██████╗ ██████╗ ███████╗██╗  ██╗
echo  ██╔════╝██╔═══██╗██╔══██╗██╔════╝╚██╗██╔╝
echo  ██║     ██║   ██║██║  ██║█████╗   ╚███╔╝
echo  ██║     ██║   ██║██║  ██║██╔══╝   ██╔██╗
echo  ╚██████╗╚██████╔╝██████╔╝███████╗██╔╝ ██╗
echo   ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
echo.
echo      DRACULA - New Tabs Installer v%VERSION%
echo.

:menu
echo Selecione o navegador:
echo.
echo   [1] Chrome / Chromium / Edge / Brave / Vivaldi
echo   [2] Firefox (Manifest v2 - compativel com Waterfox, LibreWolf)
echo   [3] Firefox (Manifest v3 - Firefox 109+)
echo.
echo   [0] Sair
echo.

set /p choice="Opcao: "

if "%choice%"=="1" goto install_chrome
if "%choice%"=="2" goto install_firefox_v2
if "%choice%"=="3" goto install_firefox_v3
if "%choice%"=="0" goto end

echo Opcao invalida
echo.
goto menu

:install_chrome
echo.
echo [Chrome/Chromium] Preparando instalacao...

set INSTALL_DIR=%LOCALAPPDATA%\codex-dracula-chrome
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"
xcopy /E /Y /Q "%SCRIPT_DIR%chrome\*" "%INSTALL_DIR%\" >nul

echo.
echo Arquivos copiados para: %INSTALL_DIR%
echo.
echo Para ativar a extensao:
echo   1. Abra chrome://extensions/ no navegador
echo   2. Ative 'Modo do desenvolvedor' (canto superior direito)
echo   3. Clique em 'Carregar sem compactacao'
echo   4. Selecione: %INSTALL_DIR%
echo.
goto done

:install_firefox_v2
echo.
echo [Firefox v2] Preparando instalacao...

set INSTALL_DIR=%LOCALAPPDATA%\codex-dracula-firefox
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"
xcopy /E /Y /Q "%SCRIPT_DIR%firefox\*" "%INSTALL_DIR%\" >nul

echo.
echo Arquivos copiados para: %INSTALL_DIR%
echo.
echo Para ativar a extensao:
echo   1. Abra about:debugging#/runtime/this-firefox
echo   2. Clique em 'Carregar extensao temporaria'
echo   3. Selecione: %INSTALL_DIR%\manifest.json
echo.
echo Para instalacao permanente:
echo   Use o arquivo .xpi em releases\firefox\
echo.
goto done

:install_firefox_v3
echo.
echo [Firefox v3] Preparando instalacao...

set INSTALL_DIR=%LOCALAPPDATA%\codex-dracula-firefox-v3
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"
xcopy /E /Y /Q "%SCRIPT_DIR%firefox-v3\*" "%INSTALL_DIR%\" >nul

echo.
echo Arquivos copiados para: %INSTALL_DIR%
echo.
echo Para ativar a extensao:
echo   1. Abra about:debugging#/runtime/this-firefox
echo   2. Clique em 'Carregar extensao temporaria'
echo   3. Selecione: %INSTALL_DIR%\manifest.json
echo.
echo Nota: Requer Firefox 109 ou superior
echo.
goto done

:done
echo Instalacao concluida.
echo.
pause
goto end

:end
endlocal
