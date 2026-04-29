---
broker_id: 35
client_id: 10971
created: '2026-04-29'
entity_name: Bruno Sávio
entity_type: cliente
flow: repescagem
owner: reno
status: Não Respondeu
tags:
  - reno
  - repescagem
  - whatsapp
  - nao-respondeu
type: entity-profile
updated: '2026-04-29'
---
# Bruno Sávio — client_id 10971

## Resumo operacional
- Cliente do Reno (`broker_id=35`) em status **Não Respondeu**.
- Fluxo ativo: **repescagem**.
- Origem operacional: SLA Cascata a partir do cliente original 10844.
- Interesse/contexto conhecido: **Union Vista**, no **Grand Ville**, Uberlândia.
- Contexto comercial útil: começou a procurar agora; houve nota anterior indicando verificação se os valores estavam dentro do que busca.

## Diagnóstico comercial
Ângulo principal usado: **imóvel específico + viabilidade/valores**.

A abordagem evitou repetir o primeiro contato e trouxe um novo motivo para resposta: organizar a busca e entender se valores/caminho de compra fazem sentido antes de seguir com opções soltas.

## Histórico curado de repescagem

### 2026-04-29 09:43:05 -03:00 — Repescagem step 1 enviada

**Mensagem enviada:**

> Oi, Bruno! Tudo bem? 🏡
>
> Sobre o Union Vista, no Grand Ville, o ponto agora não é só ver se o imóvel é bonito — é entender se os valores e o caminho de compra encaixam no que você busca, principalmente porque você começou a procurar agora.
>
> Posso te ajudar a organizar isso de forma **simples e realista**, sem compromisso.
>
> Você prefere que eu comece te explicando os valores/opções do Union Vista ou primeiro pela viabilidade da compra?

**Contexto/ângulo usado:** imóvel específico (Union Vista / Grand Ville) combinado com viabilidade/valores.

**Próximo `next_run_at`:** 2026-04-30T08:00:00-03:00.

**Próximo passo:** aguardar resposta real do cliente. Se não houver resposta até o próximo horário elegível, seguir para repescagem step 2. Se houver resposta, não responder por este fluxo; mover/seguir atendimento normal do Reno fora da repescagem.
