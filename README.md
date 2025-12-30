<div align="center">

[![opensource](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](#)
[![Licenca](https://img.shields.io/badge/licenca-GPLv2-blue.svg)](https://www.gnu.org/licenses/gpl-2.0)
[![Estrelas](https://img.shields.io/github/stars/AndreBFarias/new-tabs.svg?style=social)](https://github.com/AndreBFarias/new-tabs/stargazers)
[![Contribuicoes](https://img.shields.io/badge/contribuicoes-bem--vindas-brightgreen.svg)](https://github.com/AndreBFarias/new-tabs/issues)

<h1>Codex Dracula - New Tabs</h1>
<img src="assets/dracula.svg" width="120" alt="Logo Codex Dracula">

</div>

---

Uma releitura sombria da extensao [Dracula New Tab](https://github.com/dracula/new-tabs), com uma estetica arcana inspirada em grimorios magicos, interface em portugues e um ritual de busca visualmente encantador.

---

<div align="center">
<img src="assets/screenshot.png" width="700" alt="Interface do Codex Dracula">
</div>

---

## Buscadores renomeados

| Motor Original | Nome Arcano |
|----------------|-------------|
| Google | Olhos de Google |
| Yahoo | Oraculo do Yahoo |
| Bing | Sussurros do Bing |
| DuckDuckGo | Pato das Trevas |
| Brave Search | Cacador Valente |
| Qwant | Espelho de Qwant |
| Ecosia | Ecos da Vida |

## Novidades desta versao

- Visual reimaginado com tema gotico e referencias a tomos magicos
- Interface 100% localizada em portugues
- Efeitos sonoros ao buscar (sussurros) - agora com opcao de ativar/desativar
- Imagem do Dracula centralizada com responsividade
- Icones personalizados nos tamanhos 16, 48 e 128
- Suporte para Chrome e Firefox (Manifest v2 e v3)

---

## Instalacao Rapida

### Linux / macOS
```bash
./install.sh
```

### Windows
```cmd
install.bat
```

Os instaladores apresentam um menu interativo para selecionar o navegador.

---

## Instalacao Manual

### Chrome / Chromium / Edge / Brave / Vivaldi

| Arquivo | Descricao |
|---------|-----------|
| [codex-dracula-chrome-v2.1.zip](releases/chrome/) | Extensao para Chrome (Manifest v3) |

1. Baixe e extraia o arquivo `.zip`
2. Acesse `chrome://extensions/`
3. Ative o **Modo do desenvolvedor**
4. Clique em **Carregar sem compactacao**
5. Selecione a pasta extraida

---

### Firefox / Waterfox / LibreWolf

| Arquivo | Descricao |
|---------|-----------|
| [codex-dracula-firefox-v2-v2.1.xpi](releases/firefox/) | Firefox 57+ (Manifest v2) - Maior compatibilidade |
| [codex-dracula-firefox-v3-v2.1.xpi](releases/firefox-v3/) | Firefox 109+ (Manifest v3) - Versao moderna |

**Via arquivo .xpi:**
1. Baixe o arquivo `.xpi`
2. Acesse `about:addons`
3. Clique no icone de engrenagem
4. Selecione **Instalar complemento a partir de arquivo**
5. Escolha o arquivo `.xpi` baixado

**Instalacao temporaria (desenvolvimento):**
1. Acesse `about:debugging#/runtime/this-firefox`
2. Clique em **Carregar extensao temporaria**
3. Selecione o `manifest.json` da pasta desejada

---

## Compatibilidade

| Navegador | Versao | Status |
|-----------|--------|--------|
| Chrome | 88+ | Manifest v3 |
| Chromium | 88+ | Manifest v3 |
| Microsoft Edge | 88+ | Manifest v3 |
| Brave | 1.19+ | Manifest v3 |
| Vivaldi | 3.6+ | Manifest v3 |
| Opera | 74+ | Manifest v3 |
| Arc | Todas | Manifest v3 |
| Firefox | 57-108 | Manifest v2 |
| Firefox | 109+ | Manifest v2 ou v3 |
| Waterfox | G3+ | Manifest v2 |
| LibreWolf | Todas | Manifest v2 |
| Floorp | Todas | Manifest v2 |

---

## Estrutura do Projeto

```
new-tabs/
├── assets/              # Imagens e recursos
├── chrome/              # Extensao Chrome (Manifest v3)
├── firefox/             # Extensao Firefox (Manifest v2)
├── firefox-v3/          # Extensao Firefox (Manifest v3)
├── releases/
│   ├── chrome/          # .zip para Chrome
│   ├── firefox/         # .zip e .xpi (v2)
│   └── firefox-v3/      # .zip e .xpi (v3)
├── build.sh             # Build script (Linux/macOS)
├── install.sh           # Instalador (Linux/macOS)
├── install.bat          # Instalador (Windows)
├── README.md
├── INSTALL.md
└── LICENSE
```

---

## Build

Para gerar novos releases:

```bash
./build.sh
```

---

## Creditos

- Projeto original por [@Superredstone](https://github.com/Superredstone)
- Tema Dracula por [draculatheme.com](https://draculatheme.com)
- Versao Codex Dracula por [@AndreBFarias](https://github.com/AndreBFarias)

---

## Licenca

Distribuido sob a licenca GPL-2.0. Pode remixar, adaptar e redistribuir - desde que mantenha o codigo aberto.
