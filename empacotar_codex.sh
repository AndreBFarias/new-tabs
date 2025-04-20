#!/bin/bash

DIRETORIO_EXTENSAO="$(pwd)"
CHAVE="$DIRETORIO_EXTENSAO/new-tabs.pem"

echo "📦 Empacotando extensão Codex Dracula..."
echo "📁 Pasta: $DIRETORIO_EXTENSAO"
echo "🔐 Chave: $CHAVE"

# Verifica se a chave correta existe
if [ ! -f "$CHAVE" ]; then
    echo "❌ A chave new-tabs.pem não foi encontrada."
    echo "Por favor, gere a chave pelo Chrome via chrome://extensions → Empacotar extensão."
    exit 1
fi

google-chrome --pack-extension="$DIRETORIO_EXTENSAO" --pack-extension-key="$CHAVE"

CRX_FILE="${DIRETORIO_EXTENSAO}.crx"
if [ -f "$CRX_FILE" ]; then
    echo "✅ Extensão empacotada com sucesso: $CRX_FILE"
else
    echo "❌ Algo deu errado no empacotamento."
fi
