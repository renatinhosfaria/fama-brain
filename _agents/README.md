---
type: moc
owner: renato
created: 2026-04-14
updated: 2026-04-20
tags: [moc, agents]
---
# _agents

Memória de longo prazo individual de cada agente do ecossistema.

## Estrutura de cada agente

    _agents/<nome>/
    ├── README.md        # auto-doc (o próprio agente escreve na 1ª interação)
    ├── profile.md       # quem é, estilo, preferências
    ├── decisions.md     # decisões-chave condensadas (append-only, mais recente no topo)
    └── journal/
        └── YYYY-MM-DD-titulo-curto.md

## Paperclip (diretoria)

- [[ceo/README|ceo]]
- [[credito/README|credito]]
- [[cro/README|cro]]
- [[rh/README|rh]]
- [[vault/README|vault]]

## OpenClaw (operacional)

- [[ceo-exec/README|ceo-exec]]
- [[famaagent/README|famaagent]]
- [[follow-up/README|follow-up]]
- [[reno/README|reno]]

Ver mapa completo em [[../_shared/context/AGENTS]].
