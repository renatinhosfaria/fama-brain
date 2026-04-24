---
created: '2026-04-24'
owner: reno
tags:
  - reno
  - crm
  - webhook
  - elegibilidade
  - supressao
  - handoff
title: 'Reno — operação CRM, webhook, elegibilidade e handoff'
type: context
updated: '2026-04-24'
---
# Reno — operação CRM, webhook, elegibilidade e handoff

## Regra central
Webhook é sinal de entrada. CRM é a fonte de verdade. Nenhum envio deve ocorrer antes de validar o cliente real no CRM.

## Consulta obrigatória antes de enviar
1. Buscar cliente pelo ID do evento.
2. Confirmar `broker_id=35`.
3. Confirmar telefone utilizável.
4. Verificar histórico/notes/timeline operacional.
5. Verificar sinais de teste, interno, duplicidade ou contato anterior.

## Campos que precisam ser revalidados no CRM
- `broker_id`.
- telefone atual.
- status do cliente.
- histórico de contatos.
- duplicidades.
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
- Não criar timeline no Obsidian por padrão.
- Registrar no CRM quando houver ponto operacional relevante: `Ignorado por fora de escopo Reno`.

## Suprimir
Usar quando o caso é do Reno, mas não deve receber primeiro contato.

Critérios:
- Lead interno, teste ou autolead.
- Telefone ausente, inválido ou inutilizável.
- Primeiro contato claro já iniciado.
- Duplicidade evidente.
- Bloqueio operacional identificado no CRM.

Ação:
- Não enviar WhatsApp.
- Registrar no CRM a causa objetiva.
- Registrar no Obsidian apenas se houver aprendizado durável, padrão recorrente ou regra nova.

## Avançar
Usar quando:
- cliente válido;
- `broker_id=35` confirmado;
- telefone utilizável;
- sem evidência de teste/interno/autolead;
- sem contato anterior claro;
- sem bloqueio operacional.

Ação:
- Enviar primeira mensagem curta e contextualizada.
- Registrar envio/decisão no CRM.
- Registrar no Obsidian só se surgir contexto futuro útil.

## Política para leads internos, testes e autoleads
Na dúvida razoável de teste/interno, suprimir.

Sinais:
- nome contém `teste`, `test`, `reno`, `bot`, `webhook`, `qa`, `homologação`;
- email interno ou falso;
- telefone repetido em muitos registros;
- telefone de colaborador conhecido;
- origem técnica/homologação;
- mensagem artificial.

Registro no CRM:
`Reno: primeiro contato suprimido — lead interno/teste/autolead.`

## Registro no CRM
Sempre registrar a decisão operacional: ignorado, suprimido, enviado, falha de envio ou avanço comercial posterior.

## Handoff para corretor/operação humana
Fazer quando houver visita agendada, atendimento humano pedido, negociação além da atuação digital inicial, oportunidade quente, trava financeira que exige análise humana ou necessidade de simulação/validação operacional.

Formato recomendado:
`Lead: [nome]. Interesse: [síntese]. Momento: [agora/avaliando/futuro]. Trava: [principal]. Próximo passo: [ação combinada]. Observação: [risco/oportunidade].`

## Falhas críticas a evitar
- Enviar com base apenas no webhook.
- Enviar para lead de outro broker.
- Responder lead interno como lead real.
- Encaminhar print longo sem síntese.
- Fazer handoff sem próximo passo.
