---
type: agents-map
owner: renato
created: 2026-04-14
updated: 2026-04-30
tags:
  - agents
---
```
# Ownership map — vault Obsidian

# Imutáveis (nunca sobrescritos, append-only via append_decision)
_agents/*/decisions.md                   => owner-only (immutable history)

# Governança e meta
_shared/context/AGENTS.md                => renato
_agents/README.md                        => renato (vault-steward propõe via issue)

# Territórios primários — Renato (humano / board / founder)
_shared/context/fama/**                  => renato
_shared/context/modelo-negocio/**        => renato
_shared/context/credito-imobiliario/**   => renato
_infra/**                                => renato

# Territórios primários — Reno (corretor, OpenClaw)
_agents/reno/**                          => reno (primary) | vault-steward (cleanup-only)
_shared/context/*/reno/**                => reno (primary) | vault-steward (cleanup-only)
_agents/Reno/**                          => reno (primary) | vault-steward (cleanup-only)
_shared/context/*/Reno/**                => reno (primary) | vault-steward (cleanup-only)

# Territórios primários — CEO
_agents/ceo/**                           => ceo
_shared/context/*/ceo/**                 => ceo
_shared/goals/*/ceo.md                   => ceo
_shared/results/*/ceo.md                 => ceo

# Território primário — VaultSteward
_agents/vault-steward/**                 => vault-steward
_shared/context/*/vault-steward/**       => vault-steward
_shared/goals/*/vault-steward.md         => vault-steward
_shared/results/*/vault-steward.md       => vault-steward

# Catch-all — paths sem dono explícito
**/*                                     => vault-steward
```

