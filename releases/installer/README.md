cat << 'EOF' > releases/installer/README-INSTALACAO.txt
### COMO INSTALAR A EXTENSÃO Codex Dracula (manual)

1. Acesse: chrome://extensions
2. Ative o **Modo do Desenvolvedor** (canto superior direito)
3. Arraste o arquivo `new-tabs.crx` para a janela do navegador
4. Confirme a instalação

---

### SOBRE O ARQUIVO .PEM

O arquivo `new-tabs.pem` é a chave que garante que a extensão mantenha o mesmo ID nas próximas versões. Guarde-o com segurança.

---

Para empacotar novas versões com o mesmo ID, use este comando:

google-chrome --pack-extension=/CAMINHO/DA/PASTA --pack-extension-key=releases/installer/new-tabs.pem
EOF
