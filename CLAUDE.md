# agent-skills — Claude Code Adapter

This project uses the `agent-skills` suite.
Read AGENTS.md for my full identity, behavioral rules, and skill references.

## Commands

- Run tests: `pnpm test -- --run` (TS), `pytest` (Python), `cargo test` (Rust)
- Type-check: `npx tsc --noEmit` (TS), `mypy .` (Python), `cargo check` (Rust)
- Lint: `pnpm lint` (TS), `ruff check .` (Python), `cargo clippy` (Rust)
- Build: `pnpm build` (TS), `uv build` (Python), `cargo build` (Rust)

---

## Claude Code-Specific Notes

- You have access to MCP tools. Use them per the rules in AGENTS.md §6 & §7.
- Prefer `claude` CLI for running commands over raw shell when possible.
- If a project has a `DEVLOG.md`, read it before starting to understand context.

---

## Cross-Platform Note

This project also contains adapters for other agents:
- OpenCode / Codex CLI / Antigravity → `AGENTS.md` (native)
- Cursor → `.cursor/rules/`
- Copilot → `.github/copilot-instructions.md`
- Junie → `.junie/guidelines.md`

If you detect any of these files, their content delegates here. No conflicts.
