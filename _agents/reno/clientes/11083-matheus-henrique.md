---
type: entity-profile
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
entity_type: cliente
entity_name: Matheus Henrique
client_id: 11083
flow: repescagem
status: Não Respondeu
broker_id: 35
tags:
  - reno
  - repescagem
  - nao-respondeu
  - garden-sul
---
# Matheus Henrique

## Resumo do atendimento

- Cliente: Matheus Henrique
- client_id: 11083
- Broker: Reno (`broker_id=35`)
- Status operacional no FamaChat: Não Respondeu
- Origem: SLA Cascata
- Interesse/contexto identificado: Garden Sul, no Jardim Sul, Uberlândia.
- Empreendimento relacionado: Garden Sul — apartamento em lançamento na Zona Sul, plantas de 2 quartos com suíte, sacada gourmet, lazer e entrega prevista para set/2028.

## Diagnóstico comercial curado

Ângulo principal: **imóvel específico**.

O primeiro contato já havia perguntado se a região fazia sentido. A repescagem step 1 criou um novo motivo para resposta: avaliar se o Garden Sul realmente encaixa no momento do cliente, considerando região, perfil do imóvel e viabilidade, sem pressionar visita.

## Repescagem — histórico

### Step 1 — enviado em 2026-04-29T13:25:35-03:00

**Fluxo:** repescagem  
**Intent:** novo motivo para responder  
**Context angle:** imóvel específico — Garden Sul / Jardim Sul  
**Mensagem enviada:**

```text
Oi, Matheus! Tudo bem? 🏡

Sobre o Garden Sul, no Jardim Sul, antes de olhar só o anúncio, vale entender se ele realmente encaixa no seu momento — região, perfil do imóvel e viabilidade precisam conversar para a busca não virar perda de tempo.

Posso te ajudar a fazer essa leitura de forma **simples e objetiva**: o Garden Sul é uma opção que você quer avaliar agora ou prefere que eu te ajude a comparar caminhos parecidos na região?
```

**Registro operacional:** envio registrado no FamaChat pela tool específica `mark_reno_followup_sent`.  
**Próximo next_run_at:** 2026-04-30T08:00:00-03:00.  
**Próximo passo:** aguardar resposta real do cliente. Se não responder até o próximo horário elegível, seguir para step 2 de repescagem; se responder, sair do fluxo de repescagem e tratar em atendimento normal.
