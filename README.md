---
type: moc
owner: renato
created: 2026-04-14
updated: '2026-05-11'
tags: [moc, fama-brain]
---
# fama-brain

Vault Obsidian que serve como **segundo cérebro operacional do Reno** e memória de longo prazo da Fama Negócios Imobiliários.

Nesta fase, a arquitetura é **Reno-first**: o vault é organizado por tipo de conhecimento, não por namespace permanente de agente. Multiagente fica como evolução futura.

**Topologia:** `C:\fama-brain` (Obsidian local) → GitHub (`renatinhosfaria/fama-brain`) → VPS MCP-host (vmi1988871 / `144.126.134.23`, `/root/fama-brain`). Uma única VPS hospeda o vault runtime; todos os agentes escrevem via HTTPS no servidor **mcp-obsidian** (`mcp-obsidian.famachat.com.br`), nunca tocando o filesystem diretamente. Cada arquivo tem um único dono de escrita, enforced pelo MCP no momento da escrita (erro `OWNERSHIP_VIOLATION`).


## Comece aqui para o Reno

O Reno deve tratar este `README.md` como porta de entrada do vault quando precisar localizar informacao, decidir onde escrever ou confirmar a funcao de uma pasta.

Regras universais:

- Deve buscar antes de criar qualquer nota nova.
- Deve atualizar ou referenciar nota canonica existente antes de duplicar conteudo.
- Deve separar fato duravel, evento datado, decisao e procedimento em pastas diferentes.
- Deve registrar incerteza como incerteza e pedir confirmacao quando a fonte for fraca ou contraditoria.
- Nao deve recriar o namespace legado `_agents/`.
- Nao deve alterar ownership, schema ou decisoes duraveis sem confirmacao do Renato.

Ordem padrao de busca:

1. Consulte este portal quando a topologia estiver incerta.
2. Consulte [[reno-vault-operacao]] para o fluxo completo.
3. Consulte [[reno-hub]] quando o assunto for operacao do Reno.
4. Consulte a pasta de conteudo correta: `_entities/`, `_journal/reno/`, `_decisions/`, `_runbooks/`, `_hubs/`, `_projects/`, `_shared/context/` ou `_meta/`.
5. Antes de escrever, leia o `README.md` local da pasta de destino.

Manuais locais:

- [[_entities/README|_entities/README]]
- [[_journal/README|_journal/README]]
- [[_journal/reno/README|_journal/reno/README]]
- [[_runbooks/README|_runbooks/README]]
- [[_decisions/README|_decisions/README]]
- [[_hubs/README|_hubs/README]]
- [[_projects/README|_projects/README]]
- [[_meta/README|_meta/README]]
- [[_shared/README|_shared/README]]
- [[_shared/context/README|_shared/context/README]]

<!-- codex:inbound-index:start -->

## Índice de navegação do vault

- [[_decisions/index|_decisions/index]]
- [[_entities/index|_entities/index]]
- [[_journal/index|_journal/index]]
- [[_meta/index|_meta/index]]
- [[_meta/inventory-2026-04-30|_meta/inventory-2026-04-30]]
- [[_projects/famachat/README|_projects/famachat/README]]
- [[_projects/index|_projects/index]]
- [[_projects/portalcef/README|_projects/portalcef/README]]
- [[_runbooks/index|_runbooks/index]]
- [[_runbooks/reno-vault-operacao|_runbooks/reno-vault-operacao]]
- [[_shared/context/credito-imobiliario/index|_shared/context/credito-imobiliario/index]]
- [[_shared/context/fama/endereco|_shared/context/fama/endereco]]
- [[_shared/context/modelo-negocio/metodologia-negocio|_shared/context/modelo-negocio/metodologia-negocio]]

<!-- codex:inbound-index:end -->

## Convenções

- Frontmatter YAML curto em todos os arquivos (`type`, `owner`, `created`, `updated`, `tags`).
- Links internos sempre em formato Obsidian, apontando para notas existentes.
- Tags planas (sem hierarquia).
- Nomes de arquivo em kebab-case, sem acentos.
- **Cada arquivo tem um único dono de escrita** (ver [[_shared/context/AGENTS]]).
- O namespace legado `_agents/` foi removido em 2026-05-11; o hub canônico do Reno é [[reno-hub]].
- Conteúdo operacional do Reno fica organizado por tipo:
  - fatos duráveis sobre pessoas, imóveis e organizações em `_entities/`;
  - eventos datados em `_journal/reno/`;
  - procedimentos em `_runbooks/`;
  - decisões duráveis em `_decisions/`.

## Infraestrutura

- O gateway de escrita do vault é o **mcp-obsidian**, exposto via HTTPS em `mcp-obsidian.famachat.com.br`.
- A documentação local de infraestrutura foi removida; referências operacionais remanescentes devem ser registradas em `_runbooks/` ou `_meta/`.
