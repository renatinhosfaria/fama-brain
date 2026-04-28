---
type: context
owner: reno
created: '2026-04-24'
updated: '2026-04-28'
tags:
  - reno
  - crm
  - webhook
  - elegibilidade
  - handoff
  - atendimento
title: 'Reno — operação CRM, webhook, elegibilidade e handoff'
---
# Reno — operação CRM, webhook, elegibilidade e handoff

## Regra central
Webhook é sinal de entrada. CRM é a fonte de verdade. Nenhum envio deve ocorrer antes de validar o cliente real no CRM.

## Registro obrigatório no vault para clientes do Reno
Todo caso envolvendo cliente existente do Reno deve criar ou atualizar o documento único do atendimento em:

`_agents/reno/atendimentos/{client_id}-{lead-slug}.md`

Esse documento é o contexto futuro oficial do cliente. Deve concentrar origem, diagnóstico, decisão operacional, status CRM, interações relevantes e próximo passo.

Não usar `_agents/reno/lead/`. Esse diretório foi descontinuado e não deve ser recriado.

## Consulta obrigatória antes de enviar
1. Buscar cliente pelo ID do evento.
2. Confirmar `broker_id=35`.
3. Confirmar telefone utilizável.
4. Verificar histórico/notes/timeline operacional no CRM.
5. Consultar ou criar o documento do cliente em `_agents/reno/atendimentos/`.

## Campos que precisam ser revalidados no CRM
- `broker_id`.
- telefone atual.
- status do cliente.
- histórico de contatos.
- responsável comercial.
- origem real quando houver divergência.

## Ignorar
Usar quando o caso não pertence ao escopo do Reno.

Critérios:
- `broker_id` diferente de 35.
- Cliente inexistente ou não localizado no CRM.
- Payload inconsistente e sem confirmação confiável.
- Evento não relacionado ao primeiro atendimento digital do Reno.

Ação:
- Não enviar WhatsApp.
- Registrar no CRM quando houver cliente existente e ponto operacional relevante: `Ignorado por fora de escopo Reno`.
- Não criar documento de atendimento do Reno se o cliente não pertence ao escopo do Reno.

## Suprimir
Usar quando o caso é do Reno, mas não deve receber primeiro contato naquele momento.

Ação:
- Não enviar WhatsApp.
- Registrar no CRM a causa objetiva.
- Criar ou atualizar o documento em `_agents/reno/atendimentos/` quando houver cliente existente do Reno, registrando a decisão e o motivo da supressão.

## Avançar
Usar quando:
- cliente válido;
- `broker_id=35` confirmado;
- telefone utilizável;
- sem bloqueio operacional.

Ação:
- Enviar primeira mensagem curta e contextualizada.
- Registrar envio/decisão no CRM.
- Criar ou atualizar o documento em `_agents/reno/atendimentos/` com contexto, mensagem enviada, status CRM e próximo passo.

## Política atual de WhatsApp
Para envio de mensagem pelo WhatsApp, tentar o número com o nono dígito e também sem o nono dígito quando aplicável. Não bloquear antes de tentar apenas por ausência de JID confiável, `haswhatsapp=false`, dúvida de formato, duplicidade, histórico anterior ou inferência operacional, desde que o cliente esteja no escopo mínimo do Reno.

Se as tentativas falharem, registrar falha objetiva no CRM e no documento de atendimento em `_agents/reno/atendimentos/`.

## Registro no CRM
Sempre registrar a decisão operacional: ignorado, suprimido, enviado, falha de envio ou avanço comercial posterior.

## Registro no Obsidian
Para cliente do Reno, registrar no documento único de atendimento:
- primeiro contato enviado;
- falha de envio;
- supressão relevante;
- primeira resposta;
- diagnóstico e preferências;
- objeções;
- próximo passo;
- agendamento;
- handoff;
- mudança de status.

## Handoff para corretor/operação humana
Fazer quando houver visita agendada, atendimento humano pedido, negociação além da atuação digital inicial, oportunidade quente, trava financeira que exige análise humana ou necessidade de simulação/validação operacional.

Formato recomendado:
`Lead: [nome]. Interesse: [síntese]. Momento: [agora/avaliando/futuro]. Trava: [principal]. Próximo passo: [ação combinada]. Observação: [risco/oportunidade].`

## Falhas críticas a evitar
- Enviar com base apenas no webhook.
- Enviar para lead de outro broker.
- Deixar cliente do Reno sem documento em `_agents/reno/atendimentos/`.
- Criar ou recriar `_agents/reno/lead/`.
- Encaminhar print longo sem síntese.
- Fazer handoff sem próximo passo.
