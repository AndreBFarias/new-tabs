# Sprint S26 -- Higienização do ArcaneTab (6/10 -> 10/10)

**Projeto:** ArcaneTab (ex-new-tabs)
**Data:** 2026-04-16
**Saúde anterior:** 6/10
**Saúde final:** 10/10

## Entregas

- [x] Remoção de `new-tabs.pem` (chave privada commitada) — SECURITY ISSUE CRÍTICO RESOLVIDO
- [x] Remoção de `README.md.final` (duplicata)
- [x] `package.json` com deps dev (eslint), scripts de test e validate
- [x] `tests/validate-manifest.js` — valida manifest por variante
- [x] `tests/manifest-all.test.js` — valida existência dos 3 manifests (firefox, firefox-v3, chrome)
- [x] `.github/workflows/ci.yml` — valida as 3 variantes
- [x] `CODE_OF_CONDUCT.md`, `CONTRIBUTING.md`, `SECURITY.md` (com alerta sobre .pem), `.mailmap`

## Atenção

A chave privada `new-tabs.pem` estava commitada. Foi removida da HEAD mas permanece no histórico git. Se a chave for usada em algum contexto de produção, deve ser girada imediatamente.
