---
type: journal
owner: reno
created: '2026-04-27'
updated: '2026-04-28'
tags:
  - reno
  - procedimento
  - obsidian
  - atendimento
  - registro-vault
---
# Procedimento — RegistroVaultReno

## Objetivo
Manter um documento principal, único e auditável para cada atendimento do Reno no vault.

Esse documento serve como contexto futuro oficial do cliente nos próximos atendimentos. Ele deve permitir que o Reno retome a conversa sabendo origem, histórico, diagnóstico, decisões, objeções e próximo passo sem depender apenas da memória curta da conversa atual.

## Caminho determinístico obrigatório
`_agents/reno/atendimentos/{client_id}-{lead-slug}.md`

- `client_id` é a chave primária operacional.
- O slug do nome é apenas legibilidade.
- Todo atendimento envolvendo cliente deve usar `atendimentos/`.
- `_agents/reno/lead/` está descontinuado, foi removido e não deve ser recriado.
- Nenhum documento de cliente deve ser salvo em `_agents/reno/lead/`, `_agents/reno/entity/`, `_shared/context/` ou outro caminho alternativo.

## Quando criar ou atualizar
Criar ou atualizar o documento de atendimento sempre que houver cliente existente do Reno e qualquer uma destas situações:

1. primeiro contato;
2. reenvio;
3. falha de envio;
4. supressão operacional relevante;
5. primeira resposta;
6. qualificação/diagnóstico;
7. objeção ou preferência importante;
8. próximo passo definido;
9. visita presencial agendada;
10. handoff;
11. mudança de status no CRM;
12. informação útil para retomada futura.

## Frontmatter compatível
Usar sempre tipo aceito pelo schema do mcp-obsidian:

```yaml
type: journal
owner: reno
client_id: 12345
lead_name: Nome do Lead
status: Não Respondeu
source: Facebook Ads
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags:
  - reno
  - atendimento
```

Também é aceitável `type: entity-profile` quando o registro já estiver nesse formato e o schema aceitar. Nunca usar `type: reno-atendimento`, pois esse tipo não é aceito pelo schema atual do mcp-obsidian.

## Conteúdo mínimo do documento
O documento deve conter, de forma curada:

- identificação do cliente e `client_id` quando disponível;
- origem do lead;
- status comercial atual observado no CRM;
- interesse atual;
- diagnóstico de contexto, necessidade, decisão e viabilidade quando houver;
- objeções ativas;
- próximos passos;
- linha do tempo resumida das interações relevantes;
- decisões operacionais do Reno: enviado, falhou, suprimido, aguardando resposta, em atendimento, agendado etc.

## Fluxo único
1. Validar o cliente no CRM.
2. Confirmar escopo Reno quando aplicável (`broker_id=35`).
3. Resolver o caminho determinístico pelo `client_id` e slug do nome.
4. Chamar `mcp_mcp_obsidian_read_note` no caminho.
5. Se não existir, criar com `mcp_mcp_obsidian_write_note`.
6. Se existir, anexar nova interação/decisão com `mcp_mcp_obsidian_append_to_note`.
7. Registrar no documento: origem, resumo, decisão operacional, status CRM, diagnóstico/observações, próximos passos e linha do tempo resumida.
8. Registrar tanto envios quanto falhas/supressões relevantes, desde que o cliente exista no CRM.
9. Se WhatsApp/status/nota CRM já foram concluídos e o vault falhar, não reenviar WhatsApp; registrar falha no CRM para reconciliação.

## Regra de migração
Se aparecer qualquer documento de cliente em `_agents/reno/lead/` ou outro caminho incorreto:

1. criar/atualizar o documento correspondente em `_agents/reno/atendimentos/`;
2. preservar o conteúdo útil original;
3. adicionar tag `migrado-de-lead` quando vier de `lead/`;
4. remover o documento/caminho incorreto após validar que a cópia em `atendimentos/` existe.

## Nota operacional
O CRM/FamaChat continua sendo a fonte de verdade. A reconciliação do vault deve reconstruir documentos a partir das notas do CRM quando necessário, mas sempre gravando o resultado final em `_agents/reno/atendimentos/`.
