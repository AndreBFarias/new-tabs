# Guia de Contribuição -- ArcaneTab

## Como Contribuir

1. Fork → branch feature → PR contra `main`
2. Commits em PT-BR (Conventional Commits)

## Padrão

- PT-BR com acentuação correta
- Zero emojis, zero menção IA
- JavaScript vanilla (sem frameworks) para manter a extensão leve
- 3 variantes mantidas em sincronia: `firefox/`, `firefox-v3/`, `chrome/`

## Desenvolvimento

```bash
# Carregar a extensao em modo dev:

# Firefox:
#   about:debugging -> Este Firefox -> Carregar complemento temporario -> firefox/manifest.json

# Chrome:
#   chrome://extensions -> Modo desenvolvedor -> Carregar sem compactacao -> pasta chrome/
```

## Testes

```bash
npm test
```

## Build

```bash
./build.sh
```

Gera .zip e .xpi em `releases/`.
