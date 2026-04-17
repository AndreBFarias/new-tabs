#!/usr/bin/env node
// Valida o manifest.json de uma variante da extensao.

const fs = require('node:fs');
const path = require('node:path');
const { test } = require('node:test');
const assert = require('node:assert');

const variante = process.argv[2] || 'firefox';
const manifestPath = path.join(__dirname, '..', variante, 'manifest.json');

test(`${variante}: manifest.json existe e e JSON valido`, () => {
  const conteudo = fs.readFileSync(manifestPath, 'utf8');
  const manifest = JSON.parse(conteudo);
  assert.ok(manifest, 'manifest nao parseavel');
});

test(`${variante}: manifest tem campos obrigatorios`, () => {
  const manifest = JSON.parse(fs.readFileSync(manifestPath, 'utf8'));
  assert.ok(manifest.manifest_version, 'manifest_version ausente');
  assert.ok(manifest.name, 'name ausente');
  assert.ok(manifest.version, 'version ausente');
  assert.ok(manifest.description, 'description ausente');
});

test(`${variante}: nome contem ArcaneTab`, () => {
  const manifest = JSON.parse(fs.readFileSync(manifestPath, 'utf8'));
  assert.ok(
    manifest.name.includes('ArcaneTab'),
    `nome deveria conter 'ArcaneTab', recebido: ${manifest.name}`,
  );
});

test(`${variante}: version segue padrao semver`, () => {
  const manifest = JSON.parse(fs.readFileSync(manifestPath, 'utf8'));
  assert.match(
    manifest.version,
    /^\d+\.\d+(\.\d+)?$/,
    `versao ${manifest.version} nao segue padrao semver`,
  );
});

test(`${variante}: chrome_url_overrides.newtab aponta para index.html`, () => {
  const manifest = JSON.parse(fs.readFileSync(manifestPath, 'utf8'));
  assert.equal(manifest.chrome_url_overrides?.newtab, 'index.html');
});
