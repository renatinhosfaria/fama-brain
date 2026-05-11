---
schema_version: 1
type: reference
status: active
created: 2026-05-11
updated: 2026-05-11
source: agent-generated
author_agent: null
verified_by: null
verified_at: null
confidence: medium
tags: [meta, migration, atendimentos, second-brain]
related: ["[[migration-2026-05-11-reno-second-brain]]", "[[reno-hub]]"]
---
# Manifesto de migracao dos atendimentos Reno - 2026-05-11

Este manifesto controla a migracao dos arquivos de atendimento de `_agents/reno/atendimentos/` para o modelo duplo de entidades canonicas em `_entities/` e eventos datados em `_journal/reno/`. Algumas linhas ja podem estar com status migrado conforme os lotes forem concluidos.

## Escopo

- Total de fontes mapeadas: 153.
- Status de cada linha registrado na tabela fonte-destino.
- O manifesto registra origem, destino proposto, casos especiais para revisao e lotes ja migrados.

## Status dos lotes

- Piloto: concluido.
- Batch 1: concluido.
- Batch 2: concluido.
- Batch 3: concluido.
- Demais linhas: permanecem pendentes ate os proximos lotes.

## Regras de destino

- Se o basename corresponde a `^(\d+)-(.+)$`, o ID do cliente e o primeiro grupo e o slug e o segundo grupo.
- Se o basename corresponde a `^cliente-(\d+)-(.+)$`, o ID do cliente e o primeiro grupo e o slug e o segundo grupo.
- Caso contrario, o ID do cliente fica em branco e o slug e o basename.
- O destino de entidade padrao e `_entities/<slug>.md`.
- O destino de journal padrao e `_journal/reno/2026-05-11-atendimento-<slug>.md`.

## Casos especiais

- `lote-reno-dup-recovery-20260427-3min.md` is journal-only, target `_journal/reno/2026-04-27-lote-reno-dup-recovery-3min.md`.
- `whatsapp-lua.md` manual review; if Lua is identifiable, create/update `_entities/lua.md` and journal.
- `cliente-11010-eduarda.md` consolidates with `_entities/eduarda.md`, preserving `crm_client_ids`.

## Tabela fonte-destino

| Source | Client ID | Slug | Entity target | Entity exists? | Journal target | Status |
| --- | --- | --- | --- | --- | --- | --- |
| `_agents\reno\atendimentos\10570-553496511323.md` | 10570 | 553496511323 | `_entities/553496511323.md` | no | `_journal/reno/2026-05-11-atendimento-553496511323.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10657-lead-garden-sul.md` | 10657 | lead-garden-sul | `_entities/lead-garden-sul.md` | no | `_journal/reno/2026-05-11-atendimento-lead-garden-sul.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10659-davi-maia.md` | 10659 | davi-maia | `_entities/davi-maia.md` | yes | `_journal/reno/2026-05-11-atendimento-davi-maia.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10660-giovanna.md` | 10660 | giovanna | `_entities/giovanna.md` | no | `_journal/reno/2026-05-11-atendimento-giovanna.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10662-elias-fernandes.md` | 10662 | elias-fernandes | `_entities/elias-fernandes.md` | yes | `_journal/reno/2026-05-11-atendimento-elias-fernandes.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10714-joao-pedro.md` | 10714 | joao-pedro | `_entities/joao-pedro.md` | yes | `_journal/reno/2026-05-11-atendimento-joao-pedro.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10923-silva-porto.md` | 10923 | silva-porto | `_entities/silva-porto.md` | yes | `_journal/reno/2026-05-11-atendimento-silva-porto.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10924-edson-tolentino.md` | 10924 | edson-tolentino | `_entities/edson-tolentino.md` | yes | `_journal/reno/2026-05-11-atendimento-edson-tolentino.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10925-wanderson-alessandro.md` | 10925 | wanderson-alessandro | `_entities/wanderson-alessandro.md` | no | `_journal/reno/2026-05-11-atendimento-wanderson-alessandro.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10926-christine-moreira.md` | 10926 | christine-moreira | `_entities/christine-moreira.md` | no | `_journal/reno/2026-05-11-atendimento-christine-moreira.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10927-murilo-damasceno.md` | 10927 | murilo-damasceno | `_entities/murilo-damasceno.md` | yes | `_journal/reno/2026-05-11-atendimento-10927-murilo-damasceno.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10928-elias-mourao.md` | 10928 | elias-mourao | `_entities/elias-mourao.md` | no | `_journal/reno/2026-05-11-atendimento-elias-mourao.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10929-eva-neves.md` | 10929 | eva-neves | `_entities/eva-neves.md` | no | `_journal/reno/2026-05-11-atendimento-eva-neves.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10930-cassio-coimbra.md` | 10930 | cassio-coimbra | `_entities/cassio-coimbra.md` | no | `_journal/reno/2026-05-11-atendimento-cassio-coimbra.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10931-vitoria-oliveira.md` | 10931 | vitoria-oliveira | `_entities/vitoria-oliveira.md` | no | `_journal/reno/2026-05-11-atendimento-vitoria-oliveira.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10932-cinthia-rodrigues.md` | 10932 | cinthia-rodrigues | `_entities/cinthia-rodrigues.md` | no | `_journal/reno/2026-05-11-atendimento-cinthia-rodrigues.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10933-flavio.md` | 10933 | flavio | `_entities/flavio.md` | no | `_journal/reno/2026-05-11-atendimento-flavio.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10934-mateus-silva.md` | 10934 | mateus-silva | `_entities/mateus-silva.md` | no | `_journal/reno/2026-05-11-atendimento-mateus-silva.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10935-wenderson-beleli.md` | 10935 | wenderson-beleli | `_entities/wenderson-beleli.md` | no | `_journal/reno/2026-05-11-atendimento-wenderson-beleli.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10936-lenira-cruz.md` | 10936 | lenira-cruz | `_entities/lenira-cruz.md` | no | `_journal/reno/2026-05-11-atendimento-lenira-cruz.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10937-samuel-kim.md` | 10937 | samuel-kim | `_entities/samuel-kim.md` | yes | `_journal/reno/2026-05-11-atendimento-samuel-kim.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10938-marcelo-escobar-de-oliveira.md` | 10938 | marcelo-escobar-de-oliveira | `_entities/marcelo-escobar-de-oliveira.md` | no | `_journal/reno/2026-05-11-atendimento-marcelo-escobar-de-oliveira.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10939-ricardo.md` | 10939 | ricardo | `_entities/ricardo.md` | no | `_journal/reno/2026-05-11-atendimento-ricardo.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10940-leticia-melo.md` | 10940 | leticia-melo | `_entities/leticia-melo.md` | yes | `_journal/reno/2026-05-11-atendimento-leticia-melo.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10941-kauan-eduardo.md` | 10941 | kauan-eduardo | `_entities/kauan-eduardo.md` | no | `_journal/reno/2026-05-11-atendimento-kauan-eduardo.md` | migrated-batch-1 |
| `_agents\reno\atendimentos\10942-marcio-oliveira-juliao.md` | 10942 | marcio-oliveira-juliao | `_entities/marcio-oliveira-juliao.md` | yes | `_journal/reno/2026-05-11-atendimento-marcio-oliveira-juliao.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10943-ana-clara-marques.md` | 10943 | ana-clara-marques | `_entities/ana-clara-marques.md` | yes | `_journal/reno/2026-05-11-atendimento-ana-clara-marques.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10944-helena-oliveira.md` | 10944 | helena-oliveira | `_entities/helena-oliveira.md` | no | `_journal/reno/2026-05-11-atendimento-helena-oliveira.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10945-hilton-oliveira-leite.md` | 10945 | hilton-oliveira-leite | `_entities/hilton-oliveira-leite.md` | no | `_journal/reno/2026-05-11-atendimento-hilton-oliveira-leite.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10947-sara.md` | 10947 | sara | `_entities/sara.md` | no | `_journal/reno/2026-05-11-atendimento-sara.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10948-alexsander-pereira.md` | 10948 | alexsander-pereira | `_entities/alexsander-pereira.md` | yes | `_journal/reno/2026-05-11-atendimento-alexsander-pereira.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10949-sonia-silva.md` | 10949 | sonia-silva | `_entities/sonia-silva.md` | no | `_journal/reno/2026-05-11-atendimento-sonia-silva.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10950-ivens-paiva.md` | 10950 | ivens-paiva | `_entities/ivens-paiva.md` | no | `_journal/reno/2026-05-11-atendimento-ivens-paiva.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10951-levi-santos.md` | 10951 | levi-santos | `_entities/levi-santos.md` | yes | `_journal/reno/2026-05-11-atendimento-levi-santos.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10952-marcos-caetano.md` | 10952 | marcos-caetano | `_entities/marcos-caetano.md` | no | `_journal/reno/2026-05-11-atendimento-marcos-caetano.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10953-vitoria-fernandes.md` | 10953 | vitoria-fernandes | `_entities/vitoria-fernandes.md` | no | `_journal/reno/2026-05-11-atendimento-vitoria-fernandes.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10954-augusto-santana.md` | 10954 | augusto-santana | `_entities/augusto-santana.md` | yes | `_journal/reno/2026-05-11-atendimento-augusto-santana.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10955-jonathan-barbosa.md` | 10955 | jonathan-barbosa | `_entities/jonathan-barbosa.md` | yes | `_journal/reno/2026-05-11-atendimento-jonathan-barbosa.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10956-gioo.md` | 10956 | gioo | `_entities/gioo.md` | no | `_journal/reno/2026-05-11-atendimento-gioo.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10957-leonardo-de-castro-ferreira.md` | 10957 | leonardo-de-castro-ferreira | `_entities/leonardo-de-castro-ferreira.md` | no | `_journal/reno/2026-05-11-atendimento-leonardo-de-castro-ferreira.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10958-rouse.md` | 10958 | rouse | `_entities/rouse.md` | no | `_journal/reno/2026-05-11-atendimento-rouse.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10959-michele-oliveira.md` | 10959 | michele-oliveira | `_entities/michele-oliveira.md` | no | `_journal/reno/2026-05-11-atendimento-michele-oliveira.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10966-nayara-ferreira.md` | 10966 | nayara-ferreira | `_entities/nayara-ferreira.md` | no | `_journal/reno/2026-05-11-atendimento-nayara-ferreira.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10967-flaviahair-especialista-em-mechas-e-loiro.md` | 10967 | flaviahair-especialista-em-mechas-e-loiro | `_entities/flaviahair-especialista-em-mechas-e-loiro.md` | no | `_journal/reno/2026-05-11-atendimento-flaviahair-especialista-em-mechas-e-loiro.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10968-maycon-olimpio.md` | 10968 | maycon-olimpio | `_entities/maycon-olimpio.md` | no | `_journal/reno/2026-05-11-atendimento-maycon-olimpio.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10969-tamires-lima.md` | 10969 | tamires-lima | `_entities/tamires-lima.md` | no | `_journal/reno/2026-05-11-atendimento-tamires-lima.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10970-maria-eduarda.md` | 10970 | maria-eduarda | `_entities/maria-eduarda.md` | no | `_journal/reno/2026-05-11-atendimento-maria-eduarda.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10971-bruno-savio.md` | 10971 | bruno-savio | `_entities/bruno-savio.md` | yes | `_journal/reno/2026-05-11-atendimento-bruno-savio.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10972-eliseu.md` | 10972 | eliseu | `_entities/eliseu.md` | yes | `_journal/reno/2026-05-11-atendimento-eliseu.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10973-layane-souza.md` | 10973 | layane-souza | `_entities/layane-souza.md` | no | `_journal/reno/2026-05-11-atendimento-layane-souza.md` | migrated-batch-2 |
| `_agents\reno\atendimentos\10974-grazyelly-macedo.md` | 10974 | grazyelly-macedo | `_entities/grazyelly-macedo.md` | yes | `_journal/reno/2026-05-11-atendimento-grazyelly-macedo.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10975-andre-luiz-duca.md` | 10975 | andre-luiz-duca | `_entities/andre-luiz-duca.md` | yes | `_journal/reno/2026-05-11-atendimento-andre-luiz-duca.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10976-silvio-humberto-silva.md` | 10976 | silvio-humberto-silva | `_entities/silvio-humberto-silva.md` | no | `_journal/reno/2026-05-11-atendimento-silvio-humberto-silva.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10977-murilo-damasceno.md` | 10977 | murilo-damasceno | `_entities/murilo-damasceno.md` | yes | `_journal/reno/2026-05-11-atendimento-10977-murilo-damasceno.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10978-esther-osklen.md` | 10978 | esther-osklen | `_entities/esther-osklen.md` | yes | `_journal/reno/2026-05-11-atendimento-esther-osklen.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10979-julia.md` | 10979 | julia | `_entities/julia.md` | no | `_journal/reno/2026-05-11-atendimento-julia.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10980-vanessa.md` | 10980 | vanessa | `_entities/vanessa.md` | no | `_journal/reno/2026-05-11-atendimento-vanessa.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10981-samara.md` | 10981 | samara | `_entities/samara.md` | no | `_journal/reno/2026-05-11-atendimento-samara.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10982-mateus-costa.md` | 10982 | mateus-costa | `_entities/mateus-costa.md` | no | `_journal/reno/2026-05-11-atendimento-mateus-costa.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10983-joanne-thais.md` | 10983 | joanne-thais | `_entities/joanne-thais.md` | no | `_journal/reno/2026-05-11-atendimento-joanne-thais.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10984-lucas-pereira-cunha.md` | 10984 | lucas-pereira-cunha | `_entities/lucas-pereira-cunha.md` | no | `_journal/reno/2026-05-11-atendimento-lucas-pereira-cunha.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10985-joao.md` | 10985 | joao | `_entities/joao.md` | no | `_journal/reno/2026-05-11-atendimento-joao.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10986-andreia-carvalho.md` | 10986 | andreia-carvalho | `_entities/andreia-carvalho.md` | yes | `_journal/reno/2026-05-11-atendimento-andreia-carvalho.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10988-sonia.md` | 10988 | sonia | `_entities/sonia.md` | no | `_journal/reno/2026-05-11-atendimento-sonia.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10990-cesar-augusto-silva.md` | 10990 | cesar-augusto-silva | `_entities/cesar-augusto-silva.md` | no | `_journal/reno/2026-05-11-atendimento-cesar-augusto-silva.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10991-rodrigo-moreira.md` | 10991 | rodrigo-moreira | `_entities/rodrigo-moreira.md` | no | `_journal/reno/2026-05-11-atendimento-rodrigo-moreira.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10992-rosii-goncalves.md` | 10992 | rosii-goncalves | `_entities/rosii-goncalves.md` | no | `_journal/reno/2026-05-11-atendimento-rosii-goncalves.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10993-luis.md` | 10993 | luis | `_entities/luis.md` | no | `_journal/reno/2026-05-11-atendimento-luis.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10994-alineferkdu.md` | 10994 | alineferkdu | `_entities/alineferkdu.md` | no | `_journal/reno/2026-05-11-atendimento-alineferkdu.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10996-sibely-cortes.md` | 10996 | sibely-cortes | `_entities/sibely-cortes.md` | yes | `_journal/reno/2026-05-11-atendimento-sibely-cortes.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10997-santiago-derson.md` | 10997 | santiago-derson | `_entities/santiago-derson.md` | yes | `_journal/reno/2026-05-11-atendimento-santiago-derson.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10998-carmen-vicente-santos-vicente-santos.md` | 10998 | carmen-vicente-santos-vicente-santos | `_entities/carmen-vicente-santos-vicente-santos.md` | no | `_journal/reno/2026-05-11-atendimento-carmen-vicente-santos-vicente-santos.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\10999-guilherme-mendes.md` | 10999 | guilherme-mendes | `_entities/guilherme-mendes.md` | yes | `_journal/reno/2026-05-11-atendimento-guilherme-mendes.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\11000-wueverton-lima.md` | 11000 | wueverton-lima | `_entities/wueverton-lima.md` | yes | `_journal/reno/2026-05-11-atendimento-wueverton-lima.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\11001-biiahsiilva.md` | 11001 | biiahsiilva | `_entities/biiahsiilva.md` | no | `_journal/reno/2026-05-11-atendimento-biiahsiilva.md` | migrated-batch-3 |
| `_agents\reno\atendimentos\11002-marco-antonio-goncalves.md` | 11002 | marco-antonio-goncalves | `_entities/marco-antonio-goncalves.md` | no | `_journal/reno/2026-05-11-atendimento-marco-antonio-goncalves.md` | pending |
| `_agents\reno\atendimentos\11003-jisa-dantas.md` | 11003 | jisa-dantas | `_entities/jisa-dantas.md` | yes | `_journal/reno/2026-05-11-atendimento-jisa-dantas.md` | pending |
| `_agents\reno\atendimentos\11004-amanda.md` | 11004 | amanda | `_entities/amanda.md` | yes | `_journal/reno/2026-05-11-atendimento-amanda.md` | pending |
| `_agents\reno\atendimentos\11005-thabata-cristina.md` | 11005 | thabata-cristina | `_entities/thabata-cristina.md` | no | `_journal/reno/2026-05-11-atendimento-thabata-cristina.md` | pending |
| `_agents\reno\atendimentos\11006-elinete-silva.md` | 11006 | elinete-silva | `_entities/elinete-silva.md` | no | `_journal/reno/2026-05-11-atendimento-elinete-silva.md` | pending |
| `_agents\reno\atendimentos\11007-alessandra-nascimento.md` | 11007 | alessandra-nascimento | `_entities/alessandra-nascimento.md` | no | `_journal/reno/2026-05-11-atendimento-alessandra-nascimento.md` | pending |
| `_agents\reno\atendimentos\11008-fabio-martins-polaro.md` | 11008 | fabio-martins-polaro | `_entities/fabio-martins-polaro.md` | no | `_journal/reno/2026-05-11-atendimento-fabio-martins-polaro.md` | pending |
| `_agents\reno\atendimentos\11009-diasalvez111q1-qqq.md` | 11009 | diasalvez111q1-qqq | `_entities/diasalvez111q1-qqq.md` | no | `_journal/reno/2026-05-11-atendimento-diasalvez111q1-qqq.md` | pending |
| `_agents\reno\atendimentos\11011-siguinei-souza.md` | 11011 | siguinei-souza | `_entities/siguinei-souza.md` | no | `_journal/reno/2026-05-11-atendimento-siguinei-souza.md` | pending |
| `_agents\reno\atendimentos\11012-ton.md` | 11012 | ton | `_entities/ton.md` | no | `_journal/reno/2026-05-11-atendimento-ton.md` | pending |
| `_agents\reno\atendimentos\11013-black-in-style.md` | 11013 | black-in-style | `_entities/black-in-style.md` | no | `_journal/reno/2026-05-11-atendimento-black-in-style.md` | pending |
| `_agents\reno\atendimentos\11014-yasmin-mascarenhas.md` | 11014 | yasmin-mascarenhas | `_entities/yasmin-mascarenhas.md` | no | `_journal/reno/2026-05-11-atendimento-yasmin-mascarenhas.md` | pending |
| `_agents\reno\atendimentos\11017-claudia-martins-ferreira.md` | 11017 | claudia-martins-ferreira | `_entities/claudia-martins-ferreira.md` | no | `_journal/reno/2026-05-11-atendimento-claudia-martins-ferreira.md` | pending |
| `_agents\reno\atendimentos\11019-andreia-marson.md` | 11019 | andreia-marson | `_entities/andreia-marson.md` | no | `_journal/reno/2026-05-11-atendimento-andreia-marson.md` | pending |
| `_agents\reno\atendimentos\11021-claudia-rosangela.md` | 11021 | claudia-rosangela | `_entities/claudia-rosangela.md` | yes | `_journal/reno/2026-05-11-atendimento-claudia-rosangela.md` | pending |
| `_agents\reno\atendimentos\11083-matheus-henrique.md` | 11083 | matheus-henrique | `_entities/matheus-henrique.md` | no | `_journal/reno/2026-05-11-atendimento-matheus-henrique.md` | pending |
| `_agents\reno\atendimentos\11084-pedro.md` | 11084 | pedro | `_entities/pedro.md` | yes | `_journal/reno/2026-05-11-atendimento-pedro.md` | pending |
| `_agents\reno\atendimentos\11085-gabi-ripolli.md` | 11085 | gabi-ripolli | `_entities/gabi-ripolli.md` | no | `_journal/reno/2026-05-11-atendimento-gabi-ripolli.md` | pending |
| `_agents\reno\atendimentos\11110-jessica.md` | 11110 | jessica | `_entities/jessica.md` | no | `_journal/reno/2026-05-11-atendimento-jessica.md` | pending |
| `_agents\reno\atendimentos\11135-pressendo.md` | 11135 | pressendo | `_entities/pressendo.md` | no | `_journal/reno/2026-05-11-atendimento-pressendo.md` | pending |
| `_agents\reno\atendimentos\11138-julia-gabriely.md` | 11138 | julia-gabriely | `_entities/julia-gabriely.md` | no | `_journal/reno/2026-05-11-atendimento-julia-gabriely.md` | pending |
| `_agents\reno\atendimentos\11141-thiago-santos-mendes.md` | 11141 | thiago-santos-mendes | `_entities/thiago-santos-mendes.md` | no | `_journal/reno/2026-05-11-atendimento-thiago-santos-mendes.md` | pending |
| `_agents\reno\atendimentos\11144-adelitatavarescampos.md` | 11144 | adelitatavarescampos | `_entities/adelitatavarescampos.md` | no | `_journal/reno/2026-05-11-atendimento-adelitatavarescampos.md` | pending |
| `_agents\reno\atendimentos\11147-sol-silva-mendes.md` | 11147 | sol-silva-mendes | `_entities/sol-silva-mendes.md` | no | `_journal/reno/2026-05-11-atendimento-sol-silva-mendes.md` | pending |
| `_agents\reno\atendimentos\11150-evellyn-eduardo-pereira.md` | 11150 | evellyn-eduardo-pereira | `_entities/evellyn-eduardo-pereira.md` | no | `_journal/reno/2026-05-11-atendimento-evellyn-eduardo-pereira.md` | pending |
| `_agents\reno\atendimentos\11152-sebastiao-adao-junior.md` | 11152 | sebastiao-adao-junior | `_entities/sebastiao-adao-junior.md` | no | `_journal/reno/2026-05-11-atendimento-sebastiao-adao-junior.md` | pending |
| `_agents\reno\atendimentos\11155-julia-cardoso.md` | 11155 | julia-cardoso | `_entities/julia-cardoso.md` | no | `_journal/reno/2026-05-11-atendimento-julia-cardoso.md` | pending |
| `_agents\reno\atendimentos\11158-wilson-passos.md` | 11158 | wilson-passos | `_entities/wilson-passos.md` | no | `_journal/reno/2026-05-11-atendimento-wilson-passos.md` | pending |
| `_agents\reno\atendimentos\11161-erlania-silva.md` | 11161 | erlania-silva | `_entities/erlania-silva.md` | no | `_journal/reno/2026-05-11-atendimento-erlania-silva.md` | pending |
| `_agents\reno\atendimentos\11164-talles-alcantara.md` | 11164 | talles-alcantara | `_entities/talles-alcantara.md` | no | `_journal/reno/2026-05-11-atendimento-talles-alcantara.md` | pending |
| `_agents\reno\atendimentos\11168-byanca-guerra.md` | 11168 | byanca-guerra | `_entities/byanca-guerra.md` | yes | `_journal/reno/2026-05-11-atendimento-byanca-guerra.md` | pending |
| `_agents\reno\atendimentos\11171-eliane-maria-martins.md` | 11171 | eliane-maria-martins | `_entities/eliane-maria-martins.md` | no | `_journal/reno/2026-05-11-atendimento-eliane-maria-martins.md` | pending |
| `_agents\reno\atendimentos\11174-thulio-medeiros.md` | 11174 | thulio-medeiros | `_entities/thulio-medeiros.md` | no | `_journal/reno/2026-05-11-atendimento-thulio-medeiros.md` | pending |
| `_agents\reno\atendimentos\11177-mauro-marques.md` | 11177 | mauro-marques | `_entities/mauro-marques.md` | yes | `_journal/reno/2026-05-11-atendimento-mauro-marques.md` | pending |
| `_agents\reno\atendimentos\11180-edmilson-sena.md` | 11180 | edmilson-sena | `_entities/edmilson-sena.md` | no | `_journal/reno/2026-05-11-atendimento-edmilson-sena.md` | pending |
| `_agents\reno\atendimentos\11182-thiago-tesch.md` | 11182 | thiago-tesch | `_entities/thiago-tesch.md` | yes | `_journal/reno/2026-05-11-atendimento-thiago-tesch.md` | pending |
| `_agents\reno\atendimentos\11186-keila.md` | 11186 | keila | `_entities/keila.md` | no | `_journal/reno/2026-05-11-atendimento-keila.md` | pending |
| `_agents\reno\atendimentos\11190-kamily-vitoria.md` | 11190 | kamily-vitoria | `_entities/kamily-vitoria.md` | no | `_journal/reno/2026-05-11-atendimento-kamily-vitoria.md` | pending |
| `_agents\reno\atendimentos\11196-aline-oliveira.md` | 11196 | aline-oliveira | `_entities/aline-oliveira.md` | yes | `_journal/reno/2026-05-11-atendimento-aline-oliveira.md` | pending |
| `_agents\reno\atendimentos\11198-amanda-xavier.md` | 11198 | amanda-xavier | `_entities/amanda-xavier.md` | no | `_journal/reno/2026-05-11-atendimento-amanda-xavier.md` | pending |
| `_agents\reno\atendimentos\11199-eliane-moreira.md` | 11199 | eliane-moreira | `_entities/eliane-moreira.md` | no | `_journal/reno/2026-05-11-atendimento-eliane-moreira.md` | pending |
| `_agents\reno\atendimentos\11200-andre-camilo.md` | 11200 | andre-camilo | `_entities/andre-camilo.md` | no | `_journal/reno/2026-05-11-atendimento-andre-camilo.md` | pending |
| `_agents\reno\atendimentos\11201-ana-julia.md` | 11201 | ana-julia | `_entities/ana-julia.md` | no | `_journal/reno/2026-05-11-atendimento-ana-julia.md` | pending |
| `_agents\reno\atendimentos\11202-juliana-sousa.md` | 11202 | juliana-sousa | `_entities/juliana-sousa.md` | no | `_journal/reno/2026-05-11-atendimento-juliana-sousa.md` | pending |
| `_agents\reno\atendimentos\11208-jeandra-candido.md` | 11208 | jeandra-candido | `_entities/jeandra-candido.md` | no | `_journal/reno/2026-05-11-atendimento-jeandra-candido.md` | pending |
| `_agents\reno\atendimentos\11209-charles-carlos.md` | 11209 | charles-carlos | `_entities/charles-carlos.md` | no | `_journal/reno/2026-05-11-atendimento-charles-carlos.md` | pending |
| `_agents\reno\atendimentos\11210-ketely-eunice-martins-santos.md` | 11210 | ketely-eunice-martins-santos | `_entities/ketely-eunice-martins-santos.md` | no | `_journal/reno/2026-05-11-atendimento-ketely-eunice-martins-santos.md` | pending |
| `_agents\reno\atendimentos\11218-maria-clara.md` | 11218 | maria-clara | `_entities/maria-clara.md` | no | `_journal/reno/2026-05-11-atendimento-maria-clara.md` | pending |
| `_agents\reno\atendimentos\11220-ana-luyza-ferreira-neves.md` | 11220 | ana-luyza-ferreira-neves | `_entities/ana-luyza-ferreira-neves.md` | no | `_journal/reno/2026-05-11-atendimento-ana-luyza-ferreira-neves.md` | pending |
| `_agents\reno\atendimentos\11221-liriel-fernandes.md` | 11221 | liriel-fernandes | `_entities/liriel-fernandes.md` | no | `_journal/reno/2026-05-11-atendimento-liriel-fernandes.md` | pending |
| `_agents\reno\atendimentos\11226-patricia-soares.md` | 11226 | patricia-soares | `_entities/patricia-soares.md` | no | `_journal/reno/2026-05-11-atendimento-patricia-soares.md` | pending |
| `_agents\reno\atendimentos\11229-bruno-santos.md` | 11229 | bruno-santos | `_entities/bruno-santos.md` | no | `_journal/reno/2026-05-11-atendimento-bruno-santos.md` | pending |
| `_agents\reno\atendimentos\11232-grazziele-rocha-mendes.md` | 11232 | grazziele-rocha-mendes | `_entities/grazziele-rocha-mendes.md` | no | `_journal/reno/2026-05-11-atendimento-grazziele-rocha-mendes.md` | pending |
| `_agents\reno\atendimentos\11234-lirio-pereira.md` | 11234 | lirio-pereira | `_entities/lirio-pereira.md` | no | `_journal/reno/2026-05-11-atendimento-lirio-pereira.md` | pending |
| `_agents\reno\atendimentos\11236-marcos-pupin-vieira.md` | 11236 | marcos-pupin-vieira | `_entities/marcos-pupin-vieira.md` | no | `_journal/reno/2026-05-11-atendimento-marcos-pupin-vieira.md` | pending |
| `_agents\reno\atendimentos\11237-nayara-frois.md` | 11237 | nayara-frois | `_entities/nayara-frois.md` | no | `_journal/reno/2026-05-11-atendimento-nayara-frois.md` | pending |
| `_agents\reno\atendimentos\11247-iran.md` | 11247 | iran | `_entities/iran.md` | no | `_journal/reno/2026-05-11-atendimento-iran.md` | pending |
| `_agents\reno\atendimentos\11248-genilsom-oliveira.md` | 11248 | genilsom-oliveira | `_entities/genilsom-oliveira.md` | no | `_journal/reno/2026-05-11-atendimento-genilsom-oliveira.md` | pending |
| `_agents\reno\atendimentos\11255-thaynara.md` | 11255 | thaynara | `_entities/thaynara.md` | no | `_journal/reno/2026-05-11-atendimento-thaynara.md` | pending |
| `_agents\reno\atendimentos\11263-mary-sa.md` | 11263 | mary-sa | `_entities/mary-sa.md` | no | `_journal/reno/2026-05-11-atendimento-mary-sa.md` | pending |
| `_agents\reno\atendimentos\11266-marcia-maria.md` | 11266 | marcia-maria | `_entities/marcia-maria.md` | no | `_journal/reno/2026-05-10-atendimento-marcia-maria.md` | migrated-pilot |
| `_agents\reno\atendimentos\11267-rodrigues-gegew.md` | 11267 | rodrigues-gegew | `_entities/rodrigues-gegew.md` | no | `_journal/reno/2026-05-11-atendimento-rodrigues-gegew.md` | pending |
| `_agents\reno\atendimentos\11270-mario-lukosevicius.md` | 11270 | mario-lukosevicius | `_entities/mario-lukosevicius.md` | no | `_journal/reno/2026-05-11-atendimento-mario-lukosevicius.md` | pending |
| `_agents\reno\atendimentos\11273-douglas.md` | 11273 | douglas | `_entities/douglas.md` | no | `_journal/reno/2026-05-11-atendimento-douglas.md` | pending |
| `_agents\reno\atendimentos\11274-beatriz-cruz.md` | 11274 | beatriz-cruz | `_entities/beatriz-cruz.md` | no | `_journal/reno/2026-05-11-atendimento-beatriz-cruz.md` | pending |
| `_agents\reno\atendimentos\11275-danielly-cristina-justen-souza.md` | 11275 | danielly-cristina-justen-souza | `_entities/danielly-cristina-justen-souza.md` | no | `_journal/reno/2026-05-11-atendimento-danielly-cristina-justen-souza.md` | pending |
| `_agents\reno\atendimentos\11276-alfred-bertoli.md` | 11276 | alfred-bertoli | `_entities/alfred-bertoli.md` | no | `_journal/reno/2026-05-11-atendimento-alfred-bertoli.md` | pending |
| `_agents\reno\atendimentos\11277-yasmim-rezende.md` | 11277 | yasmim-rezende | `_entities/yasmim-rezende.md` | no | `_journal/reno/2026-05-11-atendimento-yasmim-rezende.md` | pending |
| `_agents\reno\atendimentos\11298-sergio-daniel-moraes.md` | 11298 | sergio-daniel-moraes | `_entities/sergio-daniel-moraes.md` | no | `_journal/reno/2026-05-11-atendimento-sergio-daniel-moraes.md` | pending |
| `_agents\reno\atendimentos\11301-raimundo-nonato-ferreira-dos-santos.md` | 11301 | raimundo-nonato-ferreira-dos-santos | `_entities/raimundo-nonato-ferreira-dos-santos.md` | no | `_journal/reno/2026-05-11-atendimento-raimundo-nonato-ferreira-dos-santos.md` | pending |
| `_agents\reno\atendimentos\11302-eduardo-rodrigues.md` | 11302 | eduardo-rodrigues | `_entities/eduardo-rodrigues.md` | no | `_journal/reno/2026-05-11-atendimento-eduardo-rodrigues.md` | pending |
| `_agents\reno\atendimentos\11304-ibelgman-castro.md` | 11304 | ibelgman-castro | `_entities/ibelgman-castro.md` | no | `_journal/reno/2026-05-11-atendimento-ibelgman-castro.md` | pending |
| `_agents\reno\atendimentos\11308-geisy-souza.md` | 11308 | geisy-souza | `_entities/geisy-souza.md` | no | `_journal/reno/2026-05-11-atendimento-geisy-souza.md` | pending |
| `_agents\reno\atendimentos\11312-japao-pereira.md` | 11312 | japao-pereira | `_entities/japao-pereira.md` | no | `_journal/reno/2026-05-11-atendimento-japao-pereira.md` | pending |
| `_agents\reno\atendimentos\11313-joaneci-pereira-dos-santos.md` | 11313 | joaneci-pereira-dos-santos | `_entities/joaneci-pereira-dos-santos.md` | no | `_journal/reno/2026-05-11-atendimento-joaneci-pereira-dos-santos.md` | pending |
| `_agents\reno\atendimentos\cliente-11010-eduarda.md` | 11010 | eduarda | `_entities/eduarda.md` | yes | `_journal/reno/2026-04-24-atendimento-eduarda.md` | migrated-pilot |
| `_agents\reno\atendimentos\lote-reno-dup-recovery-20260427-3min.md` |  | lote-reno-dup-recovery-20260427-3min | N/A (journal-only) | N/A | `_journal/reno/2026-04-27-lote-reno-dup-recovery-3min.md` | migrated-pilot-journal-only |
| `_agents\reno\atendimentos\whatsapp-lua.md` |  | whatsapp-lua | `_entities/lua.md if identifiable` | manual-review | `_journal/reno/2026-05-11-atendimento-lua.md if identifiable` | pending-manual-review |
