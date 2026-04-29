---
broker_id: 35
client_id: 10952
client_name: Marcos Caetano
created: '2026-04-29'
entity_name: Marcos Caetano
entity_type: client
flow: repescagem
last_sent_at: '2026-04-29T08:37:22-03:00'
last_step: 1
next_run_at: '2026-04-30T12:00:00-03:00'
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - nao-respondeu
type: entity-profile
updated: '2026-04-29'
---
# Marcos Caetano — Repescagem Reno

## Identificação
- Cliente: Marcos Caetano
- client_id: 10952
- broker_id: 35
- Status operacional no FamaChat: Não Respondeu
- Fluxo: repescagem

## Contexto comercial usado
- Lead em silêncio após contatos iniciais do Reno.
- Interesse registrado no FamaChat relacionado ao Union Vista, no Grand Ville, e vínculo também com empreendimento da linha Union em Uberlândia.
- Ângulo comercial principal: imóvel específico / comparação de região e encaixe de compra.
- Sem documento curado anterior encontrado no Vault para este atendimento.

## Último envio de repescagem
- Data/hora de envio: 2026-04-29T08:37:22-03:00
- Step enviado: 1
- Intenção do step: novo motivo para responder, organizando a busca sem repetir o primeiro contato.

### Mensagem enviada
```text
Oi, Marcos! Tudo bem? 🏡

Vi que sua busca passou pelo Union Vista, no Grand Ville, e também tem opção da linha Union em outra região. Nessa hora, olhar só o empreendimento pode confundir, porque região, prazo de entrega e forma de pagamento precisam encaixar no seu momento.

Posso te ajudar a organizar isso de um jeito **simples e sem pressão**: você prefere focar no Grand Ville ou quer comparar com opções parecidas em Uberlândia?
```

## Próximo passo
- Próximo follow-up previsto: 2026-04-30T12:00:00-03:00
- Próximo step se não houver resposta: step 2 — evitar caminho errado com opções fora do momento financeiro/região/prazo.
- Condição de parada: se o cliente responder, sair da repescagem e conduzir atendimento consultivo.

## Registro operacional
- Envio registrado no CRM pela tool específica `mark_reno_followup_sent`.
- `clientes.meta_data.reno_followup.repescagem` atualizado pela tool operacional, sem SQL manual.
