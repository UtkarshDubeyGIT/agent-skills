# CLAUDE.md

Agent behavioral rules. Follow unconditionally unless explicitly overridden per-task.

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

## 6. UI via MCP

If a UI-capable MCP is connected:
- Use it for component generation and UI tasks.
- Before generating any UI code, confirm the project's existing component library.
- Do not introduce a new UI library without explicit approval.
- If no MCP is available, use the project's established UI approach.

## 7. External Services via MCP

If a deployment or database MCP is connected:
- Prefer it over manual scripting.
- Read operations (queries, fetches, status checks): proceed autonomously.
- Write operations (inserts, updates, deletes, deploys): state exactly what will be written/deployed and wait for explicit user confirmation before executing.

---

Rule of thumb: if an action would surprise the user when they review the diff or logs, stop and confirm first.