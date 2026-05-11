---
schema_version: 1
type: runbook
status: active
created: 2026-05-11
updated: 2026-05-11
source: imported
author_agent: reno
verified_by: null
verified_at: null
confidence: null
procedure_owner: "[[reno]]"
trigger: webhook
mentions_entity: ["[[reno]]"]
tags: [runbook, crm, webhook, atendimento]
related: ["[[reno-hub]]", "[[reno-profile]]", "[[reno-second-brain-governance]]", "[[schema]]"]
---
# Runbook: Reno Operacao CRM E Webhook

## Regra central

Webhook e sinal de entrada. CRM e a fonte de verdade. Nenhum envio deve ocorrer antes de validar o cliente real no CRM.

## Consulta obrigatoria antes de enviar

1. Buscar cliente pelo ID do evento.
2. Confirmar `broker_id=35`.
3. Confirmar telefone utilizavel.
4. Verificar historico, notes e timeline operacional no CRM.
5. Consultar ou criar o contexto do cliente no vault: entidade consolidada em `_entities/` e evento datado em `_journal/reno/` quando houver acao.

## Campos que precisam ser revalidados no CRM

- `broker_id`.
- telefone atual.
- status do cliente.
- historico de contatos.
- responsavel comercial.
- origem real quando houver divergencia.

## Ignorar

Usar quando o caso nao pertence ao escopo do Reno.

Criterios:

- `broker_id` diferente de 35.
- Cliente inexistente ou nao localizado no CRM.
- Payload inconsistente e sem confirmacao confiavel.
- Evento nao relacionado ao primeiro atendimento digital do Reno.

Acao:

- Nao enviar WhatsApp.
- Registrar no CRM quando houver cliente existente e ponto operacional relevante: `Ignorado por fora de escopo Reno`.
- Nao criar evento de atendimento do Reno se o cliente nao pertence ao escopo do Reno.

## Suprimir

Usar quando o caso e do Reno, mas nao deve receber primeiro contato naquele momento.

Acao:

- Nao enviar WhatsApp.
- Registrar no CRM a causa objetiva.
- Atualizar a entidade e criar journal em `_journal/reno/` quando houver cliente existente do Reno e a decisao tiver valor futuro.

## Avancar

Usar quando:

- cliente valido;
- `broker_id=35` confirmado;
- telefone utilizavel;
- sem bloqueio operacional.

Acao:

- Enviar primeira mensagem curta e contextualizada.
- Registrar envio/decisao no CRM.
- Atualizar a entidade e criar journal com contexto, mensagem enviada, status CRM e proximo passo.

## Politica atual de WhatsApp

Para envio de mensagem pelo WhatsApp, tentar o numero com o nono digito e tambem sem o nono digito quando aplicavel. Nao bloquear antes de tentar apenas por ausencia de JID confiavel, `haswhatsapp=false`, duvida de formato, duplicidade, historico anterior ou inferencia operacional, desde que o cliente esteja no escopo minimo do Reno.

Se as tentativas falharem, registrar falha objetiva no CRM e no journal operacional.

## Registro no CRM

Sempre registrar a decisao operacional: ignorado, suprimido, enviado, falha de envio ou avanco comercial posterior.

## Registro no vault

Para cliente do Reno, registrar no modelo duplo:

- primeiro contato enviado;
- falha de envio;
- supressao relevante;
- primeira resposta;
- diagnostico e preferencias;
- objecoes;
- proximo passo;
- agendamento;
- handoff;
- mudanca de status.

## Handoff para corretor ou operacao humana

Fazer quando houver visita agendada, atendimento humano pedido, negociacao alem da atuacao digital inicial, oportunidade quente, trava financeira que exige analise humana ou necessidade de simulacao/validacao operacional.

Formato recomendado:

`Lead: [nome]. Interesse: [sintese]. Momento: [agora/avaliando/futuro]. Trava: [principal]. Proximo passo: [acao combinada]. Observacao: [risco/oportunidade].`

## Falhas criticas a evitar

- Enviar com base apenas no webhook.
- Enviar para lead de outro broker.
- Deixar cliente do Reno sem contexto no vault quando houver acao relevante.
- Encaminhar print longo sem sintese.
- Fazer handoff sem proximo passo.
