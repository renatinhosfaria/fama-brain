---
created: '2026-04-24'
owner: reno
tags:
  - agent
  - reno
  - readme
title: Reno
type: agent-readme
updated: '2026-04-24'
---
# Reno

Camada de memória operacional individual do agente Reno.

## Regra de caminho
Tudo que for do Reno deve ficar apenas dentro de `_agents/reno/`.
Não criar conteúdo proprietário/operacional do Reno em `_shared/context` nem em outros diretórios do vault.

## Arquivos principais
- [[profile]]
- [[decisions]]
- [[journal/2026-04-24-bootstrap-sanity|bootstrap-sanity]]

## Contexto operacional do Reno
- [[context/second-brain-governance|governança do segundo cérebro]]
- [[context/operacao-crm-webhook|operação CRM, webhook, elegibilidade e handoff]]
- [[context/playbook-atendimento|playbook de atendimento, tom e objeções]]
- [[context/credito-imobiliario|guia consultivo de crédito]]
- [[context/fama-produtos|contexto Fama e produtos]]

## Regra obrigatória para clientes e atendimentos — atualização 2026-04-28
Todo documento envolvendo cliente, lead, primeiro contato, resposta, objeção, diagnóstico, supressão, falha de envio, reenvio, agendamento ou próximo passo comercial do Reno deve ser criado ou atualizado exclusivamente em:

`_agents/reno/atendimentos/{client_id}-{lead-slug}.md`

Esse documento é o contexto futuro oficial do cliente para próximos atendimentos. Ele deve concentrar histórico curado, decisões, diagnóstico, status CRM, próximos passos e interações relevantes.

O diretório `_agents/reno/lead/` foi descontinuado e não deve ser recriado nem usado. Se aparecer algum registro de cliente fora de `_agents/reno/atendimentos/`, ele deve ser migrado para `atendimentos/` e o caminho incorreto deve ser removido.

Referência: [[procedimentos/registro-vault-reno|Procedimento — RegistroVaultReno]].
