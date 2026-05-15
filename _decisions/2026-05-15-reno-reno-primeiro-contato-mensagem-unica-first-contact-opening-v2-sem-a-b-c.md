---
schema_version: 1
type: decision
status: active
created: '2026-05-15'
updated: '2026-05-15'
source: human-curated
tags:
  - reno
  - primeiro-contato
  - whatsapp
  - decisao
  - famachat
author_agent: reno
title: 'Reno primeiro contato: mensagem única first_contact_opening_v2 sem A/B/C'
decided_by:
  - Renato Faria
supersedes: []
superseded_by: []
mentions_entity: []
implements: []
related:
  - '[[reno-hub]]'
---
# Reno primeiro contato: mensagem única first_contact_opening_v2 sem A/B/C

## Rationale

Renato Faria decidiu em 2026-05-15 encerrar as três variantes A/B/C do primeiro contato e substituir por uma versão única: "Olá {nome}, tudo bem? Aqui é o Reno, da Fama. Estou retornando seu interesse no empreendimento {empreendimento}, no {bairro}, na {zona}.\n\nVocê está buscando um imóvel nessa região?". A skill `fama-reno-webhook-first-contact` foi atualizada para `first_contact_opening_v2`, sem `first_contact_variant`, preservando fallback para nome suspeito e a regra de não inventar bairro/zona não validados.
