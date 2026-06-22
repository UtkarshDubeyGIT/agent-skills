# agent-skills

Repository of curated agent behavioral rules and composable skills for coding assistants.
Works with **any** coding agent across **all major platforms**.

## Quick Start

### On a new machine

```bash
curl -fsSL https://raw.githubusercontent.com/UtkarshDubeyGIT/agent-skills/main/init.sh | bash
```

This clones the suite to `~/agent-skills/` and sets up the `suite-link` alias.

### In any project

```bash
cd your-project
suite-link
# or: ~/agent-skills/link.sh
```

This generates adapter files that all your agents can read:

```
your-project/
├── AGENTS.md                    → OpenCode, Codex CLI, Antigravity, Claude Code (fallback)
├── CLAUDE.md                    → Claude Code
├── .cursor/rules/               → Cursor
├── .github/copilot-instructions.md → Copilot
└── .junie/guidelines.md         → Junie
```

**All adapters point to the same canonical rules in `AGENTS.md`.**
One source of truth, eight platforms.

### Manual download

```bash
curl -fsSL https://raw.githubusercontent.com/UtkarshDubeyGIT/agent-skills/main/AGENTS.md -o AGENTS.md
```

---

## Platform Coverage

| Platform | Config File | How It Reads Your Rules |
|----------|-------------|------------------------|
| OpenCode | `AGENTS.md` | Reads natively |
| Codex CLI | `AGENTS.md` | Reads natively |
| Antigravity App | `AGENTS.md` | Reads natively + supports SKILL.md |
| Antigravity CLI | `AGENTS.md` | Reads natively + supports SKILL.md |
| Claude Code | `CLAUDE.md` | Reads CLAUDE.md → delegates to AGENTS.md |
| Cursor | `.cursor/rules/*.mdc` | Reads .mdc → delegates to AGENTS.md |
| Copilot | `.github/copilot-instructions.md` | Reads instructions → delegates to AGENTS.md |
| Junie | `.junie/guidelines.md` | Reads guidelines → delegates to AGENTS.md |

---

## Structure

```
agent-skills/
├── AGENTS.md              # Canonical behavioral rules (cross-platform)
├── CLAUDE.md              # Claude Code adapter (thin — delegates to AGENTS.md)
├── link.sh                # Generate platform adapters in any project
├── init.sh                # Bootstrap on a new machine
│
├── skills/                # Composable agent workflows
│   ├── grill-me.md        # Alignment interview before building
│   ├── tdd.md             # Test-driven development loop
│   ├── handoff.md         # Compact context for agent handoffs
│   └── diagnosing-bugs.md # Systematic bug diagnosis
│
├── UI/
│   ├── SHADCN-REFERENCE.md  # Shadcn UI component reference
│   └── SHADCN-SKILL.md      # Shadcn UI skill with spacing and conventions
│
└── README.md
```

---

## Skills

Skills are reusable workflows any agent can follow. Invoke them in conversation:

| Command | What It Does |
|---------|-------------|
| `/grill-me` | Agent interviews you about what you're building → shared understanding → builds |
| `/tdd` | Red-Green-Refactor cycle — test first, then implement, then clean up |
| `/handoff` | Compresses conversation into a handoff doc for another agent |
| `/diagnosing-bugs` | Reproduce → Minimize → Hypothesize → Fix → Verify |

> To use a skill, the agent just reads the corresponding markdown file.
> The skills directory is referenced in `AGENTS.md` so all agents know where to find them.

---

## Design Philosophy

Inspired by Andrej Karpathy (minimal, self-contained, teaching-oriented code) and
Matt Pocock (composable skills, alignment before building, strong feedback loops).

- **One canonical source** — maintain `AGENTS.md`, adapters auto-generated.
- **Composable skills** — small, transparent, single-purpose markdown files.
- **Works everywhere** — no platform lock-in. Same rules, every agent.
- **Living artifact** — evolves as the landscape shifts. Start minimal, compound.

---

## Inspiration

Sourced from [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills)
and [mattpocock/skills](https://github.com/mattpocock/skills).
