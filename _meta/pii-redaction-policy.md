---
created: '2026-06-02'
owner: renato
related:
  - '[[retrieval-policy]]'
  - '[[schema]]'
  - '[[golden-queries]]'
schema_version: 1
source: human-curated
status: active
tags:
  - meta
  - seguranca
  - pii
  - redaction
  - privacy
  - retrieval
topic: vault
type: concept
updated: '2026-06-03'
---
# Politica de redaction e minimizacao de dados sensiveis

Esta politica define como agentes devem consumir, resumir e registrar dados identificaveis no `fama-brain`.

## Principio

O vault pode guardar memoria operacional curada, mas agentes nao devem expor identificadores pessoais ou tecnicos quando isso nao for necessario para a tarefa.

Regra curta: ao encontrar telefone, WhatsApp JID, email, CPF, token, senha, API key, connection string, payload bruto ou log sensivel, o agente deve redigir o valor bruto antes de responder ou registrar uma síntese.

## Telefone completo

Telefone completo encontrado no vault deve ser tratado como PII. O agente não deve devolver o número bruto em respostas.

- Em resposta ao usuário, usar `[PHONE_REDACTED]` quando o número completo não for indispensável.
- Para rastreabilidade, preferir `client_id`, `broker_id`, entidade canônica, data absoluta, nota CRM ou wikilink.
- Se houver necessidade operacional de diferenciar contatos, usar apenas marcador redigido e contexto não sensível; não repetir o telefone completo.

## WhatsApp JID

WhatsApp JID encontrado no vault deve ser tratado como PII e identificador operacional sensível.

- Não expor JID bruto em resposta.
- Usar `[WHATSAPP_JID_REDACTED]`.
- Preservar contexto por `client_id`, entidade, evento datado, message_id redigido quando necessário e wikilink.

## Email

Email de cliente, lead, broker, parceiro ou contato pessoal encontrado no vault deve ser redigido por padrão.

- Não devolver email bruto em resposta quando bastar identificar a entidade ou o papel do contato.
- Usar `[EMAIL_REDACTED]`.
- Para contexto interno, preferir entidade canônica, ID operacional, organização, data e fonte curada.

## CPF ou identificador equivalente

CPF, documento pessoal ou identificador equivalente encontrado no vault deve ser sempre tratado como dado sensível de alto risco.

- Não expor CPF bruto em resposta.
- Usar `[CPF_REDACTED]`.
- Não criar novas notas contendo CPF bruto, salvo exigência operacional explícita e justificada; mesmo assim, preferir marcador redigido e referência ao sistema operacional de origem.

## Segredos técnicos

Tokens, senhas, API keys, connection strings, headers de autorizacao e credenciais equivalentes nunca devem ser expostos nem preservados em texto claro no vault.

- Usar `[SECRET_REDACTED]`.
- Registrar apenas o tipo de segredo, sistema afetado, data da auditoria e providência tomada.
- Não copiar payloads técnicos completos para notas de curadoria.

## Dados que exigem redaction em respostas

- telefones completos;
- WhatsApp JIDs;
- e-mails de clientes, leads, brokers, parceiros ou contatos pessoais;
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

Quando a rastreabilidade operacional exigir identificacao, prefira IDs internos como `client_id`, `broker_id`, nome canonico da entidade, data absoluta e links Obsidian.

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

Perguntas literais como “qual é o telefone?”, “qual WhatsApp JID?”, “qual email?”, “qual CPF?” ou “mostre o contato completo” devem ser respondidas com redaction, salvo autorização explícita do Renato e necessidade operacional clara.

## Scanner

O MCP deve oferecer `scan_sensitive_data` como ferramenta read-only. A ferramenta pode contar ocorrencias e retornar snippets redigidos, mas nunca deve retornar o valor bruto encontrado.
