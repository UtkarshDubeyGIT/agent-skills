#!/usr/bin/env node
// @npmdubey/agent-skills — portable agent working suite CLI
// Usage:
//   npx @npmdubey/agent-skills link     # generate adapters in cwd
//   npx @npmdubey/agent-skills init     # install suite on this machine

const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

const ROOT = path.resolve(__dirname, '..');

// ---------------------------------------------------------------------------
// link — generate platform adapters in the current project directory
// ---------------------------------------------------------------------------
function cmdLink() {
  const target = process.cwd();

  console.log(`==> Generating agent-skills adapters in ${path.basename(target)}`);

  // AGENTS.md — canonical
  const agentsSrc = path.join(ROOT, 'AGENTS.md');
  if (fs.existsSync(agentsSrc)) {
    fs.copyFileSync(agentsSrc, path.join(target, 'AGENTS.md'));
    console.log('  ✓ AGENTS.md          — OpenCode, Codex CLI, Antigravity, Claude Code');
  }

  // CLAUDE.md — Claude Code adapter
  const claudeSrc = path.join(ROOT, 'CLAUDE.md');
  if (fs.existsSync(claudeSrc)) {
    fs.copyFileSync(claudeSrc, path.join(target, 'CLAUDE.md'));
    console.log('  ✓ CLAUDE.md          — Claude Code');
  }

  // .cursor/rules/001-agent-skills.mdc — Cursor
  const cursorDir = path.join(target, '.cursor', 'rules');
  fs.mkdirSync(cursorDir, { recursive: true });
  fs.writeFileSync(
    path.join(cursorDir, '001-agent-skills.mdc'),
    [
      '---',
      'description: Apply agent-skills suite conventions',
      'globs: *',
      '---',
      'Read AGENTS.md for identity, behavioral rules, and skill references.',
    ].join('\n'),
  );
  console.log('  ✓ .cursor/rules/     — Cursor');

  // .github/copilot-instructions.md — Copilot
  const copilotDir = path.join(target, '.github');
  fs.mkdirSync(copilotDir, { recursive: true });
  fs.writeFileSync(
    path.join(copilotDir, 'copilot-instructions.md'),
    [
      'This project follows the agent-skills suite.',
      'Read AGENTS.md for identity, conventions, and coding rules.',
    ].join('\n'),
  );
  console.log('  ✓ .github/copilot-instructions.md — Copilot');

  // .junie/guidelines.md — Junie
  const junieDir = path.join(target, '.junie');
  fs.mkdirSync(junieDir, { recursive: true });
  fs.writeFileSync(
    path.join(junieDir, 'guidelines.md'),
    [
      'This project follows the agent-skills suite.',
      'Read AGENTS.md for identity, conventions, and coding rules.',
    ].join('\n'),
  );
  console.log('  ✓ .junie/guidelines.md — Junie');

  console.log('');
  console.log('  Done. Commit these files so agents see them on clone.');
}

// ---------------------------------------------------------------------------
// init — bootstrap the suite on a new machine
// ---------------------------------------------------------------------------
function cmdInit() {
  const home = require('os').homedir();
  const target = path.join(home, 'agent-skills');

  if (fs.existsSync(target)) {
    console.log(`==> agent-skills already installed at ${target}, pulling latest...`);
    execSync(`cd "${target}" && git pull`, { stdio: 'inherit' });
  } else {
    console.log(`==> Cloning agent-skills to ${target}...`);
    execSync(`git clone https://github.com/UtkarshDubeyGIT/agent-skills.git "${target}"`, {
      stdio: 'inherit',
    });
  }

  // Add to shell config
  const zshrc = path.join(home, '.zshrc');
  if (fs.existsSync(zshrc)) {
    let content = fs.readFileSync(zshrc, 'utf-8');
    const lines = [];

    if (!content.includes('agent-skills')) {
      lines.push('');
      lines.push('# agent-skills suite');
      lines.push(`export PATH="\${PATH}:${target}"`);
      lines.push(`alias suite-link='${target}/link.sh'`);
    }

    if (lines.length > 0) {
      fs.appendFileSync(zshrc, lines.join('\n') + '\n');
      console.log('  ✓ Added to ~/.zshrc');
    }
  }

  console.log('');
  console.log(`  agent-skills installed at ${target}`);
  console.log('  Run: source ~/.zshrc');
  console.log('  Then: cd your-project && suite-link');
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------
const cmd = process.argv[2];

switch (cmd) {
  case 'link':
    cmdLink();
    break;
  case 'init':
    cmdInit();
    break;
  default:
    console.log(`
  @npmdubey/agent-skills — portable agent working suite

  Usage:
    npx @npmdubey/agent-skills link     Generate adapters in current project
    npx @npmdubey/agent-skills init     Install suite on this machine
    npm install -g @npmdubey/agent-skills
    agent-skills link
`);
}
