<p align="center">
  <img src="https://img.shields.io/npm/v/@npmdubey/agent-skills?style=flat-square&labelColor=1a1a1a&color=6366f1" alt="npm version">
  <img src="https://img.shields.io/npm/dm/@npmdubey/agent-skills?style=flat-square&labelColor=1a1a1a&color=6366f1" alt="npm downloads">
  <img src="https://img.shields.io/github/stars/UtkarshDubeyGIT/agent-skills?style=flat-square&labelColor=1a1a1a&color=f59e0b" alt="stars">
</p>

<br>

# agent-skills

Curated behavioral rules and composable skills for coding agents.
Works with **any** agent — OpenCode, Codex CLI, Antigravity, Claude Code, Cursor, Copilot, Junie.

<p align="center">
  <code>npx @npmdubey/agent-skills link</code>
</p>

<br>

## Quick Start

### Zero-install

```bash
cd your-project
npx @npmdubey/agent-skills link
```

No install, no clone, no PATH setup.

### Install globally

```bash
npm install -g @npmdubey/agent-skills
cd your-project
agent-skills link
```

### On a new machine

```bash
npx @npmdubey/agent-skills init
# or:
curl -fsSL https://raw.githubusercontent.com/UtkarshDubeyGIT/agent-skills/main/init.sh | bash
```

## Platform Coverage

Running `link` generates adapters for **all** platforms in your project:

| Platform | Config File | How It Reads Your Rules |
|---|---|---|
| OpenCode | `AGENTS.md` | Reads natively |
| Codex CLI | `AGENTS.md` | Reads natively |
| Antigravity App | `AGENTS.md` | Reads natively + SKILL.md |
| Antigravity CLI | `AGENTS.md` | Reads natively + SKILL.md |
| Claude Code | `CLAUDE.md` | Delegates to AGENTS.md |
| Cursor | `.cursor/rules/*.mdc` | Delegates to AGENTS.md |
| Copilot | `.github/copilot-instructions.md` | Delegates to AGENTS.md |
| Junie | `.junie/guidelines.md` | Delegates to AGENTS.md |

Every adapter points back to the same canonical source — `AGENTS.md`.
One source of truth, eight platforms.

```
your-project/
├── AGENTS.md                    → OpenCode, Codex CLI, Antigravity
├── CLAUDE.md                    → Claude Code
├── .cursor/rules/               → Cursor
├── .github/copilot-instructions.md → Copilot
└── .junie/guidelines.md         → Junie
```

## Skills

Reusable workflows any agent can follow:

| Command | What It Does |
|---|---|
| `/grill-me` | Alignment interview — agent asks, summarizes, builds |
| `/tdd` | Red-Green-Refactor — test first, implement, clean up |
| `/handoff` | Compresses conversation into a handoff doc for another agent |
| `/diagnosing-bugs` | Reproduce → Minimize → Fix → Verify |

> Agents read these as markdown files from `skills/`. They're referenced in `AGENTS.md`.

## Structure

```
agent-skills/
├── AGENTS.md              # Canonical behavioral rules
├── CLAUDE.md              # Claude Code adapter
├── link.sh                # Shell link script
├── init.sh                # Bootstrap script
├── package.json           # npm package
├── bin/agent-skills.js    # CLI — link, init
├── skills/                # Composable workflows
│   ├── grill-me.md
│   ├── tdd.md
│   ├── handoff.md
│   └── diagnosing-bugs.md
└── UI/                    # Shadcn reference + skill
    ├── SHADCN-REFERENCE.md
    └── SHADCN-SKILL.md
```

## Design Philosophy

Inspired by Andrej Karpathy (minimal, self-contained, teaching-oriented) and Matt Pocock (composable skills, alignment before building, strong feedback loops).

- **One canonical source** — maintain `AGENTS.md`, adapters auto-generated
- **Composable skills** — small, transparent, single-purpose markdown files
- **Works everywhere** — no platform lock-in
- **Living artifact** — evolves with the landscape. Start minimal, compound.

## Inspiration

- [mattpocock/skills](https://github.com/mattpocock/skills)
- [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills)
