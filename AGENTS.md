# agent-skills — Utkarsh Dubey

Canonical behavioral rules for any coding agent I work with.
Read this before any task. Follow unconditionally unless explicitly overridden.

## Identity

- CS student at NSUT. AI, Full Stack, Systems, Research.
- Build products over tutorials. Values: speed, elegance, production-quality.
- 80% solutions that ship beat 100% solutions that don't.
- Minimal dependencies. Prefer stdlib. Code teaches — write for Future Me.

## Stack (curated)

| Domain | Tools |
|--------|-------|
| Python | uv + ruff + pytest + fastapi |
| TypeScript | pnpm + vitest + tsup + next.js |
| Rust | cargo + clippy |
| Shell | zsh + bash |
| Agentic dev | OpenCode, Claude Code, Codex CLI, Cursor, Copilot, Junie, Antigravity |

---

## 1. Think Before Coding

Before writing any code:
- State assumptions explicitly. If uncertain, ask — do not guess.
- If multiple interpretations exist, list them and ask which to pursue.
- If a simpler approach exists, say so before proceeding.
- If anything is unclear, stop and name what is unclear.

## 2. Simplicity First

Write the minimum code that solves the problem.
- No unrequested features, abstractions, or configurability.
- No error handling for impossible scenarios.
- If the solution exceeds ~50 lines and a shorter one exists, rewrite it.
- Ask: "Would a senior engineer call this overcomplicated?" If yes, simplify.

## 3. Surgical Changes

Touch only what is required by the task.
- Do not improve, reformat, or refactor adjacent code.
- Match existing style exactly, even if suboptimal.
- If unrelated dead code is noticed, mention it — do not delete it.
- Remove only imports/variables/functions that YOUR changes made unused.
- Every changed line must trace directly to the user's request.

## 4. Goal-Driven Execution

Convert tasks into verifiable goals before starting:
- "Add validation" → write failing tests for invalid inputs, then make them pass.
- "Fix the bug" → write a test reproducing it, then make it pass.
- "Refactor X" → confirm tests pass before and after.

For multi-step tasks, state the plan first:
  1. [step] → verify: [check]
  2. [step] → verify: [check]

Do not proceed past a step until its verify condition passes.

## 5. Decision Log (DEVLOG.md)

Maintain `DEVLOG.md` at the project root. Append — never overwrite or edit past entries.

Append an entry when:
- A technology, library, or framework is chosen or rejected.
- An architectural or structural pattern is decided.
- A meaningful implementation tradeoff is resolved.
- A direction is explicitly chosen by the user.

Format (strict):
  ## [YYYY-MM-DD HH:MM] <Short title>
  **Decision:** What was decided.
  **Reason:** Why this over alternatives.
  **Alternatives considered:** What else was on the table.

Do not log variable names, minor formatting choices, or trivial decisions.

## 6. UI Conventions

When building UI components:
- Use the project's established component library. Do not introduce a new one without approval.
- If the project uses shadcn/ui, read `UI/SHADCN-SKILL.md` for exact conventions.
- Spacious over cramped. Readable over clever. Consistent over creative.
- Never hardcode hex colors — use the project's CSS variable tokens.

## 7. External Services

- Read operations (queries, fetches, status checks): proceed autonomously.
- Write operations (inserts, updates, deletes, deploys): state exactly what will be written/deployed and wait for explicit user confirmation before executing.

---

## Skills

These files define reusable workflows. Read them when the user invokes the corresponding command.

**Workflow**
| Command | File | Purpose |
|---------|------|---------|
| `/grill-me` | `skills/grill-me.md` | Alignment interview before building |
| `/tdd` | `skills/tdd.md` | Manual test-driven development loop |
| `/tdd-super` | `.agents/skills/test-driven-development/SKILL.md` | Comprehensive TDD workflow (obra/superpowers) |
| `/diagnosing-bugs` | `skills/diagnosing-bugs.md` | Systematic debug workflow |
| `/handoff` | `skills/handoff.md` | Compact context for agent handoffs |
| `/find-skills` | `.agents/skills/find-skills/SKILL.md` | Discover & install new agent skills |

**Design**
| Command | File | Purpose |
|---------|------|---------|
| `/design-review` | `.agents/skills/web-design-guidelines/SKILL.md` | Vercel web interface guidelines review |
| `/design-frontend` | `.agents/skills/design-taste-frontend/SKILL.md` | Anti-slop frontend design for landing pages |
| `/design-high-end` | `.agents/skills/high-end-visual-design/SKILL.md` | High-end agency visual design patterns |
| `/design-anthropic` | `.agents/skills/frontend-design/SKILL.md` | Anthropic's distinctive visual design guidance |
| `/design-clone` | `.agents/skills/firecrawl-website-design-clone/SKILL.md` | Extract design system from any website |
| `/design-mobile` | `.agents/skills/sleek-design-mobile-apps/SKILL.md` | Mobile app design via Sleek |

**Writing & Editing**
| Command | File | Purpose |
|---------|------|---------|
| `/humanize` | `.agents/skills/humanize/SKILL.md` | De-AI text: remove LLM tells, restore human voice |

**Testing & Automation**
| Command | File | Purpose |
|---------|------|---------|
| `/webapp-testing` | `.agents/skills/webapp-testing/SKILL.md` | Playwright web app testing toolkit (Anthropic) |
| `/agent-browser` | `.agents/skills/agent-browser/SKILL.md` | Browser automation CLI for agents (Vercel) |

**Data & Visualization**
| Command | File | Purpose |
|---------|------|---------|
| `/data-viz` | `.agents/skills/data-visualization/SKILL.md` | Python charts: matplotlib, seaborn, plotly (Anthropic) |

---

## Rule of thumb

If an action would surprise the user when they review the diff or logs, stop and confirm first.
