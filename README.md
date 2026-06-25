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
├── skills-lock.json       # Skills CLI lockfile
│
├── skills/                # Composable workflows
│   ├── grill-me.md        # Alignment interview
│   ├── tdd.md             # TDD loop
│   ├── handoff.md         # Context handoff
│   └── diagnosing-bugs.md # Bug diagnosis
│
├── UI/                    # Shadcn reference + skill
│   ├── SHADCN-REFERENCE.md
│   └── SHADCN-SKILL.md
│
└── .agents/skills/        # Skills from ecosystem (via skills CLI)
    ├── web-design-guidelines/     # Vercel — UI review & compliance
    ├── design-taste-frontend/     # Anti-slop frontend design
    ├── frontend-design/           # Anthropic — visual design guidance
    ├── high-end-visual-design/    # High-end agency design patterns
    ├── firecrawl-website-design-clone/ # Extract design systems
    ├── sleek-design-mobile-apps/  # Mobile app design via Sleek
    ├── find-skills/               # Vercel — discover new skills
    ├── agent-browser/             # Vercel — browser automation CLI
    ├── webapp-testing/            # Anthropic — Playwright testing
    ├── test-driven-development/   # Obra — comprehensive TDD
    └── data-visualization/        # Anthropic — Python charts
```

## Skills

### Workflow
| Command | What It Does |
|---|---|
| `/grill-me` | Alignment interview — agent asks, summarizes, builds |
| `/tdd` | Red-Green-Refactor — test first, implement, clean up |
| `/tdd-super` | Comprehensive TDD workflow (obra/superpowers) |
| `/handoff` | Compresses conversation into a handoff doc |
| `/diagnosing-bugs` | Reproduce → Minimize → Fix → Verify |
| `/find-skills` | Discover & install new agent skills |

### Design
| Command | What It Does |
|---|---|
| `/design-review` | Vercel web interface guidelines compliance audit |
| `/design-frontend` | Anti-slop frontend design for landing pages & portfolios |
| `/design-high-end` | High-end agency design patterns (fonts, shadows, animations) |
| `/design-anthropic` | Anthropic's distinctive visual design guidance |
| `/design-clone` | Extract full design system from any website via Firecrawl |
| `/design-mobile` | Mobile app design via Sleek |

### Testing & Automation
| Command | What It Does |
|---|---|
| `/webapp-testing` | Playwright web app testing toolkit (Anthropic) |
| `/agent-browser` | Browser automation CLI for agents (Vercel) |

### Data & Visualization
| Command | What It Does |
|---|---|
| `/data-viz` | Python charts: matplotlib, seaborn, plotly — Anthropic |

## Design Philosophy

Inspired by Andrej Karpathy (minimal, self-contained, teaching-oriented) and Matt Pocock (composable skills, alignment before building, strong feedback loops).

- **One canonical source** — maintain `AGENTS.md`, adapters auto-generated
- **Composable skills** — small, transparent, single-purpose markdown files
- **Works everywhere** — no platform lock-in
- **Living artifact** — evolves with the landscape. Start minimal, compound.

## Inspiration

- [mattpocock/skills](https://github.com/mattpocock/skills)
- [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills)
