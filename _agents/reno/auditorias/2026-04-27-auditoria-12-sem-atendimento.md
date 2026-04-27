---
type: journal
owner: reno
created: '2026-04-27'
updated: '2026-04-27'
tags:
  - reno
  - auditoria
  - sem-atendimento
  - whatsapp
  - crm
---
# Auditoria Reno — 12 clientes ainda em Sem Atendimento — 2026-04-27

## Objetivo
Responder por que os 12 clientes ainda em `Sem Atendimento` não receberam a primeira mensagem do Reno.

## Fontes verificadas
- CRM/FamaChat: clientes `broker_id=35 AND status='Sem Atendimento'`.
- Notas em `clientes_id_anotacoes`.
- Eventos `sistema_webhook_events` para `cliente.created`.
- Duplicidades por telefone normalizado.
- Checagem de usuários internos ativos por telefone.

## Conclusão executiva
Os 12 não ficaram em `Sem Atendimento` porque a fila parou. Todos tinham webhook `cliente.created` aceito, mas a primeira tentativa original falhou por erro antigo de bridge/JID. Depois, na recuperação de 27/04, o envio foi deliberadamente bloqueado por revalidação operacional.

Distribuição dos motivos atuais:
- 9 clientes: duplicidade, histórico anterior, atendimento em andamento ou continuidade operacional em outros cadastros.
- 3 clientes: WhatsApp ausente, não confirmado ou contato não confiável.

Nenhum dos 12 bateu com usuário interno ativo pelo telefone.

Importante: `lead_automatico` não foi usado como motivo isolado de bloqueio nesta auditoria. Onde apareceu, a decisão foi baseada em duplicidade/histórico real ou WhatsApp não confiável.

## Lista cliente a cliente

| ID | Cliente | Motivo principal | Evidência curta | Decisão |
|---:|---|---|---|---|
| 10967 | Flaviahair Especialista em Mechas e Loiro | Duplicidade/histórico anterior | Mesmo telefone em cadastros anteriores; notas de 2º/3º contato e tentativa manual por outro corretor; duplicata posterior por SLA. | Não enviar automático. Revisão humana. |
| 10971 | Bruno Sávio | Duplicidade/histórico anterior | Cadastro original arquivado com notas de tratativa sobre valores; outro cadastro SLA com outro corretor. | Não enviar automático. |
| 10974 | Grazyelly Macêdo | Duplicidade/atendimento em andamento | Duplicata em `Em Atendimento` com notas de tentativa de marcar visita. | Não enviar automático para não conflitar. |
| 10975 | Andre Luiz duca | Duplicidade/histórico anterior | Cadastros anteriores arquivados com nota de já estar em atendimento e 2º contato; retorno automático registrado. | Não enviar automático. |
| 10976 | Silvio Humberto Silva | Duplicidade/histórico anterior | Duplicatas com notas de 2º/3º contato por outros corretores. | Não enviar automático. |
| 10979 | Júlia | Duplicidade/histórico anterior | Duplicatas com envio de vídeo do decorado, 3ª tentativa e contexto comercial. | Não enviar automático. |
| 10987 | Thais Ravazio | WhatsApp não utilizável | `haswhatsapp=false`, sem JID; duplicatas indicam número inexistente/caixa postal. | Não enviar; validar contato. |
| 10991 | Rodrigo Moreira | WhatsApp não confirmado | `haswhatsapp=false` apesar de JID cadastrado; duplicata posterior por SLA com outro corretor. | Não enviar até validar contato/propriedade. |
| 10993 | Luis | WhatsApp não utilizável | `haswhatsapp=false`, sem JID; duplicatas indicam sem WhatsApp/número inexistente. | Não enviar; validar contato. |
| 10996 | Sibely Cortes | Duplicidade/retornos anteriores | Histórico de retornos antigos e cadastro posterior com broker 24 em `Não Respondeu`; nota corrigida após erro de interpretação de `lead_automatico`. | Não enviar automático. |
| 10998 | Carmen Vicente Santos Vicente Santos | Duplicidade extensa/baixa resposta | 12 duplicatas, múltiplas tentativas anteriores, notas de baixa resposta/viabilidade. | Não enviar automático. |
| 10999 | Guilherme Mendes | Duplicidade/continuidade operacional | Histórico anterior com envio de decorado, tentativa de visita e duplicata posterior com broker 24; `lead_automatico` não é motivo isolado. | Não enviar automático. |

## Observações técnicas
- Todos os 12 têm evento webhook aceito (`202`), mas isso prova apenas ingestão, não entrega final do WhatsApp.
- As notas originais mostram falha de envio por bridge/JID antigo.
- A recuperação posterior preservou `Sem Atendimento` por segurança, não por falha atual da fila.
