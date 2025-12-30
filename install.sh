#!/bin/bash

VERSION="2.0"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
NC='\033[0m'

echo -e "${PURPLE}"
echo "  ██████╗ ██████╗ ██████╗ ███████╗██╗  ██╗"
echo " ██╔════╝██╔═══██╗██╔══██╗██╔════╝╚██╗██╔╝"
echo " ██║     ██║   ██║██║  ██║█████╗   ╚███╔╝ "
echo " ██║     ██║   ██║██║  ██║██╔══╝   ██╔██╗ "
echo " ╚██████╗╚██████╔╝██████╔╝███████╗██╔╝ ██╗"
echo "  ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝"
echo -e "${NC}"
echo -e "${PURPLE}     DRACULA - New Tabs Installer v${VERSION}${NC}"
echo ""

show_menu() {
    echo -e "${YELLOW}Selecione o navegador:${NC}"
    echo ""
    echo "  [1] Chrome / Chromium / Edge / Brave / Vivaldi"
    echo "  [2] Firefox (Manifest v2 - compativel com Waterfox, LibreWolf)"
    echo "  [3] Firefox (Manifest v3 - Firefox 109+)"
    echo ""
    echo "  [0] Sair"
    echo ""
}

install_chrome() {
    echo -e "${GREEN}[Chrome/Chromium]${NC} Preparando instalacao..."

    INSTALL_DIR="$HOME/.local/share/codex-dracula-chrome"
    mkdir -p "$INSTALL_DIR"
    cp -r "$SCRIPT_DIR/chrome/"* "$INSTALL_DIR/"

    echo ""
    echo -e "${GREEN}Arquivos copiados para:${NC} $INSTALL_DIR"
    echo ""
    echo -e "${YELLOW}Para ativar a extensao:${NC}"
    echo "  1. Abra chrome://extensions/ no navegador"
    echo "  2. Ative 'Modo do desenvolvedor' (canto superior direito)"
    echo "  3. Clique em 'Carregar sem compactacao'"
    echo "  4. Selecione: $INSTALL_DIR"
    echo ""
}

install_firefox_v2() {
    echo -e "${GREEN}[Firefox v2]${NC} Preparando instalacao..."

    INSTALL_DIR="$HOME/.local/share/codex-dracula-firefox"
    mkdir -p "$INSTALL_DIR"
    cp -r "$SCRIPT_DIR/firefox/"* "$INSTALL_DIR/"

    echo ""
    echo -e "${GREEN}Arquivos copiados para:${NC} $INSTALL_DIR"
    echo ""
    echo -e "${YELLOW}Para ativar a extensao:${NC}"
    echo "  1. Abra about:debugging#/runtime/this-firefox"
    echo "  2. Clique em 'Carregar extensao temporaria'"
    echo "  3. Selecione: $INSTALL_DIR/manifest.json"
    echo ""
    echo -e "${YELLOW}Para instalacao permanente:${NC}"
    echo "  Use o arquivo .xpi em releases/firefox/"
    echo ""
}

install_firefox_v3() {
    echo -e "${GREEN}[Firefox v3]${NC} Preparando instalacao..."

    INSTALL_DIR="$HOME/.local/share/codex-dracula-firefox-v3"
    mkdir -p "$INSTALL_DIR"
    cp -r "$SCRIPT_DIR/firefox-v3/"* "$INSTALL_DIR/"

    echo ""
    echo -e "${GREEN}Arquivos copiados para:${NC} $INSTALL_DIR"
    echo ""
    echo -e "${YELLOW}Para ativar a extensao:${NC}"
    echo "  1. Abra about:debugging#/runtime/this-firefox"
    echo "  2. Clique em 'Carregar extensao temporaria'"
    echo "  3. Selecione: $INSTALL_DIR/manifest.json"
    echo ""
    echo -e "${YELLOW}Nota:${NC} Requer Firefox 109 ou superior"
    echo ""
}

while true; do
    show_menu
    read -p "Opcao: " choice

    case $choice in
        1)
            install_chrome
            break
            ;;
        2)
            install_firefox_v2
            break
            ;;
        3)
            install_firefox_v3
            break
            ;;
        0)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo -e "${RED}Opcao invalida${NC}"
            echo ""
            ;;
    esac
done

echo -e "${GREEN}Instalacao concluida.${NC}"
