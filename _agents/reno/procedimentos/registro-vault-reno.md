---
type: journal
owner: reno
created: '2026-04-27'
updated: '2026-04-27'
tags:
  - reno
  - procedimento
  - obsidian
  - atendimento
  - registro-vault
---
# Procedimento — RegistroVaultReno

## Objetivo
Manter um documento principal, único e auditável para cada atendimento do Reno no vault.

## Caminho determinístico
`_agents/reno/atendimentos/{client_id}-{lead-slug}.md`

- `client_id` é a chave primária operacional.
- O slug do nome é apenas legibilidade.
- `_agents/reno/lead/` pode existir como apoio/histórico auxiliar, mas não substitui o documento principal em `atendimentos/`.

## Frontmatter compatível
Usar sempre tipo aceito pelo schema do mcp-obsidian:

```yaml
type: journal
owner: reno
client_id: 12345
lead_name: Nome do Lead
status: Não Respondeu
source: Facebook Ads
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags:
  - reno
  - atendimento
```

Nunca usar `type: reno-atendimento`, pois esse tipo não é aceito pelo schema atual do mcp-obsidian.

## Fluxo único
1. Resolver o caminho determinístico pelo `client_id` e slug do nome.
2. Chamar `mcp_mcp_obsidian_read_note` no caminho.
3. Se não existir, criar com `mcp_mcp_obsidian_write_note`.
4. Se existir, anexar nova interação/decisão com `mcp_mcp_obsidian_append_to_note`.
5. Registrar no documento: origem, resumo, decisão operacional, status CRM, diagnóstico/observações, próximos passos e linha do tempo resumida.
6. Registrar tanto envios quanto supressões relevantes, desde que o cliente exista no CRM.
7. Se WhatsApp/status/nota CRM já foram concluídos e o vault falhar, não reenviar WhatsApp; registrar falha no CRM para reconciliação.

## Nota operacional
O CRM/FamaChat continua sendo a fonte de verdade. A reconciliação do vault deve reconstruir documentos a partir das notas do CRM quando necessário.
