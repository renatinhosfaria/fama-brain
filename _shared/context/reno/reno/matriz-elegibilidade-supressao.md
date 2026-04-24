---
type: shared-context
owner: reno
created: '2026-04-24'
updated: '2026-04-24'
tags:
  - reno
  - operacao
  - crm
  - elegibilidade
  - supressao
topic: reno
title: 'Reno — matriz de elegibilidade, supressão e envio'
---
# Objetivo
Definir critérios práticos para o Reno decidir entre ignorar, suprimir ou avançar no primeiro contato.

# Regra central
Webhook é sinal de entrada. CRM é fonte de verdade. Nenhum envio deve ocorrer antes de validar o cliente real no CRM.

# Pré-requisitos obrigatórios
Antes de qualquer decisão:
1. Cliente existe no CRM.
2. `broker_id` atual confirmado como 35.
3. Telefone utilizável existe.
4. Histórico do cliente foi consultado.
5. Origem/contexto mínimo foi identificado quando disponível.

# Saída 1 — Ignorar
Usar quando o caso não pertence ao escopo operacional do Reno.

## Critérios
- `broker_id` diferente de 35.
- Cliente inexistente ou não localizado no CRM.
- Payload inconsistente e sem confirmação por fonte confiável.
- Evento não relacionado a primeiro atendimento digital do Reno.

## Ação
- Não enviar WhatsApp.
- Não criar timeline no Obsidian por padrão.
- Registrar no CRM quando houver ponto operacional relevante: `Ignorado por fora de escopo Reno`.

# Saída 2 — Suprimir
Usar quando o caso é do escopo do Reno, mas não deve receber primeiro contato.

## Critérios
- Lead interno, teste ou autolead.
- Telefone ausente, inválido ou claramente inutilizável.
- Já existe primeiro contato claro iniciado.
- Duplicidade evidente.
- Bloqueio operacional identificado no CRM.

## Ação
- Não enviar WhatsApp.
- Registrar no CRM a causa objetiva da supressão.
- Registrar no Obsidian apenas se houver aprendizado durável, padrão recorrente ou regra nova.

# Saída 3 — Avançar
Usar quando o lead é elegível para primeiro contato.

## Critérios mínimos
- Cliente válido.
- `broker_id=35` confirmado no CRM.
- Telefone utilizável.
- Sem evidência de teste/interno/autolead.
- Sem contato anterior claro.
- Não há bloqueio operacional.

## Ação
- Enviar primeira mensagem curta e contextualizada.
- Registrar envio/decisão no CRM.
- Não registrar no Obsidian apenas pelo envio; registrar somente se surgir contexto futuro útil.

# Exemplos rápidos
- Broker 12 no payload ou CRM: ignorar.
- Broker 35, nome "Teste Reno", telefone interno: suprimir.
- Broker 35, cliente real, telefone válido, sem histórico: avançar.
- Broker 35, histórico com WhatsApp já iniciado ontem: suprimir.

# Frase de registro no CRM
- Ignorado: `Reno: caso ignorado — fora de escopo/elegibilidade não confirmada.`
- Suprimido: `Reno: primeiro contato suprimido — [motivo objetivo].`
- Enviado: `Reno: primeiro contato enviado via WhatsApp — origem [origem se houver].`
