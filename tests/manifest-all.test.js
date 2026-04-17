// Valida que as 3 variantes da extensao (firefox, firefox-v3, chrome) tem manifests validos.

const fs = require('node:fs');
const path = require('node:path');
const { test } = require('node:test');
const assert = require('node:assert');

const variantes = ['firefox', 'firefox-v3', 'chrome'];

for (const variante of variantes) {
  test(`${variante}: manifest.json existe`, () => {
    const caminho = path.join(__dirname, '..', variante, 'manifest.json');
    assert.ok(fs.existsSync(caminho), `${caminho} nao encontrado`);
  });

  test(`${variante}: arquivos obrigatorios presentes`, () => {
    const dir = path.join(__dirname, '..', variante);
    for (const arquivo of ['index.html', 'style.css', 'script.js']) {
      const caminho = path.join(dir, arquivo);
      assert.ok(fs.existsSync(caminho), `${caminho} ausente`);
    }
  });

  test(`${variante}: icones nos 3 tamanhos (16, 48, 128)`, () => {
    const dir = path.join(__dirname, '..', variante);
    for (const tamanho of ['16x16', '48x48', '128x128']) {
      const caminho = path.join(dir, `icon_${tamanho}.png`);
      assert.ok(fs.existsSync(caminho), `${caminho} ausente`);
    }
  });
}
