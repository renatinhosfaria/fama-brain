---
type: moc
owner: renato
created: 2026-04-14
updated: '2026-06-01'
tags: [moc, fama-brain]
---
# fama-brain

Vault Obsidian que serve como **segundo cerebro operacional multiagent** e memoria de longo prazo da Fama Negocios Imobiliarios.

A arquitetura atual e **multiagent por territorios**: o vault continua organizado por tipo de conhecimento, mas cada agente tem `agent_id`, hub proprio, journal proprio, projetos proprios, runbooks proprios e ownership explicito. O namespace legado `_agents/` permanece inativo.

O MCP `mcp-obsidian` deve recuperar contexto por territorio ativo, via hubs, runbooks, journals, projetos e contexto compartilhado. Ferramentas de compatibilidade nao devem recriar `_agents/`; quando precisarem preservar lead, broker ou perfil, devem escrever em `_entities/`, `_journal/{agent_id}/`, `_runbooks/` ou `_shared/context/` conforme o tipo de memoria.

**Topologia:** `C:\fama-brain` (Obsidian local) → GitHub (`renatinhosfaria/fama-brain`) → VPS MCP-host (vmi1988871 / `144.126.134.23`, `/root/fama-brain`). Uma única VPS hospeda o vault runtime; todos os agentes escrevem via HTTPS no servidor **mcp-obsidian** (`mcp-obsidian.famachat.com.br`), nunca tocando o filesystem diretamente. Cada arquivo tem um único dono de escrita, enforced pelo MCP no momento da escrita (erro `OWNERSHIP_VIOLATION`).


## Comece aqui para qualquer agente

Todo agente deve tratar este `README.md` como porta de entrada do vault quando precisar localizar informacao, confirmar topologia, decidir onde escrever ou validar a funcao de uma pasta.

Regras universais:

- Deve buscar antes de criar qualquer nota nova.
- Deve atualizar ou referenciar nota canonica existente antes de duplicar conteudo.
- Deve separar fato duravel, evento datado, decisao e procedimento em pastas diferentes.
- Deve registrar incerteza como incerteza e pedir confirmacao quando a fonte for fraca ou contraditoria.
- Nao deve recriar o namespace legado `_agents/`.
- Deve redigir telefone completo, WhatsApp JID, email, CPF e segredos antes de devolver trechos do vault.
- Nao deve alterar ownership, schema ou decisoes duraveis sem confirmacao do Renato.

Ordem padrao de busca:

1. Consulte este portal quando a topologia estiver incerta.
2. Consulte [[_shared/context/AGENTS]] para confirmar `agent_id`, ownership e limites.
3. Consulte o hub do agente responsavel: [[reno-hub]] ou [[marketing-hub]].
4. Consulte `_meta/retrieval-policy.md` e [[schema]] quando houver duvida de tipo, confianca ou destino.
5. Consulte a pasta de conteudo correta: `_entities/`, `_journal/{agent_id}/`, `_decisions/`, `_runbooks/`, `_hubs/`, `_projects/{agent_id}/`, `_shared/context/` ou `_meta/`.
6. Antes de escrever, leia o `README.md` local da pasta de destino.

Manuais locais:

- [[_entities/README|_entities/README]]
- [[_journal/README|_journal/README]]
- [[_journal/reno/README|_journal/reno/README]]
- [[_journal/marketing/README|_journal/marketing/README]]
- [[_projects/marketing/README|_projects/marketing/README]]
- [[_shared/context/marketing/README|_shared/context/marketing/README]]
- [[_runbooks/README|_runbooks/README]]
- [[_decisions/README|_decisions/README]]
- [[_hubs/README|_hubs/README]]
- [[_projects/README|_projects/README]]
- [[_meta/README|_meta/README]]
- [[_meta/pii-redaction-policy|_meta/pii-redaction-policy]]
- [[_shared/README|_shared/README]]
- [[_shared/context/README|_shared/context/README]]

<!-- codex:inbound-index:start -->

## Índice de navegação do vault

- [[_decisions/index|_decisions/index]]
- [[_entities/index|_entities/index]]
- [[_hubs/marketing-hub|_hubs/marketing-hub]]
- [[_journal/index|_journal/index]]
- [[_journal/marketing/README|_journal/marketing/README]]
- [[_meta/index|_meta/index]]
- [[_meta/inventory-2026-04-30|_meta/inventory-2026-04-30]]
- [[_projects/famachat/README|_projects/famachat/README]]
- [[_projects/index|_projects/index]]
- [[_projects/marketing/README|_projects/marketing/README]]
- [[_projects/portalcef/README|_projects/portalcef/README]]
- [[_runbooks/index|_runbooks/index]]
- [[_runbooks/reno-vault-operacao|_runbooks/reno-vault-operacao]]
- [[_shared/context/credito-imobiliario/index|_shared/context/credito-imobiliario/index]]
- [[_shared/context/fama/endereco|_shared/context/fama/endereco]]
- [[_shared/context/marketing/README|_shared/context/marketing/README]]
- [[_shared/context/modelo-negocio/metodologia-negocio|_shared/context/modelo-negocio/metodologia-negocio]]

<!-- codex:inbound-index:end -->

## Convenções

- Frontmatter YAML curto em todos os arquivos (`type`, `owner`, `created`, `updated`, `tags`).
- Links internos sempre em formato Obsidian, apontando para notas existentes.
- Tags planas (sem hierarquia).
- Nomes de arquivo em kebab-case, sem acentos.
- **Cada arquivo tem um único dono de escrita** (ver [[_shared/context/AGENTS]]).
- O namespace legado `_agents/` foi removido em 2026-05-11; o hub canônico do Reno é [[reno-hub]].
- Conteudo operacional de agente fica organizado por tipo e territorio:
  - eventos datados em `_journal/{agent_id}/`;
  - projetos, campanhas e iniciativas em `_projects/{agent_id}/`;
  - procedimentos em `_runbooks/{agent_id}-*.md`;
  - decisoes duraveis em `_decisions/YYYY-MM-DD-{agent_id}-{slug}.md`;
  - fatos duraveis sobre pessoas, imoveis e organizacoes em `_entities/`;
  - contexto tematico compartilhado em `_shared/context/{tema}/`.

## Infraestrutura

- O gateway de escrita do vault é o **mcp-obsidian**, exposto via HTTPS em `mcp-obsidian.famachat.com.br`.
- O scanner sensivel oficial do gateway e `scan_sensitive_data`, que deve retornar apenas contagens e exemplos redigidos.
- A documentação local de infraestrutura foi removida; referências operacionais remanescentes devem ser registradas em `_runbooks/` ou `_meta/`.
