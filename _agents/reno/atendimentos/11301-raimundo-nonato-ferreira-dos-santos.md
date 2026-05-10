---
broker_id: 35
client_id: 11301
created: '2026-05-09'
entity_name: Raimundo Nonato Ferreira Dos Santos
entity_type: atendimento
owner: reno
source: Facebook Ads
status_crm: Não Respondeu
tags:
  - reno
  - atendimento
  - whatsapp
  - famachat
  - primeiro-contato
  - repescagem
  - follow-up
type: entity-profile
updated: '2026-05-10'
---
# Raimundo Nonato Ferreira Dos Santos

## Resumo atual
Lead validado no CRM como pertencente ao Reno (`broker_id=35`) e ainda em `Não Respondeu`. Primeiro contato foi enviado em 2026-05-09 e, em 2026-05-10, a repescagem step 1 foi enviada com sucesso via WhatsApp. Branch de repescagem avançada para `step=1`, com próximo envio previsto para 2026-05-11 09:10.

## Dados operacionais
- Cliente CRM: 11301
- Origem: Facebook Ads
- Corretor/atendente: Reno Agente de IA (`broker_id=35`)
- Status CRM atual: `Não Respondeu`
- Empreendimento de interesse validado: Union Vista / Grand Ville
- Evento de origem: `cliente.created` / rota `famachat-created`
- Repescagem: `step=1`, `entry_shift=madrugada`, `last_sent_at=2026-05-10T05:30:03-03:00`, `next_run_at=2026-05-11T09:10:00-03:00`
- JID validado no CRM: `559888996947@s.whatsapp.net`

## Contexto comercial
O cliente entrou com interesse no Union Vista / Grand Ville. A abertura inicial buscou confirmar o contexto de busca na região; a repescagem step 1 mudou o ângulo para finalidade de compra, perguntando se o foco atual é morar ou investir.

## Diagnóstico
- Necessidade: ainda não diagnosticada.
- Momento: ainda não diagnosticado.
- Decisão: ainda não diagnosticada.
- Viabilidade: ainda não diagnosticada.

## Histórico curado de interações
- 2026-05-09 — Primeiro WhatsApp enviado pelo Reno, contextualizando o interesse no Union Vista/Grand Ville e perguntando se o cliente procurava imóvel nessa região.
- 2026-05-09 — CRM atualizado com nota de envio; status `Sem Atendimento -> Não Respondeu`; branch `meta_data.reno_followup.repescagem` inicializada com `step=0`.
- 2026-05-10 — Repescagem step 1 enviada via WhatsApp para o JID validado do CRM; mensagem curta e consultiva, focada em finalidade de compra (morar vs investir); nota CRM registrada e branch avançada para `step=1`.

## Objeções e travas
Nenhuma objeção registrada até o momento.

## Próximo passo
Aguardar resposta do cliente. Se permanecer em silêncio e continuar elegível, enviar repescagem step 2 em `2026-05-11T09:10:00-03:00`, com novo ângulo consultivo.

## Observações operacionais
- WhatsApp enviado com sucesso e validado por `onWhatsApp`.
- O CRM permanece como fonte operacional da verdade; o vault contém apenas síntese curada.
- Próximo follow-up já registrado em `meta_data.reno_followup.repescagem.next_run_at`.
