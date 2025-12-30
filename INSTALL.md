# Guia de Instalacao - Codex Dracula v2.0

## Instalacao Automatica

### Linux / macOS
```bash
chmod +x install.sh
./install.sh
```

### Windows
```cmd
install.bat
```

O instalador apresenta um menu interativo:
1. Chrome / Chromium / Edge / Brave / Vivaldi
2. Firefox (Manifest v2 - compativel com Waterfox, LibreWolf)
3. Firefox (Manifest v3 - Firefox 109+)

---

## Instalacao Manual

### Chrome / Chromium / Edge / Brave / Vivaldi / Opera / Arc

**Via Release:**
1. Baixe `codex-dracula-chrome-v2.0.zip` de [releases/chrome](releases/chrome/)
2. Extraia o conteudo em uma pasta
3. Abra o navegador e acesse `chrome://extensions/`
4. Ative o **Modo do desenvolvedor** (canto superior direito)
5. Clique em **Carregar sem compactacao**
6. Selecione a pasta onde extraiu os arquivos

**Via Git:**
```bash
git clone https://github.com/AndreBFarias/new-tabs.git
```
Depois carregue a pasta `new-tabs/chrome/` no navegador.

---

### Firefox (Manifest v2) - Waterfox / LibreWolf / Floorp

Versao com maior compatibilidade. Funciona em Firefox 57+.

**Via arquivo .xpi:**
1. Baixe `codex-dracula-firefox-v2-v2.0.xpi` de [releases/firefox](releases/firefox/)
2. Abra o Firefox e acesse `about:addons`
3. Clique no icone de engrenagem (Configuracoes)
4. Selecione **Instalar complemento a partir de arquivo**
5. Escolha o arquivo `.xpi` baixado
6. Confirme a instalacao

**Instalacao temporaria:**
1. Baixe `codex-dracula-firefox-v2-v2.0.zip` de [releases/firefox](releases/firefox/)
2. Extraia o conteudo
3. Acesse `about:debugging#/runtime/this-firefox`
4. Clique em **Carregar extensao temporaria**
5. Selecione o arquivo `manifest.json`

---

### Firefox (Manifest v3) - Firefox 109+

Versao moderna usando Manifest v3.

**Via arquivo .xpi:**
1. Baixe `codex-dracula-firefox-v3-v2.0.xpi` de [releases/firefox-v3](releases/firefox-v3/)
2. Abra o Firefox e acesse `about:addons`
3. Clique no icone de engrenagem
4. Selecione **Instalar complemento a partir de arquivo**
5. Escolha o arquivo `.xpi` baixado

**Instalacao temporaria:**
1. Baixe `codex-dracula-firefox-v3-v2.0.zip` de [releases/firefox-v3](releases/firefox-v3/)
2. Extraia o conteudo
3. Acesse `about:debugging#/runtime/this-firefox`
4. Clique em **Carregar extensao temporaria**
5. Selecione o arquivo `manifest.json`

---

## Qual versao escolher?

| Navegador | Versao Recomendada |
|-----------|-------------------|
| Chrome, Edge, Brave, Vivaldi, Opera, Arc | `chrome/` (Manifest v3) |
| Firefox 57-108 | `firefox/` (Manifest v2) |
| Firefox 109+ | `firefox/` ou `firefox-v3/` |
| Waterfox, LibreWolf, Floorp | `firefox/` (Manifest v2) |

---

## Verificando a Instalacao

Apos instalar, abra uma nova aba. Voce vera:

- Titulo "Codex Dracula"
- Imagem do Dracula
- Seletor de buscadores com nomes arcanos
- Campo de busca "Sussurre sua busca..."
- Botao "Invocar!"
- Som de sussurro ao realizar busca

---

## Solucao de Problemas

### Extensao nao aparece (Chrome)
- Verifique se o Modo do desenvolvedor esta ativado
- Confirme que selecionou a pasta correta (deve conter `manifest.json`)
- Reinicie o navegador

### Erro ao instalar .xpi (Firefox)
- Verifique se o arquivo foi baixado completamente
- Tente o metodo de instalacao temporaria
- Para Firefox 109+, tente a versao v3

### Som nao toca
- Verifique permissoes de audio do navegador
- O som toca apos interacao do usuario (primeira busca)

### Extensao funciona mas nao persiste (Firefox)
- Instalacao temporaria e removida ao fechar o navegador
- Use o arquivo `.xpi` para instalacao permanente

---

## Desinstalacao

### Chrome
1. Acesse `chrome://extensions/`
2. Encontre "Codex Dracula - new-tabs"
3. Clique em **Remover**

### Firefox
1. Acesse `about:addons`
2. Encontre "Codex Dracula - new-tabs"
3. Clique nos tres pontos e selecione **Remover**

### Linux (instalacao via script)
```bash
rm -rf ~/.local/share/codex-dracula-*
```

### Windows (instalacao via script)
```cmd
rmdir /s /q %LOCALAPPDATA%\codex-dracula-chrome
rmdir /s /q %LOCALAPPDATA%\codex-dracula-firefox
rmdir /s /q %LOCALAPPDATA%\codex-dracula-firefox-v3
```
