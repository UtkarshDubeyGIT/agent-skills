#!/usr/bin/env bash
set -euo pipefail

# link.sh — Generate agent-skills adapters in any project directory
#
# Usage:
#   cd <project-dir>
#   ~/agent-skills/link.sh
#
# Or from anywhere:
#   ~/agent-skills/link.sh /path/to/project
#
# Generates adapter files for all supported platforms.
# Unused ones are harmless — they just sit there.

SUITE_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="${1:-$(pwd)}"

if [ ! -d "${PROJECT_DIR}" ]; then
  echo "Error: directory '${PROJECT_DIR}' not found"
  exit 1
fi

cd "${PROJECT_DIR}"

echo "==> Generating agent-skills adapters in $(basename "${PROJECT_DIR}")"

# ---------------------------------------------------------------------------
# AGENTS.md — Canonical rules (works natively with OpenCode, Codex CLI,
#             Antigravity App, Antigravity CLI, Claude Code fallback)
# ---------------------------------------------------------------------------
cp "${SUITE_DIR}/AGENTS.md" "${PROJECT_DIR}/AGENTS.md"
echo "  ✓ AGENTS.md          — OpenCode, Codex CLI, Antigravity, Claude Code (fallback)"

# ---------------------------------------------------------------------------
# CLAUDE.md — Claude Code adapter (copied if not already present or outdated)
# ---------------------------------------------------------------------------
cp "${SUITE_DIR}/CLAUDE.md" "${PROJECT_DIR}/CLAUDE.md"
echo "  ✓ CLAUDE.md          — Claude Code"

# ---------------------------------------------------------------------------
# .cursor/rules/ — Cursor scoped rules
# ---------------------------------------------------------------------------
mkdir -p "${PROJECT_DIR}/.cursor/rules"
cat > "${PROJECT_DIR}/.cursor/rules/001-agent-skills.mdc" << 'CURSOREOF'
---
description: Apply agent-skills suite conventions
globs: *
---
Read AGENTS.md for identity, behavioral rules, and skill references.
CURSOREOF
echo "  ✓ .cursor/rules/     — Cursor"

# ---------------------------------------------------------------------------
# .github/copilot-instructions.md — GitHub Copilot
# ---------------------------------------------------------------------------
mkdir -p "${PROJECT_DIR}/.github"
cat > "${PROJECT_DIR}/.github/copilot-instructions.md" << 'COPILOTEOF'
This project follows the agent-skills suite.
Read AGENTS.md for identity, conventions, and coding rules.
COPILOTEOF
echo "  ✓ .github/copilot-instructions.md — Copilot"

# ---------------------------------------------------------------------------
# .junie/guidelines.md — JetBrains Junie
# ---------------------------------------------------------------------------
mkdir -p "${PROJECT_DIR}/.junie"
cat > "${PROJECT_DIR}/.junie/guidelines.md" << 'JUNIEEOF'
This project follows the agent-skills suite.
Read AGENTS.md for identity, conventions, and coding rules.
JUNIEEOF
echo "  ✓ .junie/guidelines.md — Junie"

echo ""
echo "==> Done. All adapters generated."
echo "    Commit them to the project so agents see them on clone."
echo ""
echo "    Platform    →  Reads"
echo "    ─────────────────────────────"
echo "    OpenCode    →  AGENTS.md"
echo "    Codex CLI   →  AGENTS.md"
echo "    Antigravity →  AGENTS.md"
echo "    Claude Code →  CLAUDE.md → AGENTS.md"
echo "    Cursor      →  .cursor/rules/ → AGENTS.md"
echo "    Copilot     →  .github/copilot-instructions.md → AGENTS.md"
echo "    Junie       →  .junie/guidelines.md → AGENTS.md"
