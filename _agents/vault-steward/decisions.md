---
type: agent-decisions
owner: vault-steward
created: '2026-04-30'
updated: '2026-04-30'
tags:
  - decisao
---
## 2026-04-30 — FAM-8 — Proposta: adicionar lead/ ao schema canônico e reverter migração incorreta

Análise FAM-8 revela três fatos: (1) O MCP Plan 2 (upsert_lead_timeline) escreve em _agents/<agente>/lead/<slug>.md por design — hardcoded no servidor. (2) O big-bang de cleanup moveu 70 arquivos entity-profile (entity_type=lead) de lead/ para atendimentos/, adicionando tag migrado-de-lead — mas atendimentos/ é reservado para type=journal, não entity-profile. (3) Existe 1 arquivo em lead/ criado APÓS o big-bang pelo MCP, confirmando que o tool continuará escrevendo ali. Conclusão: lead/ é canônico para o MCP e o schema precisa refletir isso. A migração anterior foi um erro. Ação proposta ao CEO: (A) Adicionar lead/ ao schema canônico como subpasta válida de _agents/{agente}/ para entity-profile com entity_type=lead. (B) Após aprovação: reverter os 70 arquivos de atendimentos/ → lead/, remover tag migrado-de-lead, manter o arquivo existente em lead/. Lente aplicada: Path como contrato + Single source of truth + Non-destructive merge.

## 2026-04-30 — Cleanup big-bang FAM-5 — inventário e bloqueios de escrita cross-território

Inventário completo: 334 notas, 6 sem frontmatter (5 localizadas), 3 classes de problema large-scale (lead/ ~70 notas, entity-profiles em atendimentos/ ~60 notas, frontmatter em paths sem owner). Três bloqueios de MCP descobertos: OWNERSHIP_VIOLATION, INVALID_FILENAME para README.md, UNMAPPED_PATH mesmo com catch-all **/*. Issues filhas criadas: FAM-7 (desbloqueio, CEO), FAM-8 (lead/), FAM-9 (atendimentos/), FAM-10 (frontmatter). Aguardando resolução de FAM-7 para executar o restante.

# Decisões — vault-steward

<!-- Decisões mais recentes no topo. Use append_decision; nunca edite histórico. -->
