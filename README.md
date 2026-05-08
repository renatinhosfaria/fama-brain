---
type: moc
owner: renato
created: 2026-04-14
updated: 2026-04-20
tags: [moc, fama-brain]
---
# fama-brain

Vault Obsidian que serve como **contexto e memória de longo prazo** do ecossistema de agentes da Fama Negócios Imobiliários.

**Topologia:** `C:\fama-brain` (Obsidian local) → GitHub (`renatinhosfaria/fama-brain`) → VPS MCP-host (vmi1988871 / `144.126.134.23`, `/root/fama-brain`). Uma única VPS hospeda o vault runtime; todos os agentes escrevem via HTTPS no servidor **mcp-obsidian** (`mcp-obsidian.famachat.com.br`), nunca tocando o filesystem diretamente. Cada arquivo tem um único dono de escrita, enforced pelo MCP no momento da escrita (erro `OWNERSHIP_VIOLATION`).

## Convenções

- Frontmatter YAML curto em todos os arquivos (`type`, `owner`, `created`, `updated`, `tags`).
- Links internos sempre em formato Obsidian, apontando para notas existentes.
- Tags planas (sem hierarquia).
- Nomes de arquivo em kebab-case, sem acentos.
- Journal de agente: `YYYY-MM-DD-titulo-curto.md`.
- **Cada arquivo tem um único dono de escrita** (ver [[_shared/context/AGENTS]] e matriz completa em [[_agents/README]]).

## Infraestrutura

- O gateway de escrita do vault é o **mcp-obsidian**, exposto via HTTPS em `mcp-obsidian.famachat.com.br`.
- A documentação local de infraestrutura foi removida; referências operacionais remanescentes devem ser registradas em `_runbooks/` ou `_meta/`.
