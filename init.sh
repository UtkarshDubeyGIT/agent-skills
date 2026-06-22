#!/usr/bin/env bash
set -euo pipefail

# init.sh — Bootstrap agent-skills suite on a new machine
# Usage: curl -fsSL https://raw.githubusercontent.com/UtkarshDubeyGIT/agent-skills/main/init.sh | bash

GITHUB_USER="UtkarshDubeyGIT"
REPO="agent-skills"
TARGET="${HOME}/${REPO}"

echo "==> agent-skills bootstrap"

# 1. Clone the suite
if [ -d "${TARGET}" ]; then
  echo "==> ${TARGET} already exists, pulling latest..."
  cd "${TARGET}" && git pull
else
  echo "==> Cloning to ${TARGET}..."
  git clone "https://github.com/${GITHUB_USER}/${REPO}.git" "${TARGET}"
fi

# 2. Add to shell config if not already present
SHELL_RC="${HOME}/.zshrc"
if [ -f "${SHELL_RC}" ]; then
  LINE="export PATH=\"\${PATH}:${TARGET}\""
  if ! grep -q "${TARGET}" "${SHELL_RC}" 2>/dev/null; then
    echo "" >> "${SHELL_RC}"
    echo "# agent-skills suite" >> "${SHELL_RC}"
    echo "${LINE}" >> "${SHELL_RC}"
    echo "==> Added ${TARGET} to PATH in ${SHELL_RC}"
  fi

  ALIAS="alias suite-link='${TARGET}/link.sh'"
  if ! grep -q "alias suite-link" "${SHELL_RC}" 2>/dev/null; then
    echo "${ALIAS}" >> "${SHELL_RC}"
    echo "==> Added suite-link alias to ${SHELL_RC}"
  fi
fi

echo ""
echo "==> Done! agent-skills installed at ${TARGET}"
echo ""
echo "  Usage:"
echo "    cd <your-project>"
echo "    suite-link           # generate platform adapters"
echo "    # or directly:"
echo "    ${TARGET}/link.sh"
echo ""
echo "  Restart your shell or run:"
echo "    source ${SHELL_RC}"
