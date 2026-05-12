---
type: moc
owner: renato
created: '2026-04-30'
updated: '2026-05-11'
tags:
  - entities
  - moc
  - perfis-canonicos
provenance: human-curated
---
# `_entities/` - Perfis canonicos

**Uma e somente uma** nota por entidade real. Aliases ficam no campo `aliases` do frontmatter, nao em arquivos separados. Quando o CRM tiver multiplos cadastros para a mesma pessoa, use `external_ids.crm_client_ids: [array]` + `external_ids.crm_client_id_canonical: <id>`.

## Proposito

`_entities/` guarda perfis consolidados de pessoas, organizacoes, propriedades e lugares. Eventos operacionais datados ficam em `_journal/reno/`; decisoes ficam em `_decisions/`; procedimentos duraveis ficam em `_runbooks/`.

## Subtypes

- `person` - clientes, brokers, parceiros, funcionarios, leads.
- `org` - construtoras, parceiros institucionais, fornecedores.
- `property` - imoveis, apartamentos, terrenos, lotes especificos e empreendimentos.
- `place` - bairros, regioes e zonas urbanas.
- `project` - projetos como entidades, raro; geralmente vai em `_projects/`.

## Estado atual

- Total atual de notas de entidade: **175** (`_entities/*.md`, excluindo `index.md`).
- Pessoas com `entity_type: person` explicito: **138**.
- Lugares com `entity_type: place` explicito: **10**.
- Propriedades com `entity_type: property` explicito: **8**.
- Organizacoes com `entity_type: org` explicito: **1**.
- Notas legadas sem `entity_type` explicito: **18**.
- Status: **172 active** / **3 archived**.

## Migracao Reno 2026-05-11

Os atendimentos antigos de `_agents/reno/atendimentos/` foram migrados para modelo duplo:

- perfil consolidado em `_entities/`;
- evento operacional datado em `_journal/reno/`.

Quando houve duplicidade provavel, a entidade canonica recebeu aliases e multiplos IDs externos. Quando houve ambiguidade real, a nota manteve secao `## Ambiguidade` ou observacao equivalente.

Status dos atendimentos migrados:

- 153 fontes de atendimento foram inventariadas.
- 152 fontes foram migradas ou special-migrated para o novo modelo.
- `whatsapp-lua` ficou como revisao manual pendente.
- `pending` normal no manifesto: 0.

Use o manifesto da migracao e os eventos em `_journal/reno/` para navegar os atendimentos migrados. Este indice nao tenta listar todos os 175 perfis.

## Historico

Antes da migracao Reno 2026-05-11, este indice descrevia uma curadoria menor de 60 perfis canonicos, incluindo 38 leads do Reno. Esses numeros eram uma fotografia operacional anterior, nao o estado atual de `_entities/`.
