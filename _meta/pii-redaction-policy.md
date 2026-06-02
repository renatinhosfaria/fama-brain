---
schema_version: 1
type: concept
owner: renato
created: '2026-06-02'
updated: '2026-06-02'
status: active
source: human-curated
tags:
  - meta
  - seguranca
  - pii
  - redaction
topic: vault
related:
  - '[[retrieval-policy]]'
  - '[[schema]]'
---
# Politica de redaction e minimizacao de dados sensiveis

Esta politica define como agentes devem consumir, resumir e registrar dados identificaveis no `fama-brain`.

## Principio

O vault pode guardar memoria operacional curada, mas agentes nao devem expor identificadores pessoais ou tecnicos quando isso nao for necessario para a tarefa.

## Dados que exigem redaction em respostas

- telefones completos;
- WhatsApp JIDs;
- e-mails de clientes;
- CPF ou identificador similar;
- tokens, senhas, API keys, connection strings e headers de autorizacao;
- payload bruto de webhook;
- logs tecnicos completos.

## Forma padrao de redaction

Use marcadores estaveis:

- `[PHONE_REDACTED]`
- `[WHATSAPP_JID_REDACTED]`
- `[EMAIL_REDACTED]`
- `[CPF_REDACTED]`
- `[SECRET_REDACTED]`

Quando a rastreabilidade operacional exigir identificacao, prefira IDs internos como `client_id`, `broker_id`, nome canonico da entidade e links Obsidian.

## Escrita no vault

Novas notas devem minimizar dados sensiveis:

- registrar telefone completo apenas quando for fonte operacional indispensavel;
- preferir final de telefone, `client_id` ou entidade canonica;
- nunca salvar segredo real;
- nunca salvar payload bruto;
- nunca salvar conversa inteira sem curadoria.

## Retrieval e respostas

Ao responder a partir do vault, agentes devem:

- citar caminhos, entidades e IDs internos quando bastarem;
- redigir PII antes de devolver trechos;
- nao repetir exemplos sensiveis de journals antigos;
- tratar `_meta/pii-scan-*.md` como auditoria redigida, nao como fonte de dados pessoais.

## Scanner

O MCP deve oferecer `scan_sensitive_data` como ferramenta read-only. A ferramenta pode contar ocorrencias e retornar snippets redigidos, mas nunca deve retornar o valor bruto encontrado.
