---
type: entity-profile
owner: reno
created: '2026-04-29'
updated: '2026-04-29'
entity_type: cliente
entity_name: Jessica
client_id: 11110
status: Não Respondeu
broker_id: 35
flow: repescagem
tags:
  - reno
  - repescagem
  - nao-respondeu
  - garden-sul
---
# Jessica — Cliente 11110

## Resumo operacional
- Cliente: Jessica
- client_id: 11110
- Broker: Reno (`broker_id=35`)
- Status operacional no FamaChat: `Não Respondeu`
- Fluxo ativo: `repescagem`
- Origem: SLA Cascata
- Contexto FamaChat: primeiro contato manual já enviado pelo Reno; interesse indicado no Garden Sul, bairro Jardim Sul; cliente ainda sem resposta real.

## Contexto comercial curado
Ângulo principal: **imóvel específico**.

Interesse associado ao empreendimento Garden Sul, no Jardim Sul, Uberlândia/MG. Produto em lançamento na Zona Sul, com plantas de 2 quartos com suíte e opções de metragem variada. Como não houve resposta ao primeiro contato, a abordagem de repescagem evitou repetir abertura de cadastro/interesse e criou novo motivo para resposta: entender se o perfil do Garden Sul encaixa no momento da cliente antes de olhar opções soltas.

## Repescagem — histórico

### Step 1 enviado — 2026-04-29T13:37:59-03:00
**Intent:** novo motivo para responder.

**Context angle:** imóvel específico / Garden Sul no Jardim Sul.

**Mensagem enviada:**

> Oi, Jessica! Tudo bem? 🏡
>
> Sobre o Garden Sul, no Jardim Sul, uma coisa que ajuda bastante é entender se ele combina com o seu momento antes de você perder tempo olhando opções soltas.
>
> Ele tem plantas diferentes e proposta de lançamento na Zona Sul, então vale organizar o caminho de forma **simples e realista**.
>
> Você quer que eu te ajude a ver se esse perfil de imóvel encaixa melhor para você?

**Registro CRM:** envio registrado via `mark_reno_followup_sent`.

**Próximo next_run_at:** 2026-04-30T08:00:00-03:00.

**Próximo passo:** se a cliente permanecer em silêncio e continuar elegível em `Não Respondeu`, próxima execução deve usar step 2 da régua de repescagem. Se houver resposta real, a repescagem deve parar e o atendimento deve seguir por fluxo normal do Reno, com status migrando para `Em Atendimento` quando aplicável.
