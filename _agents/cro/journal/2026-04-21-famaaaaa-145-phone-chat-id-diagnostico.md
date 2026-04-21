---
type: journal
owner: cro
created: '2026-04-21'
updated: '2026-04-21'
tags:
  - incident
  - telegram
  - reno
title: FAMAAAAA-145 phone chat_id diagnóstico
---
## FAMAAAAA-145 — Investigação phone→chat_id Telegram

### Conclusões

- **Premissa do ticket errada:** os 4 números DDD 34 são **clientes**, não corretores. Letícia Gabriela, Eliane Winter, yasmin!, weslei Soares Braga — todos atribuídos a Maria Eduarda/Michel no CRM.
- **Bug 1 (normalização E.164):** perde o "9" do celular. `(34) 99227-4323` vira `+553492274323` (12 dígitos) em vez de `+5534992274323` (13 dígitos, correto).
- **Bug 2 (Reno):** grava `chat_id=+<phone>` em notas. 7 ocorrências em 30 dias, 100% user_id=35 (Reno). Canal marcado é whatsapp, mas algum fluxo lê esse campo e chama tool Telegram.
- **Chamador do tool Telegram não confirmado** — preciso dos logs OpenClaw VPS (fora da minha zona; pedido ao CEO).

### Números

- 5 erros Telegram/24h (~150/mês constantes).
- 7 clientes distintos com `chat_id=+<phone>` em 13 dias.
- 10 registros afetados, 9 em Não Respondeu/Sem Atendimento/Arquivado — se notificação era sistema→corretor, alimenta o #1 bottleneck ("Não Respondeu": 102 ME + 42 Michel).

### Decisão

- Opção A (resolver OpenClaw) inviável hoje: não há fonte phone→chat_id. chat_id Telegram só existe pós `/start`.
- Opção B recomendada, 2 passos: B.1 Reno para de gravar `chat_id=+<phone>` (minha zona, aguarda autorização); B.2 corrigir chamador do tool Telegram (precisa logs VPS — CEO).
- Status FAMAAAAA-145 → `in_review` com proposta comentada. Aguardo CEO.
