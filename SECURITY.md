# Política de Segurança -- ArcaneTab

## Versões Suportadas

| Versão | Suportada |
| ------ | --------- |
| 2.2.x  | sim       |
| 2.1.x  | sim (última estável) |
| < 2.1  | não       |

## Chaves de Assinatura

**IMPORTANTE:** chaves privadas (.pem) para assinar extensões Chrome/Firefox NUNCA devem ser commitadas.

O arquivo `new-tabs.pem` foi removido do repositório no commit de higienização (S26). Se você tinha uma cópia desse arquivo, ele deve ser girado imediatamente: assine uma nova versão da extensão, publique com a nova chave, e a antiga se torna inválida.

O `.gitignore` tem `*.pem` para prevenir novos commits acidentais.

## Reportando

1. **Não** abra issue pública
2. Email ao mantenedor
3. Inclua descrição, passos, impacto

## Tempo de Resposta

- Recebimento: 48h
- Avaliação: 7 dias
- Correção: 30 dias

## Armazenamento Local

ArcaneTab usa `localStorage` para persistir preferências (search engine, sound). Não coleta dados pessoais nem envia telemetria.

## Permissões

Apenas `storage`. Nenhuma permissão de navegação, conteúdo ou rede.
