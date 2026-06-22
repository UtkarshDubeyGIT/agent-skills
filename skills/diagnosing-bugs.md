# /diagnosing-bugs — Systematic Bug Diagnosis

Invoked when the user types `/diagnosing-bugs`.

Purpose: Find and fix bugs through a reproducible, disciplined process.
No guessing, no random changes.

## Flow

### Step 1: REPRODUCE

- Find or write a reliable reproduction case.
- Document: exact inputs, expected output, actual output.
- Run it 3 times to confirm it's deterministic.

### Step 2: MINIMIZE

- Strip away everything not needed to trigger the bug.
- Remove dependencies, simplify inputs.
- The goal: the smallest possible reproducer.

### Step 3: HYPOTHESIZE

- List possible root causes.
- For each one: "If X is true, then Y should happen."
- Pick the most likely hypothesis to investigate first.

### Step 4: INSTRUMENT

- Add logging, assertions, or a debug print at the suspected failure point.
- Run the reproducer. Does the evidence support or refute the hypothesis?
- If refuted, return to Step 3 with the new information.

### Step 5: FIX

- Write the minimal code change that addresses the root cause.
- Before applying: write a test that FAILS on the buggy code (TDD-style).

### Step 6: VERIFY

- Confirm the test now passes.
- Run the full test suite to check for regressions.
- If the bug had a tracker issue, update it with the root cause and fix.

## Rules

- Never skip Step 1. "It crashed" is not a reproduction.
- If you can't reproduce in 5 minutes, ask the user for exact steps.
- One hypothesis at a time. Changing multiple things at once is not debugging.
